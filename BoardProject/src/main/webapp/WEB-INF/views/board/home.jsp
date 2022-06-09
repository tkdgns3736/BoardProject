<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
<script src="https://code.jquery.com/jquery-latest.js"></script> 
 
    <style>
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
 
</style>

 <script type="text/javascript">
 
 
 		$(function() {
 			
 		$("#btn").on('click',function(){ // 제출 버튼 이벤트 지정
       	$('.modal').show();
       		
       	});

		/* dataRow에 대한 함수 */
		$(".dataRow").on('click',function(){
					// 현재 클릭된 Row(<tr>)
					var cardNo = $(this).find(".cardNo").text();
					$('#cardNo').val(cardNo);
					 alert("로그인 상태가 아닙니다. 로그인 후 다시 이용해주세요."); 
				})
	
 		});
 		
 		//팝업 Close 기능
 		 function close_pop(flag) {
             $('#myModal').hide();
        };
      </script>
<style>
	table {

	    border-collapse: collapse;
		font-size: smaller;
		overflow:auto;
		border-top: 1px solid #444444;
		table-layout: auto;
	 	}
	th, td {
	    border-bottom: 1px solid #444444;
	    padding: 15px;
	    text-align: center;
	  	}
	</style>
	
</head>
<body>
    <!-- The Modal -->
    <h2>모달 테스트중</h2>
    <input type="text" placeholder="Search" id="cardNo">
    <input type="button" value="모달 해보실?" id="btn">
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
    
               <table id="table" >
			
				<tr class="dataRow" onmouseover="this.style.background='#EAEAEA'" onmouseout="this.style.background='white'"  Style="cursor:pointer;">
					<td class="cardNo">8340268000204854</td>
					<td class="cardNo">8340268000204854</td>
				</tr>
				
					<tr class="dataRow" onmouseover="this.style.background='#EAEAEA'" onmouseout="this.style.background='white'"  Style="cursor:pointer;">
					<td class="cardNo">1234567891011123</td>
					<td class="cardNo">8340268000204854dddddddddddddddddddddddddddddddddddddddddddd</td>
				</tr>
				
		</table>
       
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
            </div>
      </div>
    </div>

</body>
</html>
