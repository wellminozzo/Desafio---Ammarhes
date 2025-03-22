<!-- #include file="data/conexaoDB.asp" -->
<%

nome = replace(Request.Form("nome"),"'","")
email = replace(Request.Form("email"),"'","")
senha = replace(Request.Form("senha"),"'","")

If InStr(senha, " ") > 0 Then
    Response.Write("<div class='alert alert-danger'>A senha não pode conter espaços!</div>")
    Response.End
End If

strSQL = "insert into Usuarios (Nome, Email, Senha) values ('"&nome&"', '"&email&"', '"&senha&"');"

conn.execute(strSQL)



Response.Redirect("default.asp?strStatus=ADD")
Response.End

%>