/**
 *  2020-12-02
 *  WRITER : HJO
 */

var SET = {
		global : {
			
		},
		
		
		/**
		 * 2020.12.04
		 * by. Hanker
		 * comment
		 *  - 대분류, 소분류 카테고리 추가
		 */
		addCategory: function(flag){
			if(flag == "LARGE"){
				var data = {
						CNAME : $("#lgCName").val(),
						CODE  : $("#lgCateNum").val()
				}
			} else{
				var data = {
						CNAME : $("#smCName").val(),
						CODE  : $("#lgCateNum").val()
				}
			}
			
			
			$.ajax({
				url		: '../set/addCategory',
				type	: 'post',
				dataType: 'json',
				data	: data,
				success : function(rs){
					if(rs.RS == "SC"){
						location.reload();
					}
				}
			});
		},
		
		/**
		 * 2020.12.04
		 * by. Hanker
		 * comment   
		 * 	- 대분류 우측 (+)버튼 클릭 시 자동으로 value값 삽입
		 * 	- modal창으로 데이터를 보내기 위함 
		 */
		lgCtgoIndex: function(lgIndex){
			$("#lgCateNum").val(lgIndex);
		},
		
		/**
		 * 2020.12.04
		 * by. Hanker
		 * comment
		 *  - 대분류 추가 시 PCODE 0 값을 넣기 위함
		 */
		lgCgIdxReset: function(){
			$("#lgCateNum").val("0");
		}
}