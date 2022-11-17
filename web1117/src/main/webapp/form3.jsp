<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function check(){
	   		// radio의 체크여부를 변수에 저장
			var chk=0;
			for(var i=0;i<6;i++){
				if(document.pkc.area[i].checked) {
				chk=1;
				}	   
	   		}	  
			// 체크가 되었다면 chk=1, 체크가 되지 않았다면 chk=0
	   
	   		var chk2=0;
	   		for(var i=0;i<7;i++) {
				if(document.pkc.food[i].checked){
			//  chk2=1; 체크한 것과 안한것만 구분이 가능
				chk2++;  // 체크한 개수를 알 수 있다..
				}	   
			}	
	   
			if(chk==0) {
				alert("태어난 곳을 선택하세요");
			}	   
	   		else if(chk2 < 2){
				alert("음식을 2개 이상 선택하세요");
			}
			else {
				alert("완료");
			}	
		}
 </script>
</head>
<body>
	<form name="pkc">
		자신이 태어난 곳은?
		<p>
		<input type="radio" name="area">대한민국<br>
		<input type="radio" name="area">미국<br>
		<input type="radio" name="area">일본<br>
		<input type="radio" name="area">중국<br>
		<input type="radio" name="area">러시아<br>
		<input type="radio" name="area">북한<br>
		<p>
		당신이 좋아하는 음식은?
		<p>
		<input type="checkbox" name="food">참치뱃살초밥<br>
		<input type="checkbox" name="food">광어초밥<br>
		<input type="checkbox" name="food">연어초밥<br>
		<input type="checkbox" name="food">돌돔초밥<br>
		<input type="checkbox" name="food">감성동촘밥<br>
		<input type="checkbox" name="food">참동초밥<br>
		<input type="checkbox" name="food">쥐치초밥<br>
		<p>
		<input type="button" value="선택완료" onclick="check()">
	</form>
</body>
</html>