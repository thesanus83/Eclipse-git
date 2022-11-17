<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function check() {
			var name = document.pkc.name.value;
			var kor = document.pkc.kor.value;
			var eng = document.pkc.eng.value;
			var mat = document.pkc.mat.value;
			
			
			//문자에 값이 없다는 것 => ""이거나 length ==0인것 체크가 가능
			//if (name.length==0){					
			if(name==""){ 
				alert("이름을 일력하세요");
				document.pkc.name.focus();
			} 
			else if (kor=="") {
				alert("국어 점수를 입력하세요");
				document.pkc.kor.focus();
			} 
			else if(eng==""){
				alert("영어 점수를 입력하세요");
				document.pkc.eng.focus();
			} 
			else if(mat=="") {
				alert("수학 점수를 입력하세요");
				document.pkc.mat.focus();
			} else {
				alert("완료");
			}
		}
	</script>
</head>
<body>
	<form name = "pkc">
		이름 <input type=text" name="name"> <p>
		국어 <input type=text" name="kor"> <p>
		영어 <input type=text" name="eng"> <p>
		수학 <input type=text" name="mat"> <p>
		<input type="button" value="입력" onclick="check()">
	</form>
</body>
</html>