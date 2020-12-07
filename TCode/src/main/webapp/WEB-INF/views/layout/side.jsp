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
                            
                            <!-- Java -->
                           <!--  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseJava" aria-expanded="false" aria-controls="collapseJava">
                                <div class="sb-nav-link-icon"><i class="fas fa-clipboard"></i></div>
                                	프로젝트
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseJava" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="#">Spring-Project</a>
                                    <a class="nav-link" href="#">Spring-Error</a>
                                </nav>
                            </div> -->
                            <!-- Study -->
	                            <!-- <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseStudy" aria-expanded="false" aria-controls="collapseStudy">
	                                <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
	                                	학습
	                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                            </a>
	                            <div class="collapse" id="collapseStudy" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
	                                <nav class="sb-sidenav-menu-nested nav">
	                                    <a class="nav-link" href="/sub/java"><i class="fas fa-angle-right" style="margin-right: 5%;"></i>Java</a>
	                                </nav>
	                            </div> -->
                            <!-- Layout -->
                            <!-- <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Layouts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div> -->
                            <!-- Page -->
                            <!-- <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div> -->
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
                        <span class="small" style="color:orange;">0</span> / 
                        <span class="small" style="color:red;">0</span>
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
            