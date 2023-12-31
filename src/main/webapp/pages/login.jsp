<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/index-style.css">
    <link rel="stylesheet" href="../css/login-style.css">
    <title>Fintech | Login</title>
</head>
<body>
    <header class="container-fluid text-center py-1">
        <h1 class="fs-3 fw-bold">FINTECH</h1>
    </header>
    <main>
        <div class="container text-center margin-top-g">
            <!-- Mensagem de sucesso -->
            <c:if test="${not empty requestScope.success and requestScope.success eq true}">
                <div class="alert alert-success" role="alert">
                    Login feito com sucesso
                </div>
            </c:if>

            <!-- Mensagem de erro -->
            <c:if test="${not empty requestScope.success and requestScope.success eq false}">
                <div class="alert alert-danger" role="alert">
                    Dados inválidos
                </div>
            </c:if>

            <p class="fs-1 fw-bold">Login</p>
            <div class="form-center-desk">
                <form action="/usuarios/login" name="login" id="login" method="post" class="form-width ">
                    <input name="cpf" placeholder="Digite seu CPF" type="number" class=" form-number form-control my-4 form-width form-login" min="11111111111" max="99999999999" autofocus required>
                    <input name="senha" placeholder="Digite sua Senha" type="password" class="form-control my-4 form-width form-login" minlength="6" required>
                    <button type="submit" href="#" class="btn fw-bold py-2 px-5 btn-bg">Entrar</button>
                </form>
            </div>
            <div class="container pt-5 login-password-create">
                <a href="cadastro.jsp" class="text-white">Criar conta</a>
            </div>
        </div>
    </main>
</body>
</html>