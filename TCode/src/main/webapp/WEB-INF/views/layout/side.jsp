<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
                            
                            </div>
                            <sec:authorize access="isAuthenticated()">
	                            <div class="sb-sidenav-menu-heading">설정</div>
		                            <a class="nav-link" href="/set/setting">
		                                <div class="sb-nav-link-icon"><i class="fas fa-cog fa-fw"></i></div>
		                                Settings
		                            </a>
	                            
		                            <a class="nav-link" href="/sub/newWrite">
		                                <div class="sb-nav-link-icon"><i class="fas fa-pencil-alt fa-fw"></i></div>
										Write
		                            </a>
                            </sec:authorize>

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                    	<div class="small" style="color:white;">방문자 수</div>
                        <span class="small" id="todayVisitor" style="color:orange;">0</span> / 
                        <span class="small" id="totalVisitor" style="color:red;">0</span>
                    </div>
                </nav>
            </div>
            
             <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; HanKer Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </body>
</html>
            