package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();
    
    public static ProductRepository getInstance(){
        return instance;
    }
   



	public ProductRepository() {
		Product jacket = new Product("P1234", "Wool tweed jacket", 209000);
		jacket.setDescription("wool 30 polyester 25 acryl 23 nylon 14 rayon 6 span 2");
		jacket.setCategory("Outer");
		jacket.setManufacturer("designer");
		jacket.setUnitsInStock(1000);
		jacket.setCondition("New");

        Product blazerbrown = new Product("P1235", "wool blazer (brown)", 189000);
		blazerbrown.setDescription("WOOL 60% TETRON 30% ZENTRA 10%");
		blazerbrown.setCategory("Outer");
		blazerbrown.setManufacturer("designer");
		blazerbrown.setUnitsInStock(1000);
		blazerbrown.setCondition("New");

		Product blazerblack = new Product("P1236", "wool blazer (black)", 189000);
		blazerblack.setDescription("WOOL 60% TETRON 30% ZENTRA 10%");
		blazerblack.setCategory("Outer");
		blazerblack.setManufacturer("designer");
		blazerblack.setUnitsInStock(1000);
		blazerblack.setCondition("New");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(jacket);
		listOfProducts.add(blazerbrown);
		listOfProducts.add(blazerblack);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
    
    public void addProduct(Product product) {
        listOfProducts.add(product);
    }
}


