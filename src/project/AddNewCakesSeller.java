package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddNewCakesSeller
 */
@WebServlet("/AddNewCakesSeller")
public class AddNewCakesSeller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	  private ServletConfig config;
	  //Setting JSP page
	  String page="CakesAddedSeller.jsp";
	  public void init(ServletConfig config)
	  throws ServletException{
	 this.config=config;
	  }   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewCakesSeller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		//  static ResultSet rs1 = null;
	  PrintWriter out = response.getWriter();

	  
	  Connection currentCon = null;
	  ResultSet rs = null;
	 // ResultSet rs;
	  response.setContentType("text/html");
	  try {
	 // Load the database driver
	  Class.forName("com.mysql.jdbc.Driver");
	  currentCon = ConnectionManager.getConnection();
	  // Get a Connection to the database
	  //connection = DriverManager.getConnection(connectionURL, "root", "root"); //DO NOT CHANGE THIS LINE
	 String image = request.getParameter("image");
	 String cakeName = request.getParameter("cakeName");
	 String cakeID = request.getParameter("cakeID");
	 String seller = request.getParameter("seller");
	 String cost = request.getParameter("cost");

	 
	 String sql = "insert into cakes(image,cakeName,cakeID,seller,cost) values ('"+image+"','"+cakeName+"','"+cakeID+"','"+seller+"','"+cost+"') ";
	 
	  Statement s = currentCon.createStatement();
	  s.executeUpdate (sql);
	  rs = s.getResultSet();
	  rs.close ();
	  s.close ();
	  }catch(Exception e){
	  System.out.println("Exception is ;"+e);
	  }

	  RequestDispatcher dispatcher = request.getRequestDispatcher(page);
	  if (dispatcher != null){
	dispatcher.forward(request, response);
	  } 
	  }
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
