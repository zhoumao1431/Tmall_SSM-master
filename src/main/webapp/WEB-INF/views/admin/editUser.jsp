<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="B-header.jsp" %>
<html>
<body>
<div class="color-line"></div>
<div id="wrapper">

    <%@include file="common1.jsp"%>

    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        用户管理
                        <small> - id:${user.id} 修改密码</small>
                    </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <a href="javascript:history.back()" class="btn btn-success">返回上一页</a>
                </div>
            </div>
            <br>

            <div class="row">
                <div class="col-md-6">
                    <!-- Advanced Tables -->
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            修改密码
                        </div>
                        <div class="panel-body">
                            <form action="updateUser" role="form">
                                <input type="hidden" name="id" value="${user.id}">
                                <label>新密码：</label>
                                <input class="form-control" type="text" name="password" placeholder="请在这里重新输入密码"><br>
                                <input type="submit" class="btn btn-success pull-right" value="确认修改">
                            </form>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>

        </div>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="../assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>
