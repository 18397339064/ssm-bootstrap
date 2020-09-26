<%--
  Created by IntelliJ IDEA.
  User: 王欣欣
  Date: 2020/9/26
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后端首页</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <script type="text/javascript" src="js/bootstrap-table.js"></script>
    <script type="text/javascript" src="js/bootstrap-table-zh-CN.js"></script>
    <script type="text/javascript" src="js/bootstrap-table-locale-all.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap-table.css">
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/bootstrap-select.js"></script>
    <link rel="stylesheet" href="css/bootstrap-select.css"/>
    <script type="text/javascript" src="sweetalert-master/sweetalert-dev.js"></script>
    <link rel="stylesheet" href="sweetalert-master/sweetalert.css">
    <script type="text/javascript" src="toastr/toastr.min.js"></script>
    <link rel="stylesheet" href="toastr/toastr.css">
    <style>
        .seperator1{
            height: 30px;;
        }

        ul{
            font-size: 18px;
        }

        #ul1{
            padding-right: 60px;
        }
    </style>
</head>
<body>
<!--顶部导航-->
<nav class="nav navbar-default">
    <div class="navbar-header">
        <button class="navbar-toggle collapsed" data-toggle="collapse"，data-target="#nav1">
            <span class="glyphicon glyphicon-th-list"></span>
        </button>
        <div class="navbar-brand"><img src="images/1.PNG"></div>
    </div>
    <div class="seperator1"></div>
    <div id="nav1" class="collapse navbar-collapse">
        <b>
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">系统管理
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu">
                        <li>
                            <a >员工管理</a>
                        </li>
                        <li>
                            <a >用户管理</a>
                        </li>
                        <li>
                            <a >角色管理</a>
                        </li>
                        <li>
                            <a >菜单管理</a>
                        </li>
                        <li>
                            <a >员工角色管理</a>
                        </li>
                        <li>
                            <a >权限管理</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">资料管理
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu">
                        <li>
                            <a >车辆信息管理</a>
                        </li>
                        <li>
                            <a >门店信息管理</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">车辆审批管理
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu">
                        <li>
                            <a >车辆借出审批</a>
                        </li>
                        <li>
                            <a >车辆借出审批记录</a>
                        </li>
                        <li>
                            <a >车辆还入审批</a>
                        </li>
                        <li>
                            <a >车辆还入审批记录</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">门店租车管理
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu">
                        <li>
                            <a >租车申请</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">统计管理
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu">
                        <li>
                            <a >车辆使用情况统计</a>
                        </li>
                        <li>
                            <a >营收情况统计</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul id="ul1" class="nav navbar-nav navbar-right">
                <li>
                    <a href="stafflogin.html">登录</a>
                </li>
                <li>
                    <a href="staffzhuce.html">注册</a>
                </li>
            </ul>
        </b>
    </div>
</nav>

