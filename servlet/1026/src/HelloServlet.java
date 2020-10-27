import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) 
	throws IOException, ServletException{
		
		res.setContentType("text/html; charset=utf-8"); // 한글 출력 위해 추가 MIME타입 지정
		PrintWriter pw = res.getWriter(); // res는 나가는것
//		pw.println("<p style='font-size:3em;color:red'>Hello Servlet</p>");
		
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p style='font-size'>:3em;color:red'>Hello 한글 출력 위해 meta tag 추가</p>");
		pw.println("</body></html>");
		
		pw.close();
		
		// spring을 위해 servlet을 배운다.
		// HTML 속에 JAVA : JSP (MVC중) V
		// JAVA 속에 HTML : SERVLET (MVC중) C
	}
}
