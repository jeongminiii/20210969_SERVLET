<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "관리자모드";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	


	<div class="container">
		<div class="row" align="center">
			
            
            <%@ include file="../db/db_conn.jsp"%>
	<%
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>

			<div class="col-md-3">
                <div class="card bg-dark text-white">
                        <img src="https://jsp-main--cubcl.run.goorm.io/image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    	<div class="card-img-overlay">
                        <h5 class="card-title">Outer</h5>
                        <p class="card-text">출처 : NOMELET</p>
                        </div>
                        </div>	

				<h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_UnitPrice")%>원
		<p><a href="product_detail_ad.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>


			</div>
			<%
            }
            if (rs != null)
                rs.close();
 		        if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
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
