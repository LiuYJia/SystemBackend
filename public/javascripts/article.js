// 编辑
function resetfunction(){
    // $('.CodeMirror-sizer').html('')
}
layui.use('form', function(){
    var form = layui.form;
    //监听提交
    form.on('submit(handleArticleSave)', function(data){
        $.ajax({
            type:'post',
            url:'/handleArticle/saveArticle',
            data:data.field,
            success:function(d){
                if(d.code==200){
                    layer.msg(d.msg, {icon: 1});
                }else{
                    layer.msg(d.msg, {icon: 5});
                }
            }
        });
    });
    //自定义验证规则
    form.verify({
        userName: function(value){
            if(value.length == 0){
                return '请输入用户名';
            }
        },
        passWord: function(value){
            if(value.length == 0){
                return '请输入密码';
            }
        }
        // userPassword: [
        //     /^[\S]{6,12}$/,
        //     '密码必须6到12位，且不能出现空格'
        // ]
    });
});

//列表
layui.use('table', function(){

    var table = layui.table;
    var $ = layui.$, active = {
        add: function(){ //新增
            window.location.href = '/handleArticle'
        },
        edit: function(){ //编辑
            var checkStatus = table.checkStatus('idArticleListTable'),data = checkStatus.data;
            if(data.length==0){
                layer.msg('请选择一条记录',{icon:5});
                return
            }
            if(data.length>1){
                layer.msg('只能选择一条记录',{icon:5});
                return
            }
            console.log(data[0])
            window.location.href = '/handleArticle?articleId='+data[0].id
        },
        delete: function(){ //删除
            var checkStatus = table.checkStatus('idArticleListTable'),data = checkStatus.data;
            if(data.length==0){
                layer.msg('请选择一条记录',{icon:5});
                return
            }
            var arr = []
            data.forEach(e => {
                arr.push(e.id)
            });
            console.log(data)
            $.ajax({
                url:'/articleList/delelte',
                type:'post',
                data:{ids:arr.join(',')},
                success:function(d){
                    console.log(d)
                    if(d.code==200){
                        layer.msg(d.msg,{icon:1});
                        table.reload('idArticleListTable', {
                            page: {
                                curr: 1 //重新从第 1 页开始
                            },
                            where: {
                                key: {
                                    title: '',
                                    sort: ''
                                }
                            }
                        }, 'data');
                    }else{
                        layer.msg(d.msg,{icon:5});
                    }
                }
            })
        },
        reload: function(){
            //执行重载
            table.reload('idArticleListTable', {
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    key: {
                        title: $('#articleListTitle').val(),
                        sort:$('#articleListSort').val()
                    }
                }
            }, 'data');
          }
    };
    
    $('.articleListTable .layui-btn').on('click', function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });
});



$('.addSort').click(function(){
    var _html = ` <div class="layui-form-item">
        <label class="layui-form-label">分类</label>
        <div class="layui-input-block">
        </div>
    </div>
    `
    layer.open({
        type: 1,
        title:'请输入分类', 
        content: '<input type="text" id="addsortInput" name="title" class="layui-input">',
        area:['300px','170px'],
        btn:'确定',
        yes:function(index){
            var val = $('#addsortInput').val()
            if(!val){
                layer.msg('请输入值',{icon:5})
                return
            }
            $.ajax({
                url:'/articleSort/addSort',
                type:'post',
                data:{sort:val},
                success:function(d){
                    console.log(d)
                    if(d.code==200){
                        layer.close(index)
                        window.location.href = '/articleSort'
                    }else{
                        layer.msg('保存失败',{icon:5})
                    }
                }
            })
        }
      });
})
$('.articleSort-itemclose i').click(function(){
    $.ajax({
        url:'/articleSort/deleteSort',
        type:'post',
        data:{id:$(this).attr('data-id')},
        success:function(d){
            if(d.code==200){
                window.location.href = '/articleSort'
            }else{
                layer.msg('删除失败',{icon:5})
            }
        }
    })
})