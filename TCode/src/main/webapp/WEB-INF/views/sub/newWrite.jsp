<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<link href="../resources/css/sub.css" rel="stylesheet" />

		<div id="layoutSidenav">
            <div id="layoutSidenav_content">
            	<main>
                    <div class="container-fluid">
            	 		<div class="lay-2" style="font-size:22px;">글쓰기</div>
                        <div class="breadcrumb mb-4" id="bdc">
                        	
                        	<input type="text" id="t_title" class="form-control" placeholder="제목을 입력하세요.">
                        	<select class="category">
                        		<option value="선택">== SELECT ==</option>
                        		<c:forEach items="${list }" var="cateList">
                        			<option value="${cateList.t_cno }">${cateList.t_category }</option>
                        		</c:forEach>
                        	</select>
                        	<button type="button" id="regChck" class="btn btn-primary" onclick="SUB.writeChck();">작성</button>
                        	<textarea class="form-control" id="p_content"></textarea>
	
                        </div>
            		</div>
            	</main>
				
				

<%@ include file="/WEB-INF/views/layout/side.jsp" %>
<script type="text/javascript">
	hljs.initHighlightingOnLoad();
	
	CKEDITOR.replace('p_content', {
		height: 500,
		width: 1400,
		extraPlugins : 'exportpdf, codesnippet',
		filebrowserUploadUrl: '/sub/imgUpload',
		codeSnippet_theme: 'monokai_sublime'
		
	});
	//CKEDITOR.config.width=1400;
</script>