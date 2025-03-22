<!-- #include file="data/conexaoDB.asp" -->
<%
' Captura os dados enviados pelo formulário
email = replace(Request.Form("email"), "'", "")
senha = replace(Request.Form("senha"), "'", "")

' Verifica se os campos não estão vazios
If email = "" Or senha = "" Then
    Response.Write "Por favor, preencha todos os campos."
    Response.End
End If



' Verificar se o usuário existe no banco de dados
strSQL = "SELECT Nome FROM Usuarios WHERE Email = '" & email & "' AND Senha = '" & senha & "'"
Set rs = conn.Execute(strSQL)

If Not rs.EOF Then
    ' Se o login for bem-sucedido, salvar o nome do usuário na sessão
    Session("usuario_nome") = rs("Nome")
    Response.Redirect "main.asp"
Else
    ' Se o login falhar, redirecionar de volta para a página de login com mensagem de erro
    Response.Redirect "login.asp?strStatus=ERRO"
End If
%>
