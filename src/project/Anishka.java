package Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import Project.DB;

import Project.Product;

/**
 * Servlet implementation class Anishka
 */
@WebServlet("/Anishka")
public class Anishka extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ArrayList<Product> list = new ArrayList<>();
	static ArrayList<String> cartlist = new ArrayList<>();
	HttpSession session;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Anishka() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String page = request.getParameter("page");
		if(page.equals("mobiles") || page.equals("vegie") || page.equals("gr") || page.equals("oil") || page.equals("masala") || page.equals("cl") || page.equals("choc") || page.equals("baby") || page.equals("diary") || page.equals("bev") || page.equals("eg")) {
			DB db = new DB();
			 try {
				list = db.fetch();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("list", list);
			
			if(page.equals("mobiles"))
				request.getRequestDispatcher("mobile2.jsp").forward(request, response);
			if(page.equals("vegie"))
				request.getRequestDispatcher("vegie.jsp").forward(request, response);
			if(page.equals("gr"))
				request.getRequestDispatcher("gr.jsp").forward(request, response);
			if(page.equals("oil"))
				request.getRequestDispatcher("oil.jsp").forward(request, response);
			if(page.equals("masala"))
				request.getRequestDispatcher("Masala.jsp").forward(request, response);
			if(page.equals("cl"))
				request.getRequestDispatcher("cl.jsp").forward(request, response);
			if(page.equals("choc"))
				request.getRequestDispatcher("choc.jsp").forward(request, response);
			if(page.equals("baby"))
				request.getRequestDispatcher("baby.jsp").forward(request, response);
			if(page.equals("diary"))
				request.getRequestDispatcher("diary.jsp").forward(request, response);
			if(page.equals("bev"))
				request.getRequestDispatcher("bev.jsp").forward(request, response);
			if(page.equals("eg"))
				request.getRequestDispatcher("egg.jsp").forward(request, response);
		}
		//request.setAttribute("list", list);
		
		if(page.equals("addtocart"))
		{
			String id = request.getParameter("id");
			String action = request.getParameter("action");
			
			
			Product p = new Product();
			//boolean check = p.check(cartlist,id);
			
			
			//if(check)
				//JOptionPane.showMessageDialog(null, "Product is already added to Cart", "Info", JOptionPane.INFORMATION_MESSAGE);
			// {
			cartlist.add(id);
			JOptionPane.showMessageDialog(null, "Product successfully added to Cart", "Info", JOptionPane.INFORMATION_MESSAGE);
			//}
			session = request.getSession();
			 session.setAttribute("cartlist", cartlist);
			 if(action.equals("mobiles"))
					request.getRequestDispatcher("mobile2.jsp").forward(request, response);
				if(action.equals("vegie"))
					request.getRequestDispatcher("vegie.jsp").forward(request, response);
				if(action.equals("gr"))
					request.getRequestDispatcher("gr.jsp").forward(request, response);
				if(action.equals("oil"))
					request.getRequestDispatcher("oil.jsp").forward(request, response);
				if(action.equals("masala"))
					request.getRequestDispatcher("Masala.jsp").forward(request, response);
				if(action.equals("cl"))
					request.getRequestDispatcher("cl.jsp").forward(request, response);
				if(action.equals("choc"))
					request.getRequestDispatcher("choc.jsp").forward(request, response);
				if(action.equals("baby"))
					request.getRequestDispatcher("baby.jsp").forward(request, response);
				if(action.equals("diary"))
					request.getRequestDispatcher("diary.jsp").forward(request, response);
				if(action.equals("bev"))
					request.getRequestDispatcher("bev.jsp").forward(request, response);
				if(action.equals("eg"))
					request.getRequestDispatcher("egg.jsp").forward(request, response);
			
		}
		if(page.equals("showcart")) {
			session = request.getSession();
			 session.setAttribute("cartlist", cartlist);
			 session.setAttribute("list", list);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
		}
		if(page.equals("remove")) {
			String id = request.getParameter("id");
			Product p = new Product();
			cartlist = p.remove(cartlist,id);
			
			session = request.getSession();
			session.setAttribute("cartlist", cartlist);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
		}
if(page.equals("success")) {
			
			request.getRequestDispatcher("pay.jsp").forward(request, response);
			
			/*session = request.getSession();
			 cartlist.clear();
			 session.setAttribute("cartlist", cartlist);*/
		}
if(page.equals("pay")) {
	
	request.getRequestDispatcher("success2.jsp").forward(request, response);
	
	/*session = request.getSession();
	 cartlist.clear();
	 session.setAttribute("cartlist", cartlist);*/
}
if(page.equals("home"))
{cartlist.clear();
	request.getRequestDispatcher("home2.jsp").forward(request, response);;
		
	}

}}
