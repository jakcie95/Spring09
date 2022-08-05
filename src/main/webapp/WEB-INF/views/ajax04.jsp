<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>ajax03.jsp<br>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function ajax03(){
	var n = document.getElementById("name").value;
	var a = $("#age").val()
	var addr = $("#addr").val()
	var form = {name:n, age:a, addr:addr}
	console.log(form)
	console.log( typeof form )
	$.ajax({
		url : "ajax_result04", type:"post",
		data : JSON.stringify(form) , //서버로 보낼 데이터
		 //서버로 보낼 데이터 타입
		contentType : "application/json; charset=utf8",
		dataType : "json", //return type
		success : function(data){
			$("label").text(data.name+", "+data.age )
			console.log("data =>",data)
		},error : function(){
			alert('문제 발생!!!')
		}
	})
}
</script>
	
	name : <input type="text" id="name"><br>
	age : <input type="text" id="age"><br>
	addr : <input type="text" id="addr"><br>
	<input type="button" onclick="ajax03()" value="전송">
	
	<br><label id="label"></label>
</body>
</html>