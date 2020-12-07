<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<link href="../resources/css/sub.css" rel="stylesheet" />

        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
            	<main>
                    <div class="container-fluid">
            	 		<div class="lay-2" style="font-size:22px;">Setting</div>
                        <div class="breadcrumb mb-4" id="bdc">
                        	<div style="width:100%; text-align: right; margin: auto;">
                        		<button type="button" class="btn btn-sm" id="addBtn" onclick="SET.lgCgIdxReset();" data-toggle="modal" data-target="#cateModal">
                        			<i class="fas fa-plus"></i> ADD
                        		</button>
                        	</div>
                        	<div class="contentList">
                        		<c:forEach var="list" items="${cList }" varStatus="status">
		                        	<div id="setCategoryList">
		                        		<div id="setLargeCate">
		                        			<i class="fas fa-bars" style="margin-right: 2%;"></i><c:out value="${list.t_category }"></c:out>
		                        			<button type="button" class="btn btn-sm" id="addCateBtn" onclick="SET.lgCtgoIndex('${list.t_cno }');" data-toggle="modal" data-target="#smCateModal">
		                        				<i class="fas fa-plus"></i>
		                        			</button>
		                        			<input type="hidden" id="lgCateNum" value="">
		                        		</div>
		                        	</div>
		                        	
			                        <c:forEach var="sList" items="${sList }" varStatus="status">
			                        <c:set var="name" value="${list.t_cno }" />
		                        	<c:set var="tmpName" value="${sList.t_pcode}" />
			                        	<c:if test="${name eq tmpName}">
					                        <div id="setCategoryList">
					                        	<div id="setSmCate">
					                        		<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-dash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
														<path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
													</svg>
					                        		<c:out value="${sList.t_category }"></c:out>
					                        	</div>
					                        </div>
					                    </c:if>
			                        </c:forEach>
		                        	
	                        	</c:forEach>
	                        </div>
                        </div>
            		</div>
            	</main>
            	
            	
            	<!-- Large Modal -->
				<div class="modal fade" id="cateModal" tabindex="-1" role="dialog" aria-labelledby="cateModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="cateModalLabel">Category 추가</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
				        		<div id="largeCategory">
				        			<div id="lgCateTitle">
				        				<i class="fas fa-list-ul" style="margin-right: 5%;"></i> 대분류 카테고리 명
				        			</div>
				        			<div class="lgArea">
					        			<span>
											<input type="text" class="form-control" id="lgCName">
										</span>
									</div>
				        		</div>
							</div>
							<div class="modal-footer">
								<button type="button" onclick="SET.addCategory('LARGE');" class="btn btn-sm btn-primary">추가</button>
								<button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
            	
            	<!-- Small Modal -->
            	<div class="modal fade" id="smCateModal" tabindex="-1" role="dialog" aria-labelledby="smCateModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="smCateModalLabel">Category 추가</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
				        		<div id="smallCategory">
				        			<div id="smCateTitle">
				        				<i class="fas fa-list-ul" style="margin-right: 5%;"></i> 소분류 카테고리 명
				        			</div>
				        			<div class="smArea">
					        			<span>
											<input type="text" class="form-control" id="smCName">
										</span>
									</div>
				        		</div>
							</div>
							<div class="modal-footer">
								<button type="button" onclick="SET.addCategory('SMALL');" class="btn btn-sm btn-primary">추가</button>
								<button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>

<%@ include file="/WEB-INF/views/layout/side.jsp" %>
<script>
	$(function(){
		
	});
</script>
