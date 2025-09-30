<%@ page contentType="text/html; charset=UTF-8" %>

<html>
    <head>
        <title>Servletからのメッセージを表示しよう</title>
    </head>
    <body>
        <!-- 常にリンクを表示 -->
        <a href="<%= request.getContextPath() %>/index?user=侍太郎">名前「侍太郎」をServletに送信</a>
        
        <h3>${message}</h3>
    </body>
</html>