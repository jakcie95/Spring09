<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

<script type="text/javascript">
function getFunc(){
	$.ajax({
		url : "rest", type : "get", dataType : "json",
		success:function(data){ 
			console.log(data)
			$("#ld").text(data.key)}
	})
}
function postFunc(){
	$.ajax({
		url : "rest", type : "post", dataType : "json",
		success:function(data){ 
			console.log(data)
			$("#ld").text(data.key)}
	})
}
function putFunc(){
	$.ajax({
		url : "rest", type : "put", dataType : "json",
		success:function(data){ 
			console.log(data)
			$("#ld").text(data.key)}
	})
}
function deleteFunc(){
	$.ajax({
		url : "rest", type : "delete", dataType : "json",
		success:function(data){ 
			console.log(data)
			$("#ld").text(data.key)}
	})
}
</script>
<label id="ld"></label>
<hr>
<button onclick="getFunc()">get</button>
<button onclick="postFunc()">post</button>
<button onclick="putFunc()">put</button>
<button onclick="deleteFunc()">delete</button>
</body>
</html>







