

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("CalcServlet")
// 클래스 선언 HttpServlet을 상속 받는다.
public class CalcServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	// GET 요청을 처리하기 위한 메서드
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//doPost()로 포워딩 하고 있다. 
		doPost(req, res); // 밑에있는 메서드 호출
	}

	// POST 요청을 처리하기 위한 메서드
	// doGet()메서드 호출하고 있기때문에 모든 요청은 doPost(0 에서 처리되는 구조이다.
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 변수선언
		int num1, num2;
		int result; // 결과를 저장하기 위한 변수
		String op;
		
		// 클라이언트 응답시 전달될 컨텐츠에 대한 mime type 과 캐리터셋 지정
		res.setContentType("text/html; charset=euc-kr");
		
		// 클라이언트 응답을 위한 출력 스트림 확보
		PrintWriter out = res.getWriter();
		
		//HTML form 을 통해 전달된 num1, num2 패러미터 값을 변수에 할당.
		//이때 getParameter() 메서도는 문자열을 리턴하므로 숫자형 데이터의 경우 Integer.parseInt() 를 
		num1 = Integer.parseInt(req.getParameter("num1")); // html의 name을 통해 받아온 결과
		num2 = Integer.parseInt(req.getParameter("num2"));		
		op = req.getParameter("operator");
		// calc() 메서드 호출로 결과 받아옴.
		// result = calc(num1, num2, op);
		Calc calc = new Calc(num1, num2, op);
		result = calc.getResult();
	
		// 출력 스트림을 통해 화면구성
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><CENTER>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(num1+""+op+""+num2+"="+result);
		out.println("</BODY></HTML>");
	}
	
	
	
	// calc 메서드: 두 숫자와 연산자를 받아서 계산한 결과를 반환하는 메서드
//	private int calc(int num1, int num2, String op) {
//	    int result = 0; // 결과 변수 초기화
//
//	    // 연산자에 따라 계산 수행
//	    switch (op) {
//	        case "+":
//	            result = num1 + num2;
//	            break;
//	        case "-":
//	            result = num1 - num2;
//	            break;
//	        case "*":
//	            result = num1 * num2;
//	            break;
//	        case "/":
//	            if (num2 != 0) {
//	                result = num1 / num2;
//	            } else {
//	                // 0으로 나눌 수 없는 경우에 대한 처리
//	                throw new IllegalArgumentException("Cannot divide by zero");
//	            }
//	            break;
//	        default:
//	            // 지원하지 않는 연산자에 대한 처리
//	            throw new IllegalArgumentException("Unsupported operator");
//	    }
//	    return result; // 결과 반환
//	}
	

}
