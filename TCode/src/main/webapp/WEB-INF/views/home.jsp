<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<link href="../../resources/ckeditor/plugins/codesnippet/lib/highlight/styles/monokai_sublime.css" rel="stylesheet" />
        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4" style="margin-bottom: 20px; color: #444;">HOME</h1>
                        <div class="breadcrumb mb-4">
                        	<div class="lay-2">최근 게시 글</div>
                        	<div class="lay-2-body list" id="javaList_wrapper">
                        		<c:forEach var="list" items="${list }" varStatus="status">
                        			<ul>
                        				<li>
                        					<span class="category"> <b> [ ${list.t_category } ] </b></span>
                        					<a href="javascript:void(0);" onclick="SUB.javaView('${list.t_bno}');">${list.t_title }</a>
                        					<span class="date">${list.t_regdate }</span>
                    					</li>
                        			</ul>
                        		</c:forEach>
                        	</div>
                        </div>
                        <div class="breadcrumb mb-4">
                        	<div class="lay-2">BEST</div>
                        	<div class="lay-2-body list" id="javaList_wrapper">
	                            <div id="javaList_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
	                        		<div class="javaDate">
	                        			${BEST.t_regdate }
	                        		</div>
	                        		<div class="viewTitle">
	                        			${BEST.t_title }
	                        		</div>
	                        		<span class="back">
	                        			<a href="javascript:history.back();">
	                        				<i class="fas fa-reply"></i>이전
	                        			</a>
	                        		</span>
	                        		<div id="p_content" style="text-align: left;">
	                        			${BEST.t_content }
	                        		</div>
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </main>
<%@ include file="/WEB-INF/views/layout/side.jsp" %>
<script>
	hljs.initHighlightingOnLoad();
</script>