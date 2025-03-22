<%
    ' Declarar a variável para a conexão
    Dim conn

    ' Criar um objeto de conexão ADODB
    Set conn = Server.CreateObject("ADODB.Connection")

    ' Definir a string de conexão
    connStr = "Provider=SQLOLEDB;Data Source=NomeDoHost;Initial Catalog=NomeDoBanco;User ID=User;Password=Password;"

   

    ' Tentar abrir a conexão
    On Error Resume Next
    conn.Open connStr

    ' Verificar se a conexão foi bem-sucedida
    If conn.State = 1 Then
        Response.Write ""
    Else
        Response.Write "Erro ao conectar ao banco de dados: " & Server.HTMLEncode(Err.Description)
    End If

    ' Fechar a conexão (importante para liberar recursos)
    'conn.Close
    'Set conn = Nothing
%>
