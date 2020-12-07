<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<link href="../../resources/css/sub.css" rel="stylesheet" />
<link href="../../resources/ckeditor/plugins/codesnippet/lib/highlight/styles/monokai_sublime.css" rel="stylesheet" />

        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
            	<main>
                    <div class="container-fluid">
            	 		<div class="lay-2" style="font-size:22px;">${title }</div>
                        <div class="breadcrumb mb-4" id="bdc">
                        	<div id="javaList_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        		<div class="javaDate">
                        			${SC.t_regdate }
                        		</div>
                        		<div class="viewTitle">
                        			${SC.t_title }
                        		</div>
                        		<span class="back">
                        			<a href="javascript:history.back();">
                        				<i class="fas fa-reply"></i>이전
                        			</a>
                        		</span>
                        		<div id="p_content" style="text-align: left;">
                        			${SC.t_content }
                        		</div>
                        	</div>
                        </div>
            		</div>
            	</main>
            	
            	
<%@ include file="/WEB-INF/views/layout/side.jsp" %>
<script>
	hljs.initHighlightingOnLoad();
</script>