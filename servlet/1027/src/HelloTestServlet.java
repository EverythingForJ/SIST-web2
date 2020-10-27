import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloTestServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException {
		PrintWriter out = res.getWriter();
		
		out.println("<h1>welcome Servlet</h1>");
		out.print("<div>Hello");
		out.println("Servlet</div>");
		
		out.close();
	}	
}