<!-- 搜索表单开始 -->
<div class="seperator1"></div>
<div class="container">
    <form>
        <div class="form-inline">
            <div class="form-group">
                <input type="text" name="staname" id="staname" placeholder="姓名包含" class="form-control" />
            </div>
            <div class="form-group">
                <select class="form-control" name="stasex">
                    <option value="">不限性别</option>
                    <option value="1">男</option>
                    <option value="0">女</option>
                </select>
            </div>
            <div class="form-group">
                <input type="text" name="staidentity" id="staidentity" placeholder="身份证包含" class="form-control" />
            </div>
            <div class="form-group">
                <select class="form-control" name="doorid">
                    <option value="">请选择门店</option>
                    <option value="1">长沙站</option>
                    <option value="2">长沙南站</option>
                    <option value="3">谷山站</option>
                </select>
            </div>
            <div class="form-group">
                <button type="submit" id="staffquery" class="btn btn-primary">查询</button>
            </div>
        </div>
    </form>
    <!-- 搜索表单结束 -->
    <div class="seperator1"></div>
    <div>
        <table id="stafftable">
        </table>
    </div>

    <%--<div id="toolbar">
         <button class="btn btn-success" data-toggle="modal" data-target="#addModal">添加</button>
        <div class="modal fade" id="addModal"  data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                        <h4 class="modal-title">添加</h4>

                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="seperator"></div>
                            <form id="addform" method="post" class="form-horizontal col-md-12" style="padding-right: 50px">
                                <div class="form-group">
                                    <label class="control-label col-md-2"  for="adduname">
                                        用户名：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="text" name="uname" id="adduname" class="form-control"/>
                                    </div>
                                </div>
                                <div class="seperator"></div>
                                <div class="form-group">
                                    <label class="control-label col-md-2" for="addupwd">
                                        密码：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="password" name="upwd" id="addupwd" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-2" for="adduage">
                                        年龄：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="number" name="uage" id="adduage"
                                               max="60" min="18" step="3" value="18" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-2">
                                        性别：
                                    </label>
                                    <div class="col-md-4">
                                        <div class="radio">
                                            <label class="col-md-2">
                                                <input type="radio" name="usex" value="男"/><span style="font-size: 15px">男</span>
                                            </label>
                                            <label class="col-md-2">
                                                <input type="radio" name="usex" value="女"/><span style="font-size: 15px">女</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-2" for="adduweight">
                                        体重：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="text" name="uweight" id="adduweight" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-2" for="addubirthday">
                                        生日：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="date" name="ubirthday" id="addubirthday" class="form-control"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="modal-footer">

                        <input type="button" class="btn btn-default" data-dismiss="modal" value="关闭">

                        <input type="button" class="btn btn-primary" id="zhuce" value="注册">

                    </div>

                </div>

            </div>
        </div>

        <div class="modal fade" id="updateModal" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                        <h4 class="modal-title">编辑</h4>

                    </div>

                    <div class="modal-body">
                        <div class="row">
                            <div class="seperator"></div>
                            <form id="updateform" method="post" class="form-horizontal col-md-12" style="padding-right: 50px">
                                <input type="hidden" name="uid" id="updateuid"/>
                                <div class="form-group">
                                    <label class="control-label col-md-2"  for="updateuname">
                                        用户名：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="text" name="uname" id="updateuname" class="form-control"/>
                                    </div>
                                </div>
                                <div class="seperator"></div>
                                <div class="form-group">
                                    <label class="control-label col-md-2" for="updateupwd">
                                        密码：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="password" name="upwd" id="updateupwd" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-2" for="updateuage">
                                        年龄：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="number" name="uage" id="updateuage"
                                               max="60" min="18" step="3" value="18" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-2">
                                        性别：
                                    </label>
                                    <div class="col-md-4">
                                        <div class="radio">
                                            <label class="col-md-2">
                                                <input class="edit-usex" type="radio" name="usex" value="男"/><span style="font-size: 15px">男</span>
                                            </label>
                                            <label class="col-md-2">
                                                <input class="edit-usex" type="radio" name="usex" value="女"/><span style="font-size: 15px">女</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-2" for="updateuweight">
                                        体重：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="text" name="uweight" id="updateuweight" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-2" for="updateubirthday">
                                        生日：
                                    </label>
                                    <div class="col-md-10">
                                        <input type="date" name="ubirthday" id="updateubirthday" class="form-control"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="modal-footer">

                        <input type="button" class="btn btn-default" data-dismiss="modal" value="关闭">

                        <input type="button" class="btn btn-primary" id="update" value="确认修改">

                    </div>

                </div>

            </div>
        </div>

        <input type="button" class="btn btn-danger" id="deleteuser" value="批量删除">
    </div>

</div>--%>
<script type="text/javascript">
    toastr.options.positionClass="toast-center-center";
