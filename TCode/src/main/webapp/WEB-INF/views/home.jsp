<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4" style="margin-bottom: 20px;">HOME</h1>
                        <div class="breadcrumb mb-4">
                        	<div class="lay-2">최근 게시 글</div>
                        	<div class="lay-2-body list">
                        		<c:forEach var="list" items="${list }" varStatus="status">
                        			<ul>
                        				<li>
                        					<span class="category"> <b> [ ${list.t_category } ] </b></span>
                        					<a href="#">${list.t_title }</a>
                        					<span class="date">${list.t_regdate }</span>
                    					</li>
                        			</ul>
                        		</c:forEach>
                        	</div>
                        </div>
                        <div class="breadcrumb mb-4">
                        	<div class="lay-2">그래프</div>
                            
                        </div>
                    </div>
                </main>
<%@ include file="/WEB-INF/views/layout/side.jsp" %>
