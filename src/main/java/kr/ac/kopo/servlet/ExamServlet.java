package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// web.xml에 매핑주지 않아도 어노테이션을 통해 가능하다
@WebServlet("/servlet/exam")
public class ExamServlet extends HttpServlet{	
	/*
	 	http://localhost:9999/Lecture-Web/servlet/exam
	 			?name=hong&hobby=reading&hobby=music&hobby=movie 입력시
	 	
	 	웹브라우저에 다음의 결과가 응답됨
	 	이름 : hong
	 	취미 : reading music movie
	 */
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		// 속성 hobby를 통해서 values를 복수개 갖고오기
		// 복수개이기때문에 String배열
		String[] hobby = request.getParameterValues("hobby");
		// 체크박스의 경우 다중선택이기 때문에 .getParameterValues() 사용
		// 구분을 위해서 name으로 구분
		// 체크박스는 name으로 구분 , value로 선택하는 값이 담김
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>서블릿연습</title>");
		out.println("</head>");
		out.println("<body>");		
		out.println("이름(name) : " + name + "<br>");
		out.println("취미(hobby) : ");
		for(int i = 0; i < hobby.length; i++) {
			out.println(hobby[i] + "&nbsp;&nbsp;");
		}
		out.println("<br>");
		out.println("</body>");
		out.println("</html>");
		out.close();
		
	}
	
	
}
