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
                        分类管理
                        <small> - ${category.name} 属性管理</small>
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
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            属性管理表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>属性id</th>
                                        <th>属性名称</th>
                                        <th>编辑属性名称</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${properties}" var="p">
                                        <tr>
                                            <td>${p.id}</td>
                                            <td>${p.name}</td>
                                            <td><a href="editProperty?id=${p.id}"><span class="glyphicon glyphicon-edit"></span></a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>

            <%-- 属性增加表单 --%>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            增加属性
                        </div>
                        <div class="panel-body">
                            <form action="addProperty" role="form">
                                <input type="hidden" name="id" value="">
                                <label>属性名称：</label>
                                <input type="text" name="name" placeholder="请在这里输入属性名称">
                                <input type="hidden" name="category_id" value="${category.id}">
                                <input type="submit" class="btn btn-default pull-right" value="添加">
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>

<%@include file="B-footer.jsp"%>

</body>
</html>
