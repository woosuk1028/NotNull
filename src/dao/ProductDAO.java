package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import vo.Product;


public class ProductDAO {

	Connection con;
	private static ProductDAO boardDAO;
	
	private ProductDAO() {
		
	}
	
	public void setConnection(Connection con) {
		// TODO Auto-generated method stub
		this.con = con;
	}
	
	public static ProductDAO getInstance() {
		if(boardDAO == null) {
			boardDAO = new ProductDAO();
		}
		return boardDAO;
	}

	public ArrayList<Product> selectProductList() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Product> productList = null;
		
		try {
			pstmt = con.prepareStatement("select * from product");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				productList = new ArrayList<Product>();
				do {
				productList.add(new Product(
											rs.getString("pcode"),
											rs.getString("name"),
											rs.getInt("price"),
											rs.getString("size"),
											rs.getString("brand"),
											rs.getString("pInfo"),
											rs.getString("img")));
			}while(rs.next());
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return productList;
	}



}
