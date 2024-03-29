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
    <link href="../assets/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin-2.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

<script>
    $('#password, #confirm_password').on('keyup', function () {
        if ($('#password').val() == $('#confirm_password').val()) {
            $('#message').html('Matching').css('color', 'green');
        } else
            $('#message').html('Not Matching').css('color', 'red');
    });
</script>

<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Registro de usuario</h1>
                        </div>
                        <form class="user" method="post" action="/register">
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input name="txtName" type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Nombre">
                                </div>
                                <div class="col-sm-6">
                                    <input name="txtLastName" type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Apellido">
                                </div>
                            </div>
                            <div class="form-group">
                                <input name="txtEmail" type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Correo electronico">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input id="password" name="password" type="password" class="form-control form-control-user" placeholder="Contrase&ntilde;a" required>
                                </div>
                                <div class="col-sm-6">
                                    <input id="confirm_password" name="confirm_password" type="password" class="form-control form-control-user" placeholder="Repetir Contrase&ntilde;a" required>
                                </div>
                            </div>
                            <input type="submit" class="btn btn-primary btn-user btn-block" content="Registrarse"/>
                            <hr>
                            <a href="index.html" class="btn btn-google btn-user btn-block">
                                <i class="fab fa-google fa-fw"></i> Register with Google
                            </a>
                        </form>
                        <hr>
                        <div class="text-center">
                            <a class="small" href="forgot-password.html">Olvido su contrase&ntilde;a?</a>
                        </div>
                        <div class="text-center">
                            <a class="small" href="/redirect?page=index">Ya posee cuenta? Ingrese aqui</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="../assets/vendor/jquery/jquery.min.js"></script>
<script src="../assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="../assets/js/sb-admin-2.js"></script>

</body>

</html>
