/**
 * 
 */

var SUB = {
	global : {
			
	},
	
	javaView: function(bno){
		$("#javaList_wrapper").fadeOut(1000, function(){
			location.href="/sub/view?bno=" + bno;
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
				location.href="/";
			},
			error	 : function(){
			}
		});
		
	},
	
}