package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PInfoInputServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String[] gender = request.getParameterValues("gender");
		
		String infoMail = request.getParameter("infoMail");
		String adMail = request.getParameter("adMail");
		String deliMail = request.getParameter("deliMail");

		String[] job = request.getParameterValues("job");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>개인정보출력</title>");
		out.println("	</head>");
		out.println("	<body>");		
		out.println("		<h2>개인 정보 출력</h2><br>");
		out.println("	이름 : " + name + "<br>");
		out.println("	아이디 : " + id + "<br>");
		out.println("	암호 : " + password + "<br>");
		out.println("성별 : ");
		for(int i = 0; i < gender.length; i++) {
			out.println(gender[i]);
		}
		out.println("<br>");
		if(infoMail != null) {
			out.println("공지 메일 : 받음<br>");
		}else {
			out.println("공지 메일 : 받지 않음<br>");			
		}
		
		
		if(adMail != null) {
			out.println("광고 메일 : 받음<br>");
		}else {
			out.println("광고 메일 : 받지 않음<br>");			
		}
		
		if(deliMail != null) {
			out.println("배송 확인 메일 : 받음<br>");
		}else {
			out.println("배송 확인 메일 : 받지 않음<br>");			
		}
	
		
		out.println("직업 : ");
		for(int i = 0; i < job.length; i++) {
			out.println(job[i]);
		}
		
		
		out.println("<br>");
		out.println("</body>");
		out.println("</html>");
	}
	
}

 
