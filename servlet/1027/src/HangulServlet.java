import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HangulServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
     throws ServletException,
            IOException{
		
		// 한글 추가 위한 필수조건
		resp.setContentType("text/html; charset=utf-8"); // 한글 출력 위해 추가 MIME타입 지정
		
		PrintWriter out = resp.getWriter();
		
		out.println("<p style='font-size:3em;color:blue'>안녕, Servlet</p>");
		
		out.close();
	}
}
