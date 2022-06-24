<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherlogin.aspx.cs" Inherits="collegeManagementSystem.teacherlogin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Home</title>
    <link rel="icon" href="imgs\college-graduation.png" />
     <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com"crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Open+Sans:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .heading  {
             height:50px; 
                margin:auto ;
                background-color:#EF9F9F;
                padding: 10px 0px 10px 0px;
                text-align:center;
                color:#000;
                font-family: 'Open Sans', sans-serif;
                font-size:30px;
                 }
        .options {
            height: 90.6vh;
            margin: 0;
            background-image:url('https://img.freepik.com/free-photo/top-view-pink-keyboard-with-copyspace_23-2148198142.jpg?t=st=1655703244~exp=1655703844~hmac=7e14f3f8d1b59363ebb9d4d06ef1214392c05724c7d9553ad00548625d050aa6&w=996');
            background-size:cover;
           background-repeat:no-repeat;
            font-family: 'Open Sans', sans-serif;
            font-size: 20px ;
            color: #839AA8;
            text-align:center;
            padding-top:210px;
            padding-bottom:210px;

        }
         img{
           
            margin:5px;
            padding-bottom: 10px;
        }
         button{
            color:#CA82FF;
            background-color:#FFF2F2;
            border-radius:4px;
            border:none;
        }
    </style>
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="margin:0;">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label">
        <div class="heading">TEACHER
            <a href="homepage.aspx" style="float:right;  font-size:20px; color:#FFF2F2; padding-top:10px; padding-right:10px;">LogOut</a>
        </div>
        <div class="options">
            <div class="row">
                <div class="row">
                    <div class="col-lg-6 col-md-6" style="padding:0;">
                        <img src="imgs\graduated.png" height="200px" width="200px"/>

                    </div>
                    <div class="col-lg-6 col-md-6" style="padding:0;">
                      <img src="imgs\management.png" height="200px" width="200px" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-lg-6">
<button type="button" runat="server" id="addstudent" onserverclick="addstudent_ServerClick">Add Student </button>
                    </div>
                    <div class="col-lg-6 col-lg-6">
<button type="button" runat="server" id="managestudent" onserverclick="managestudent_ServerClick">Manage Students</button>
                       
                    </div>
                </div>
            </div>
        </div>
    </asp:Label>
         </div>
    </form>
</body>
</html>

