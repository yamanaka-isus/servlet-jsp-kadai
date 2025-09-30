<%@ page contentType="text/html; charset=UTF-8" %>

<html>
    <head>
        <title>Servletからのメッセージを表示しよう</title>
        
        <style>

    body {
        font-family: "Yu Mincho", "Hiragino Mincho ProN W6", "MS Mincho", serif;
    }

        </style>
        
    </head>
    <body>
         <%-- リンクのクリック時にServletへデータを渡す(GETメソッド) --%>
         <a href="<%= request.getContextPath() %>/index?user=侍太郎">名前「侍太郎」をServletに送信</a>
    </body>
</html>