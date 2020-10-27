import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
     throws ServletException,
            IOException{
		// doPost일 때만 한글 출력을 위해 한중 추가해줘야한다.
		// req.setCharacterEncoding("utf-8");
		
		String username = req.getParameter("username");
		// 1$로 세개 인자를 하나로 커버하기
		String today = String.format("%1$tY년 %1$tm월 %1$td일입니다.", new Date());

		resp.setContentType("text/html; charset=utf-8"); // 한글 출력 위해 추가 MIME타입 지정
		PrintWriter out = resp.getWriter();
		out.println("<div><span style='color:blue'>"+username+"</span>님! 귀하의 방문 시간은 </div>");
		out.println("<div>"+today+"</div>");
		out.close();		
		
	}
}
