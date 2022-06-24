<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="collegeManagementSystem.homepage" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <title>Education</title>
    <link rel="icon" href="imgs\college-graduation.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com"crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Open+Sans:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .navbar{
          
                margin-bottom:20px;
                background-color:#DBDFFD;
                padding: 13px 0px 10px 0px;
                justify-content:flex-end;
                  }
        body{
            background-image: url('https://img.freepik.com/free-photo/online-education-3d-rendering-premium-photo_466968-123.jpg?w=1060');
            background-repeat:no-repeat;
            background-size: cover;
        }
        .welcome {
            font-family:'Montserrat';
            font-weight:lighter;
            text-align:center;
        }
        .ini{
            
            height: 300px;
            width: 350px;
            position:center;
        }
        button{
            padding:10px;
            border-radius:6px 6px;
            background-color: #646FD4;
            width:35%;
            display:block;
            margin:20px 50px;
        }
        button:hover{
            background-color: #9BA3EB;
        }
    </style>
</head>
<body style="margin:0; height: 100vh;">
 
      <div class="welcome">
           <h1>College Management System</h1>
  
    </div>
   
    <div style="margin:0;width:100%; height:100%;">
         <form id="form1" runat="server">
  
                 
            <button style="font-size:20px;  margin-right:15px; " type="button" runat="server" id="Admin" onserverclick="Admin_ServerClick">Admin</button>
             <button style="font-size:20px;   margin-right:15px; " type="button" runat="server" id="Teacher" onserverclick="Teacher_ServerClick">Teacher</button>
          
        
    </form>
    </div>
</body>
</html>


