package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet {
	
	// http://localhost:9999/Lecture-Web/method?id=sung
	// request : 클라이언트가 서버에게 요청하는 정보가 들어있다
	// response : 서버가 클라이언트에게 응답하는 객체 
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청이 어떤 메소드방식으로 얻어왔는 지 알아내는 메소드
		String method = request.getMethod();
		
		// 요청 uri를 알아냄
		String uri = request.getRequestURI();
		
		// 요청 url를 알아냄
		StringBuffer url = request.getRequestURL();
		
		// id=sung 물음표 뒤 파라미터 
		// request.getParameter(속성)
		String id = request.getParameter("id");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>메소드 요청방식</title>");
		out.println("	</head>");
		out.println("	<body>");		
		out.println("		========================================<br>");
		out.println("		&nbsp;&nbsp;&nbsp;&nbsp;출력결과<br>");
		out.println("		========================================<br>");
		out.println("		파라미터(id) : " + id + "<br>");
		out.println("		요청방식 : " + method + "<br>");
		out.println("		uri : " + uri + "<br>");
		out.println("		========================================<br>");
		out.println("	</body>");
		out.println("</html>");
		
		
		/*
		System.out.println("요청 Method : " + method);
//		/Lecture-Web/method
		System.out.println("요청 URI : " + uri);
//		 http://localhost:9999/Lecture-Web/method
		System.out.println("요청 URL : " + url.toString());
		System.out.println("id : " + id);
		*/
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// body 로 날라오는 문자를 어떤 캐릭터 셋팅인지 말해줘야함
		// post방식에서는 반드시 필요!
		request.setCharacterEncoding("utf-8");
		
		String method = request.getMethod();
		String uri = request.getRequestURI();
		StringBuffer url = request.getRequestURL();
		String id = request.getParameter("id");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>메소드 요청방식</title>");
		out.println("	</head>");
		out.println("	<body>");		
		out.println("		========================================<br>");
		out.println("		&nbsp;&nbsp;&nbsp;&nbsp;출력결과<br>");
		out.println("		========================================<br>");
		out.println("		파라미터(id) : " + id + "<br>");
		out.println("		요청방식 : " + method + "<br>");
		out.println("		uri : " + uri + "<br>");
		out.println("		========================================<br>");
		out.println("	</body>");
		out.println("</html>");
	}
	
}

// url : 구분할 수 있는 경로 -> 프로토콜, 포트, 경로
// uri : 내 서버 밑 자원들을 구분할 수 있는 경로

 
