<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="collegeManagementSystem.adminlogin" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
    <link rel="icon"   href="imgs\college-graduation.png" />
       <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com"crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Open+Sans:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .heading  {
            height:50px; 
                margin:auto ;
                background-color:#DBDFFD;
                padding: 10px 0px 10px 0px;
                text-align:center;
                color:rgba(58, 58, 58, 0.90);
               font-family: 'Open Sans', sans-serif;
                font-size:30px;
                 }
    
        .options {
            height: 90.6vh;
            margin: 0;
            background-color:#F9F9F9;
            font-family: 'Open Sans', sans-serif;
            font-size: 20px ;
            color: #646FD4;
            text-align:center;
            padding-top:210px;
            padding-bottom:210px;

        }
        img{
            
            padding-bottom: 10px;
        }
        button{
          
            border:none;
        }
    </style>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="margin:0;">
    <form id="form1" runat="server">
    <div>
        <div class="heading">  ADMIN
            <a href="homepage.aspx" style="float:right; font-family:Arial; font-size:17px; padding-top:10px; margin-right:15px;">LogOut</a>
        </div>
        <div class="options" style="margin:0;">
            <div class="row">
                <div class="row">
                    <div class="col-lg-4  col-lg-4 col-lg-4">
                        <img src="imgs\teacher.png" height="200px" width="200px"  />
                        
                    </div>
                    <div class="col-lg-4  col-lg-4 col-lg-4">
                        <img src="imgs\management.png" height="200px" width="200px" />
                        
                    </div>
                    <div class="col-lg-4  col-lg-4 col-lg-4">
                        <img src="imgs\graduated.png" height="200px" width="200px"/>
                        
                    </div>
                </div>


                 <div class="row">
                    <div class="col-lg-4  col-lg-4 col-lg-4">
                       
                        <button type="button" runat="server" id="Button1" onserverclick="Button1_ServerClick">Add Teacher </button>
                    </div>
                    <div class="col-lg-4  col-lg-4 col-lg-4">
                       
                        <button type="button" runat="server" id="Button2" onserverclick="Button2_ServerClick">Manage Teachers </button>
                    </div>
                    <div class="col-lg-4  col-lg-4 col-lg-4">
                       
                        <button type="button" runat="server" id="Button3" onserverclick="Button3_ServerClick">Manage Students</button>
                    </div>
                </div>
            </div>
    
       
        
   

   </div>
         </div> 
    </form>
</body>
</html>
