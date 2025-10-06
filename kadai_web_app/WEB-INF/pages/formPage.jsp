<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Objects" %>

<html>
    <head>
        <title>個人情報入力フォーム</title>
    </head>
    <body>
        <%
        // Servletからのデータを取得
        String userName = (String) request.getAttribute("userName");
        String userEmail = (String) request.getAttribute("userEmail");
        String userAddress = (String) request.getAttribute("userAddress");
        String userNumber = (String)  request.getAttribute("userNumber");
        
        // データが存在しない場合は空文字に置き換え
        userName = Objects.toString(userName, "");
        userEmail = Objects.toString(userEmail, "");
        userAddress = Objects.toString(userAddress, "");
        userNumber = Objects.toString(userNumber, "");
        %>
        
        <h2>個人情報入力フォーム</h2>
        <form action="<%= request.getContextPath() %>/confirm" method="post">
            <table>
                <tr>
                    <td>お名前</td>
                    <td>
                        <input type="text" name="user_name" value=<%= userName %> >
                    </td>
                </tr>
                <tr>
                    <td>メールアドレス</td>
                    <td>
                        <input type="text" name="user_email" value=<%= userEmail %> >
                    </td>
                </tr>
                <tr>
                    <td>住所</td>
                    <td>
                        <input type="text" name="user_address" value=<%= userAddress %> >
                    </td>
                </tr>
                <tr>
                    <td>電話番号</td>
                    <td>
                        <input type="text" name="user_number" value=<%= userNumber %> >
                    </td>
                </tr>
            </table>
            
            <input type="submit" value="送信">
        
        
        
        </form>
    
    
    </body>
</html>