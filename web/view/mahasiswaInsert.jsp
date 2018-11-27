<%-- 
    Document   : mahasiswaInsert
    Created on : Oct 18, 2018, 2:59:59 PM
    Author     : 672016198
--%>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="css/admin.css">       
        <title>Add Mahasiswa</title>
    </head>
    <body>
        <header>
            <%String a=session.getAttribute("username").toString();%>
            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="Home">SIASAT</a></li>
                    <li><a href="Logout">Logout</a></li>
                    <li><% out.println(a);%></li>
                </ul>
            </nav>
            <aside class="sidebar">
                <ul class="sidebar-list">
                    <p class="side-head">Menu</p>
                    <a href="MahasiswaView"><li>View Mahasiswa</li></a>
                    <a href="MahasiswaInsert"><li>Add Mahasiswa</li></a>
                </ul>
            </aside>
        </header>
        <div class="content">
            <section class="content-header">
                <h1>Add Mahasiswa</h1>
            </section>
            <section class="content-main">
                <form class="form" action="MahasiswaInsert" method="POST">
                    <table>
                        <tr>
                            <td>
                                NIM
                            </td>
                            <td>
                                <input type="text" name="nim" class="form-control" onkeypress="return pronim(event)" required/><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nama
                            </td>
                            <td>
                                <input type="text" name="nama" class="form-control" required/><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Progdi
                            </td>
                            <td>
                                <input type="text" name="progdi" class="form-control" required/><br/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="ADD" class="btn"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </section>
        </div>
        <footer>
            @2018 Surya Dwi Pradana 672016198
        </footer>
        <script>
            function pronim(evt) {
                var ank = (evt.which) ? evt.which : event.keyCode;
                if (ank > 31 && (ank < 48 || ank > 57))                              
                    return false;
                return true;
            }
        </script>
    </body>
</html>