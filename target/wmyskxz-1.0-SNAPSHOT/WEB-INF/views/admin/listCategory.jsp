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
                        <small></small>
                    </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            分类管理表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>分类id</th>
                                        <th>分类名称</th>

                                        <th>编辑分类</th>
                                        <th>产品管理</th>
                                        <th>属性管理</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${categories}" var="c">
                                        <tr>
                                            <td>${c.id}</td>
                                            <td>${c.name}</td>

                                            <td><a href="editCategory?id=${c.id}&name=${c.name}"><span class="glyphicon glyphicon-th-list"></span></a></td>
                                            <td><a href="listProduct?category_id=${c.id}"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
                                            <td><a href="listProperty?category_id=${c.id}"><span class="glyphicon glyphicon-edit"></span></a></td>
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

        </div>
    </div>
</div>

<%@include file="B-footer.jsp"%>

</body>
</html>
