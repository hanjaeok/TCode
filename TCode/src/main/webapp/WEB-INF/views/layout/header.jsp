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
        <script>
	    	$(function(){
	    		$.ajax({
					url : '/set/categoryList',
					type : 'post',
					dataType : 'json',
					success : function(rs){
						var result = rs.cList;
						var sResult = rs.sList;
						
						var html = "";
						var chtml = "";
						var shtml = "";
						
						for(var i = 0 ; i < rs.cList.length; i++){
							
							chtml = "<a class='nav-link collapsed' id="+result[i].t_category+" style='font-size: 18px;' href='#' data-toggle='collapse' data-target='#collapse"+result[i].t_category+"' aria-expanded='false' aria-controls='collapse"+result[i].t_category+"'>"
								  + 	"<div class='sb-nav-link-icon'><i class='fas fa-book'></i></div>"
								  + 		result[i].t_category
								  + 	"<div class='sb-sidenav-collapse-arrow'><i class='fas fa-angle-down'></i></div>"
								  + "</a>"
								  + "<div class='collapse' id='collapse"+result[i].t_category+"' aria-labelledby='headingOne' data-parent='#sidenavAccordion'>"
								  + "	<nav class='sb-sidenav-menu-nested nav smCategory"+result[i].t_category+"'>"
								  + "	</nav>"
								  + "</div>";
							for(var j = 0 ; j < rs.sList.length; j++){
								if(result[i].t_cno == sResult[j].t_pcode){
									shtml = "<a class='nav-link' style='font-size: 15px;' href='/sub/category/"+sResult[j].t_category+"'><i class='fas fa-angle-right' style='margin-right: 5%;'></i>"+sResult[j].t_category+"</a>"
									html += shtml;
								}
							}
							$("#selCateMenu").append(chtml);
							$(".smCategory"+result[i].t_category+"").append(html);
							
							var html="";
						}
					}
				});
	    	});
        </script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" style="text-align:center; font-size: 30px;"href="/">H-Ker</a>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
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
                </li>
            </ul>
        </nav>
        
        
        
        