</script>
<script type="text/javascript">
    $(function () {

        //1.初始化Table
        var oTable = new TableInit();
        oTable.Init();

        //2.初始化Button的点击事件
        var oButtonInit = new ButtonInit();
        oButtonInit.Init();
    });
    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#stafftable').bootstrapTable({
                url: 'querystaff.action',         //请求后台的URL（*）
                method: 'get',                      //请求方式（*）
                toolbar: '#toolbar',               //工具按钮用哪个容器
                striped: true,                      //是否显示行间隔色
                cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,                   //是否显示分页（*）*/
                sortable: false,                     //是否启用排序
                sortOrder: "asc",                   //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,                       //初始化加载第一页，默认第一页
                pageSize: 5,                       //每页的记录行数（*）
                pageList: [5, 10, 15, 20],        //可供选择的每页的行数（*）
                /*  search: true,    */                   //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: true,
                showColumns: true,                  //是否显示所有的列
                showRefresh: true,                  //是否显示刷新按钮
                minimumCountColumns: 2,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "staid",                     //每一行的唯一标识，一般为主键列
                showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                columns: [{
                    checkbox: true
                }, {
                    field: 'staid',
                    title: '员工编号'
                }, {
                    field: 'staname',
                    title: '员工姓名'
                }, {
                    field: 'stazhanghao',
                    title: '员工账号'
                }, {
                    field: 'stapwd',
                    title: '密码'
                }, {
                    field: 'stasex',
                    title: '性别'
                }, {
                    field: 'staidentity',
                    title: '身份证'
                }, {
                    field: 'doorid',
                    title: '门店'
                }, {
                    field: '',
                    width:200,
                    align:'center',
                    title: '操作',
                    formatter: function (value, row, index) {
                        var staid = row.staid;
                        return '<button class=\"btn btn-info\"  onclick=\"edituser('+staid+')\" >编辑</button> '+
                            '<button class=\"btn btn-danger\" onclick=\"deluser('+staid+')\" >删除</button>'
                    }
                }]
            });
        };
        //得到查询的参数
        oTableInit.queryParams = function (params) {
            var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                limit: params.limit,   //页面大小
                offset: params.offset,  //页码
                staname: $("#staname").val(),
                stasex:$("select[name='stasex']").val(),
                staidentity:$("#staidentity").val(),
                doorid:$("select[name='doorid']").val()
            };
            return temp;
        };
        return oTableInit;
    }

    $("#btnquery").click(function () {
        $("#table").bootstrapTable("refresh");
    })

    /*$("#zhuce").click(function () {

         var param={
             url:"adduser2.action",
             dataType:"json",
             success:function (data) {

                 if(data.code=="1"){
                     toastr.success(data.msg)
                     $("#addModal").modal('hide');
                     //刷新表格
                     $("#table").bootstrapTable("refresh");
                 }else if(data.code=="0"){
                     toastr.success(data.msg)
                 }
             }
         }
         $("#addform").ajaxSubmit(param);

     })

     //点击编辑按钮，获取uid ，查询数据，回显在编辑页面
     function edituser(uid) {

         $("#updateModal").modal("show");

         $.post("querybyuid.action",{"uid":uid},function (data) {
             $("#updateuid").val(data.uid);
             $("#updateuname").val(data.uname);
             $("#updateupwd").val(data.upwd);
             $("#updateuage").val(data.uage);
             if(data.usex=="男"){
                 $(".edit-usex").eq(0).prop("checked","checked");
             }else {
                 $(".edit-usex").eq(1).prop("checked","checked");
             }
             $("#updateuweight").val(data.uweight);
             $("#updateubirthday").val(data.ubirthday);

         },"json")

     }

     $("#update").click(function () {
         var updateparam={
             url:"updateuser.action",
             dataType:"json",
             success:function (data) {

                 if(data.code=="1"){
                     toastr.success(data.msg)
                     $("#updateModal").modal('hide');
                     //刷新表格
                     $("#table").bootstrapTable("refresh");
                 }else if(data.code=="0"){
                     toastr.success(data.msg)
                 }
             }
         }
         $("#updateform").ajaxSubmit(updateparam);

     })

     $("#deleteuser").click(function () {
         // 获取当前行
         var row=$("#table").bootstrapTable('getSelections');

         if(row.length==0){
             toastr.error('请至少选中一行')
             return;
         }
         swal({
             title: "你确定？",
             text: "您将删除数据",
             type: "warning",
             showCancelButton: true,
             confirmButtonColor: "#DD6B55",
             confirmButtonText: "是的，删除！",
             cancelButtonText: "不，取消",
             closeOnConfirm: false,
             closeOnCancel: false
         }, function(isConfirm) {
             if (isConfirm) {
                 var ids="";
                 for(var i=0;i<row.length;i++){
                     ids+=row[i].uid+",";
                 }
                 $.ajax({
                     url:"deleteuser.action/"+ids,
                     type:"delete",
                     dataType:"json",
                     success:function (data) {
                         if(data){
                             swal("删除!", "删除成功", "success")
                         }else{
                             swal("删除!", "删除失败", "success")
                         }


                         //刷新表格
                         $("#table").bootstrapTable("refresh");
                     }
                 });

             } else{
                 swal("取消!", "删除取消！", "error")
             }
         })
     })

     //点击删除按钮，获取uid ，删除
     function  deluser(uid) {
         swal({
             title: "你确定？",
             text: "您将删除数据",
             type: "warning",
             showCancelButton: true,
             confirmButtonColor: "#DD6B55",
             confirmButtonText: "是的，删除！",
             cancelButtonText: "不，取消",
             closeOnConfirm: false,
             closeOnCancel: false
         }, function(isConfirm) {
             if (isConfirm) {
                 $.post("deleteuser1.action",{"uid":uid},function (data) {
                     if(data.code=="1"){
                         swal("删除!", "删除成功", "success")
                     }else if(data.code=="0"){
                         swal("删除!", "删除失败", "success")
                     }
                     //刷新表格
                     $("#table").bootstrapTable("refresh");
                 },"json")

             } else{
                 swal("取消!", "删除取消！", "error")
             }
         })
     }*/
</script>
</body>
</html>
