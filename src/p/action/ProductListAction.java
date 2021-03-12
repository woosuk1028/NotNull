package p.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import p.svc.ProductListService;

import vo.ActionForward;

import vo.Product;

public class ProductListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ProductListService productListService = new ProductListService();
		ArrayList<Product> productList = productListService.getProductList();
		request.setAttribute("productList", productList);
		ActionForward forward = new ActionForward("productList.jsp",false);
		
		return forward;
	}

}
