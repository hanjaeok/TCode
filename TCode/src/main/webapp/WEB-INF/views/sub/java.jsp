<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<link href="../resources/css/sub.css" rel="stylesheet" />

        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
            	<main>
                    <div class="container-fluid">
            	 		<div class="lay-2" style="font-size:22px;">JAVA</div>
                        <div class="breadcrumb mb-4" id="bdc">
                        	<table class="lay-2-body list" id="javaList">
                        		<thead>
                        			<tr>
                        				<th style="width:10%">Category</th>
                        				<th style="width:70%">Title</th>
                        				<th style="width:7%">Date</th>
                        			</tr>
                        		</thead>
                        		<tbody>
                        		<c:forEach var="list" items="${list }" varStatus="status">
                        			<tr>
                        				<td>
                        					<span class="category" style="width:100%;"> <b> [ ${list.t_category } ] </b></span>
                    					</td>
                    					<td style="margin-left:5%;"><a href="javascript:void(0);" onclick="SUB.javaView('${list.t_bno }');">${list.t_title }</a></td>
                    					<td><span class="date">${list.t_regdate }</span></td>
                        			</tr>
                        		</c:forEach>
                        		</tbody>
                        	</table>
                        </div>
            		</div>
            	</main>
            	
<%@ include file="/WEB-INF/views/layout/side.jsp" %>

<script>
	$(function(){
		
		var lang_kor = {
				"paginate" : {
		            "first" : "첫 페이지",
		            "last" : "마지막 페이지",
		            "next" : ">",
		            "previous" : "<"
		        }
		}
		
		$("#javaList").DataTable({
				"ordering"  	: false,
				"info" 			: false,
				"lengthChange"  : false,
				"filter" 		: false,
				language		: lang_kor
			});
	});
</script>