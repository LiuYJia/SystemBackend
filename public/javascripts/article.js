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
        },
        delete: function(){ //删除
            var checkStatus = table.checkStatus('idArticleListTable'),data = checkStatus.data;
            if(data.length==0){
                layer.msg('请选择一条记录',{icon:5});
                return
            }
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