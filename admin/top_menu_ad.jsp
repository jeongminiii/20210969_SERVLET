<%@ page contentType = "text/html;charset=utf-8" %>

<nav class="navbar navbar-expand  navbar-white bg-white">
    
<!-- <nav class="navbar navbar-light" style="background-color:pink;"> -->
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		SHOP
  		</button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">ALL</a> 
        <a class="dropdown-item" href="#">OUTER</a>
        <a class="dropdown-item" href="#">TOPS</a>
        <a class="dropdown-item" href="#">BOTTOMS</a>
        <a class="dropdown-item" href="#">DRESSES</a>
        <a class="dropdown-item" href="#">ACC</a>
     </div>
	</div>
  
    <div>
        <img src="https://jsp-main--cubcl.run.goorm.io//image/smalllogolike.jpg" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container">
		<div class="navbar-header">
            <a class="navbar-brand" href="./index_ad.jsp">관리자모드 상품목록(기본 홈)</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">상품 수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">상품 삭제</a>            
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
		</div>
	</div>
</nav>