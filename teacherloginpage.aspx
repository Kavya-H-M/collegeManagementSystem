<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherloginpage.aspx.cs" Inherits="collegeManagementSystem.teacherloginpage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Login</title>
    <link rel="icon" href="imgs\college-graduation.png" />
       <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com"crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Open+Sans:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
       .headtxt{
            height:40px; 
                margin:auto ;
                background-color:#F77E21;
                padding: 10px 0px 10px 0px;
                text-align:center;
                color:#FEF9A7;
                font-family: 'Open Sans', sans-serif;
                font-size:30px;
        }
        .login{
            height: 91.5vh;
            font-family: 'Open Sans', sans-serif;
              background-image:url('https://img.freepik.com/free-photo/high-angle-education-day-concept_23-2148779758.jpg?t=st=1655483434~exp=1655484034~hmac=4855f66ee3075f98112391d13a149e1281d76d181894f853bb9d5469d5c3c23c&w=1060');
             background-repeat:no-repeat;
            background-size: cover;
            
            margin:auto;
            font-family: 'Open Sans', sans-serif;
            font-size: 15px ;
            display: flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
        }
        .boxes{
            display: flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
        }
 input[type=text]{
            border-style:solid;
            border-color:#646FD4;
            height: 30px;            
           margin-right: 70px;
            width: 100%;
           padding: 0 30px 0 0 ;
           margin-bottom:10px;
           margin-top: 10px;
           font-family: 'Open Sans', sans-serif;
        }
 input:focus { 
    outline: none !important;
    border-color: none;
 
}
 textarea:focus { 
    outline: none !important;
    border-color: #719ECE;
  
}
         input[type=submit] {
            border-radius: 5px 5px;
            color: #FEF9A7;
            text-align:center;
            border-style:none;
            width: 200px;
            margin-top: 15px;
            margin-bottom: 15px;
            padding:20px 40px;
            
            font-size:15px;
            position:center;
            background-color:#646FD4;
        }
         input[type=password]{
               border-style:solid;
            border-color:#646FD4;
            height: 30px;            
           margin-right: 70px;
            width: 100%;
           padding: 0 30px 0 0 ;
           margin-bottom:10px;
           margin-top: 10px;
        
         }
         input[type=submit]:hover{
    background-color:#9BA3EB;
  
   
}
         td{
            
            font-family: 'Open Sans', sans-serif;
            font-weight:bolder;
         }
    </style>
</head>
<body style="margin:0; height: 100vh;">
    <form id="form1" runat="server">
    <div>
        <div class="headtxt">TEACHER LOGIN</div>
        <div class="login">
            <div class="boxes">
                <table>
                    <tr>
     <td>EMAIL</td>
                        <td><input type="text" id="temail" runat="server" /></td>
                        </tr>
                    <tr>
        <td>PASSWORD</td>
                        <td><input type="password" id="tpswd" runat="server" /></td>
                    </tr>
                    </table>
        <input type="submit" runat="server" onserverclick="Unnamed_ServerClick" />
  </div>
                 </div>
             </div>
    </form>
</body>
</html>

