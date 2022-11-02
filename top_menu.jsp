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
        <img src="image\smalllogolike.jpg" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container">
		<div class="navbar-header">
            <a class="navbar-brand" href="./index.jsp">COMMUNITY</a>
            <a class="navbar-brand" href="./index.jsp">ACCOUNT</a>
            <a class="navbar-brand" href="cart/product_cart.jsp">CART</a>
            <a class="navbar-brand" href="./index.jsp">SEARCH</a>
           	<a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>


		</div>
        <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
	</div>
</nav>