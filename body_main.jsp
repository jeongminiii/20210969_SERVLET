<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "팡팡.COM에 오신것을 환영합니다";
      String tagline = "하단페이지:확인";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	

  <% ArrayList<Product> listOfProducts = productDAO.getAllProducts(); %> 

	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>

	<div class="container">
    	<div class="card bg-dark text-black">
        	<img src="image/top.jpg" class="card-img" alt="...">
    		<div class="card-img-overlay">
    			<h5 class="card-title">품절주의 초특가 세일</h5>
    			<p class="card-text">출처 : 쿠팡</p>
        	</div>
    	</div>
  	</div>

<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">상품1</a>
      <a href="#" class="list-group-item list-group-item-action">상품2</a>
    </div>