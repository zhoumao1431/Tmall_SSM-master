<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<nav class="navbar navbar-default top-navbar" role="navigation" id="common_top">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" id="logo_text" href="listCategory">天猫-后台</a>
        <div class="header-link hide-menu"><i class="fa fa-bars"></i></div>
        <div class="navbar-right">

            <ul id="logout_box">
                <li id="logout">
                    <a href="/home">
                        <i class="pe-7s-upload pe-rotate-90">退出</i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!--/. NAV TOP  -->
<nav class="navbar-default navbar-side" role="navigation" id="common_left">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">

            <li>
                <a href="listCategory"><i class="fa fa-bars"></i> 分类管理</a>
            </li>
            <li>
                <a class="active-menu" href="listUser"><i class="fa fa-user"></i> 用户管理</a>
            </li>
            <li>
                <a  href="listOrder"><i class="fa fa-list-alt"></i> 订单管理</a>
            </li>
            <li>
                <a href="listLink"><i class="fa fa-link"></i> 推荐链接管理</a>
            </li>
        </ul>
    </div>

</nav>
<!-- /. PAGE WRAPPER  -->