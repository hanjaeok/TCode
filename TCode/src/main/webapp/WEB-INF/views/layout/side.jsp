<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">TCODE</div>
                            <a class="nav-link" href="/" style="font-size: 18px;">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Main
                            </a>
                            <div class="sb-sidenav-menu-heading">메뉴</div>
                            <div id="selCateMenu">
                            	<a class="nav-link" id="study" style="font-size: 18px;" href='#' data-toggle="collapse" data-target="#collapseSTUDY" aria-expanded='true' aria-controls="collapseSTUDY">
                            		<div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                            			Study
                            		<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            	</a>
                            	<div class="collapse show" id="collapseSTUDY" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            		<nav class="sb-sidenav-menu-nested nav smCategorySTUDY">
                            			<a class="nav-link" style="font-size: 15px;" href="/sub/category/JAVA"><i class="fas fa-angle-right" style='margin-right: 5%;'></i>JAVA</a>
                            			<a class="nav-link" style="font-size: 15px;" href="/sub/category/HTML"><i class="fas fa-angle-right" style='margin-right: 5%;'></i>HTML</a>
                            		</nav>
                            	</div>
                            	<a class="nav-link collapsed" id="project" style="font-size: 18px;" href='#' data-toggle="collapse" data-target="#collapsePROJECT" aria-expanded='false' aria-controls="collapsePROJECT">
                            		<div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                            			Project
                            		<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            	</a>
                            	<div class="collapse" id="collapsePROJECT" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            		<nav class="sb-sidenav-menu-nested nav smCategoryPROJECT">
                            			<a class="nav-link" style="font-size: 15px;" href="/sub/category/TCODE"><i class="fas fa-angle-right" style='margin-right: 5%;'></i>TCode</a>
                            		</nav>
                            	</div>
                            </div>
                            <sec:authorize access="isAuthenticated()">
	                            <div class="sb-sidenav-menu-heading">설정</div>
		                            <!-- <a class="nav-link" href="/set/setting">
		                                <div class="sb-nav-link-icon"><i class="fas fa-cog fa-fw"></i></div>
		                                Settings
		                            </a> -->
	                            
		                            <a class="nav-link" href="/sub/newWrite">
		                                <div class="sb-nav-link-icon"><i class="fas fa-pencil-alt fa-fw"></i></div>
										Write
		                            </a>
                            </sec:authorize>

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                    	<div class="small" style="color:white;">방문자 수</div>
                        <span class="small" id="todayVisitor" style="color:orange;"></span> / 
                        <span class="small" id="totalVisitor" style="color:red;"></span>
                    </div>
                </nav>
            </div>
            
            </div>
        </div>
    </body>
    <script>
    	$(function(){
    		$.ajax({
    			url 	: '/sessionGet',
    			type 	: 'POST',
    			dataType: 'json',
				success : function(rs){
					$("#todayVisitor").text(rs.todayCnt);
					$("#totalVisitor").text(rs.totalCnt);
				}    			
    		});
    	});
    </script>
</html>
            