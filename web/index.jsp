<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Irrigation Management</title>

    <!-- Custom fonts for this template-->
    <link href="assets/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin-2.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

<div class="container">

    <c:if test="${ state eq 'incorrect-login' }">
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            Usuario o contraseņa incorrecta, trate nuevamente
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>

    <c:if test="${ state eq 'user-created' }">
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            Usuario creado exitosamente! ingrese con sus credenciales
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">

                <div class="card-body p-0">

                    <!-- Nested Row within Card Body -->
                    <div class="row">

                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Bienvenido</h1>
                                </div>
                                <form class="user" method="post" action="/login">
                                    <div class="form-group">
                                        <input name="txtEmail" type="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Correo electronico">
                                    </div>
                                    <div class="form-group">
                                        <input name="txtPassword" type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Contraseņa">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">Recordar credenciales</label>
                                        </div>
                                    </div>

                                    <input type="submit" class="btn btn-primary btn-user btn-block" content="Ingresar"/>

                                    <hr>
                                    <a href="index.html" class="btn btn-google btn-user btn-block">
                                        <i class="fab fa-google fa-fw"></i> Ingresar con Google
                                    </a>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="forgot-password.html">Olvido su contraseņa?</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="/redirect?page=register">Registrarse</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="assets/js/sb-admin-2.min.js"></script>

</body>

</html>
