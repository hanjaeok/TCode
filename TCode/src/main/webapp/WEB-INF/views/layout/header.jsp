<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="shortcut icon" type="image/x-icon" href="../../resources/assets/img/favicon.ico">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>HANKER</title>
        <link href="../../resources/css/styles.css" rel="stylesheet" />
        <link href="../../resources/css/home.css" rel="stylesheet" />
        <link href="../../resources/css/setting.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        <link href="../../resources/ckeditor/plugins/codesnippet/lib/highlight/styles/default.css" rel="stylesheet" />
        
        
		
        <!-- Script Area -->
        <script src="../../resources/ckeditor/plugins/codesnippet/lib/highlight/highlight.pack.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
		<script src="../../resources/js/sub.js"></script>
		<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../resources/js/scripts.js"></script>
		<script src="../../resources/js/setting.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="../../resources/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="../../resources/assets/demo/datatables-demo.js"></script>
    </head>
    
    <script>
    	$(function(){
    		$(".sb-nav-fixed").css({"background-image":"url(/resources/assets/img/background.jpg)"});
    	});
    </script>
    <body class="sb-nav-fixed">
<!--         <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" style="text-align:center; font-size: 30px;"href="/">H-Ker</a>
            Navbar
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown"> -->
                    <a class="nav-link dropdown-toggle" style="color:black;margin-left: 95%;width: 5%;"id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <!-- <a class="dropdown-item" href="#">설정</a>
                        <a class="dropdown-item" href="#">로그</a>
                        <div class="dropdown-divider"></div> -->
                        <sec:authorize access="isAnonymous()">
                        	<a class="dropdown-item" href="/login">로그인</a>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                        	<a class="dropdown-item" href="/logout">로그아웃</a>
                        </sec:authorize>
                    </div>
<!--                 </li>
            </ul>
        </nav> -->
        
        
        
        