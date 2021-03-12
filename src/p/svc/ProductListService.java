package p.svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;

import dao.ProductDAO;
import vo.Product;

public class ProductListService {

	public ArrayList<Product> getProductList() {
		ProductDAO productDAO = ProductDAO.getInstance();
		Connection con = getConnection();
		productDAO.setConnection(con);
		ArrayList<Product> productList = productDAO.selectProductList();
		close(con);
		return productList;
	}

}
