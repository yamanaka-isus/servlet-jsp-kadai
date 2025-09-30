package js;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LinkServlet extends HttpServlet {
	//GETメソッドのリクエスト受信時に実行されるメソッド
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		getJspData(request, response);
		
	}
	
	private void getJspData(HttpServletRequest request, HttpServletResponse response)
	throws ServletException,IOException {
		
		// リクエストのエンコード設定
		request.setCharacterEncoding("UTF-8");
		
		// レスポンスのコンテンツタイプ設定
		response.setContentType("text/html; charset=UTF-8");
		
		// JSPからのリクエストデータ取得
		String userName = request.getParameter("user");
		
		PrintWriter out = response.getWriter();
		out.println("<a href='" + request.getContextPath() + "/index?user=侍太郎'>名前「侍太郎」をServletに送信</a>");
		

		
		
		if (userName != null) {

		// 取得したデータの表示
		out.println("<h3>Servletからデータを受信しました: " + userName + "さん、こんにちは！</h3>");
		
		
	}
	}

}
