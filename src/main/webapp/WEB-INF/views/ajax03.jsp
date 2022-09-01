<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>ajax03.jsp<br>

<script type="text/javascript">
function ajax03(){
	var n = document.getElementById("name").value;
	var a = $("#age").val()
	var form = {name:n, age:a}
	console.log(form)
	console.log( typeof form )
	console.log(JSON.stringify(form))
	$.ajax({
		url : "ajax_result03",
		type:"post",
		data : JSON.stringify(form), //서버로 보낼 데이터
		 //서버로 보낼 데이터 타입
		contentType : "application/json; charset=utf8",
		dataType : "json", //return type
		success : function(data){
			$("label").text(data.name+", "+data.age)
			console.log("data =>",data)
		},error : function(){
			alert('문제 발생!!!')
		}
	})
}
</script>
	
	name : <input type="text" id="name"><br>
	age : <input type="text" id="age"><br>
	<input type="button" onclick="ajax03()" value="전송">
	
	<br><label id="label"></label>
</body>
</html>