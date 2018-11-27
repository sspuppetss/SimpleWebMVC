<%-- 
    Document   : home
    Created on : Oct 18, 2018, 2:49:28 PM
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
        <title>Home</title>
    </head>
    <body>
        <header>
            <%String a=session.getAttribute("username").toString();%>
            <nav class="nav">
                <ul class="nav-list">
                    <li>SIASAT</li>
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
                <h1>Home Page Mahasiswa</h1>
            </section>
            <section class="content-main">
                <h2>Selamat Datang <% out.println(a);%></h2>
                <p>Silahkan pilih menu disamping.</p>
            </section>
        </div>
        <footer>
            @2018 Surya Dwi Pradana 672016198
        </footer>
    </body>
</html>

