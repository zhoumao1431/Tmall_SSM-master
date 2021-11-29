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
                        <small> - ${category.name} - id:${product.id} 产品管理</small>
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
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            编辑产品信息
                        </div>
                        <div class="panel-body">
                            <div class="row col-lg-12">
                                <form action="updateProduct" role="form">
                                    <div class="form-group">
                                        <input type="hidden" name="id" value="${product.id}">
                                        <label>产品名称：</label>
                                        <input type="text" name="name" class="form-control" value="${product.name}">
                                        <label>产品标题：</label>
                                        <input type="text" name="sub_title"class="form-control" value="${product.sub_title}">
                                        <label>产品价格：</label>
                                        <input type="text" name="price"class="form-control" value="${product.price}">
                                        <label>产品销量：</label>
                                        <input type="text" name="sale"class="form-control" value="${product.sale}">
                                        <label>产品库存：</label>
                                        <input type="text" name="stock"class="form-control" value="${product.stock}"> <br>
                                        <input type="hidden" name="category_id" value="${category.id}">
                                        <input type="submit" class="btn btn-default pull-right" value="确认修改">
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>

        </div>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>

<%@include file="B-footer.jsp"%>

</body>
</html>
