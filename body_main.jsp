<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "쇼핑몰에 오신것을 환영합니다";
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
                <div class="card bg-dark text-white">
                    	<img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    	<div class="card-img-overlay">
                        <h5 class="card-title">Outer</h5>
                        <p class="card-text">출처 : NOMELET</p>
                        </div>
                        </div>	

				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
            	<p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>

			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>

	<div class="container">
    	<div class="card bg-dark text-black">
        	<img src="image/toplike.jpg" class="card-img" alt="...">
    		<div class="card-img-overlay">
    			<h5 class="card-title">품절주의 초특가 세일</h5>
    			<p class="card-text">출처 : 쿠팡</p>
        	</div>
    	</div>
  	</div>

	<div class="container">
		<div class="list-group">
      		<a href="#" class="list-group-item list-group-item-action active" aria-current="true">상품1</a>
      		<a href="#" class="list-group-item list-group-item-action">상품2</a>
    	</div>
	</div>
