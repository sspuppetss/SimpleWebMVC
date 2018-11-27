<%-- 
    Document   : mahasiswaView
    Created on : Oct 18, 2018, 2:56:59 PM
    Author     : 672016198
--%>
<%@page import="entity.Mahasiswa"%>
<%@page import="entity.Mahasiswa"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="css/admin.css">       
        <title>View</title>
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
                <h1>List Mahasiswa</h1>
            </section>
            <section class="content-main">
                <a href="MahasiswaInsert" class="btn add">Add Mahasiswa</a>
                <table class="table">
            <tr>
                <th>NIM</th>
                <th>Nama</th>
                <th>Progdi</th>
                <th colspan="2">Action</th>
            </tr>
            <%
            Object obj=request.getAttribute("listMhs");
            List<Mahasiswa> listMhs=(List)obj;
            for(Mahasiswa m : listMhs){
                out.print("<tr>");
                out.print("<td>"+m.getNim()+"</td>");
                out.print("<td>"+m.getNama()+"</td>");
                out.print("<td>"+m.getProgdi()+"</td>");
                out.print("<td class='act'><a href='MahasiswaEdit?nim="+m.getNim()+"'>Update</a></td>");
                out.print("<td class='act'><a href='MahasiswaDelete?nim="+m.getNim()+"'>Delete</a></td>");
                out.print("</tr>");
            }
            %>
        </table>
            </section>
        </div>
                <footer>
            @2018 Surya Dwi Pradana 672016198
        </footer>
    </body>
</html>