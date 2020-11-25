/**
 * 
 */

var SUB = {
	global : {
			
	},
	
	javaView: function(bno){
		$("#javaList_wrapper").fadeOut(1000, function(){
			var data = {
					BNO : bno,
			};
			
			$.ajax({
				url 	 : '../sub/javaView',
				type 	 : 'post',
				dataType : 'json',
				data	 : data,
				success  : function(rs){
					var html = "";
					$("#javaList_wrapper").text(html);
					
					html = "<div class='javaDate'>"+rs.SC.t_regdate+"</div>"
						 + "<div class='viewTitle'><b>"+rs.SC.t_title+"</b></div>"
						 + "<span class='back'><a href='javascript:void(0);' onclick='location.reload();'><i class='fas fa-reply'></i>이전</a></span>"
						 + "<div id='p_content' style='text-align: left;'>"+rs.SC.t_content+"</div>";
						 
					
					$("#javaList_wrapper").append(html);
					$("#javaList_wrapper").fadeIn();
				}
			});
		});
	},
	
	writeChck: function(){
		var data = {
				TITLE 	: $("#t_title").val(),
				CONTENT : CKEDITOR.instances.p_content.getData(),
				CNO		: $(".category").val()
		}
		
		$.ajax({
			url	 	 : '../sub/writeChck',
			type	 : 'post',
			dataType : 'json',
			data	 : data,
			success  : function(rs){
				console.log(rs);
				location.href="/";
			},
			error	 : function(){
				console.log("error");
			}
		});
		
	},
	
}