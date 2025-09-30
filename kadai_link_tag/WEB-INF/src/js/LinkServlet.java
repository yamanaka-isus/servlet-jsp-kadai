package js;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LinkServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        // リクエストのエンコード設定
        request.setCharacterEncoding("UTF-8");

        // パラメータ取得
        String userName = request.getParameter("user");

        // メッセージを作成してリクエストスコープに保存
        if (userName != null) {
            String message = "Servletからデータを受信しました:" + userName + "さん、こんにちは！";
            request.setAttribute("message", message);
        }

        // JSPへ画面遷移
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);
    }
}
