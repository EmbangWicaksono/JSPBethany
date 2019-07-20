<%-- 
    Document   : register
    Created on : Jul 25, 2018, 5:32:28 PM
    Author     : Andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Login</title>
        <link rel="stylesheet" href="css1/style.css">
    </head>

    <body>
    <center>
        <div class="container">

            <form action="CekRegister" method="post">

                <div class='text'>
                    <h1>Register</h1> 

<!--                    <p>Silahkan Mendaftarkan Diri Anda</p> -->
                </div>
         

                <div class='container-form'>
                    <p>Username</p>
                    <input type="text" name="username" />

                    <p>Password</p>
                    <input type="password" name="password" >
                    <p>Nama</p>
                    <input type="text" name="nama" >

                    <p>Email</p>
                    <td><input type="text" name="email" >

                        <p>Kontak</p>
                        <input type="text" name="kontak"> 
                </div>
                <input type="submit" value='Sign up'/>
            </form>
            <aside>

            </aside>
        </div>
    </center>
</body>
</html>
