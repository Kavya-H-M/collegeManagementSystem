<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addteacher.aspx.cs" Inherits="collegeManagementSystem.addteacher" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a Teacher</title>
     <link rel="icon" href="imgs\college-graduation.png" />
       <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com"crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Open+Sans:wght@300&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .headingtxt{
            height:50px; 
                margin:auto ;
                background-color:#DBDFFD;
                padding: 10px 0px 10px 0px;
                text-align:center;
                color:rgba(58, 58, 58, 0.90);
               font-family: 'Open Sans', sans-serif;
                font-size:30px;
                 }
     .form{
            
            
            background-color:#F9F9F9;
           font-family: 'Open Sans', sans-serif;
            font-size: 15px; 
          
            text-transform:capitalize;
            
        }
        .registering{
            text-align:center;
            padding-left:20px;
            margin-top: 20px;
            
        }
                input[type=text]{
            height: 50px;            
           margin-right: 70px;
            width: 100%;
           padding: 0 30px 0 0 ;
           margin-bottom:10px;
           margin-top: 10px;
           border:2px solid #646FD4;
           border-radius:4px;
           
           color:black;
        }
                input[type=text]:hover{border-color:#646FD4;}
                
                .other{
                    display:flex;
                    flex-direction:column;
                    margin-top:50px;
                }
        select {
            height: 50px;
            width: 100%;
            border:2px solid #646FD4;
            border-radius:4px;
        }
  input[type=submit],
        input[type=reset] {
            border-radius: 5px 5px;
            color: whitesmoke;
            width: 35%;
            margin: 30px 25px 0 0 ; 
            background-color:#646FD4;
             font-family: 'Open Sans', sans-serif;
            font-size:17px;
            position:center;
            height:50px;
                    }
        a{
            float:right;
            font-family: 'Open Sans', sans-serif;
            font-size:10px;
            padding-top:0px;
        }
        input[type=submit]:hover{
            background-color: #646FD4;
           
            color: white;
}
        input[type=reset]:hover {
            background-color: #646FD4;
           
            color: white;
        }
          td{
              margin-right:25px;
             
               font-family: 'Open Sans', sans-serif;
             font-size: 16px;
          }
          option{
              background-color:#646FD4;
              color:whitesmoke;
          }
          img{
            border-radius:50%;
            padding-bottom: 10px;
        }

 input:focus { 
    outline: none !important;
    border-color: none;
 
}
 textarea:focus { 
    outline: none !important;
    border-color: #719ECE;
  
}    </style>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
</head>
<body style="margin:0; height: 100vh;">
    <form id="form1" runat="server">
    <div>
        <div class="headingtxt">ADD A TEACHER
            <a href="homepage.aspx" style="float:right; font-family:Arial; font-size:20px; padding-top:10px; padding-right:10px;">LogOut</a>
        </div>
        <div class="form">
           
                 
            <div class="registering" style="height:84vh;">
                <table style="width:75%; height:80%;">
                    <tr>
               <td>Id</td>
                         <td><input type ="text" runat="server" id="tid" /></td>
                        </tr>
                    <tr>
    <td>NAME</td><td><input type ="text" runat="server" id="tname" /></td>
                        </tr>
                    <tr>
   <td>EMAIL</td>
                        <td><input type ="text" runat="server" id="temail" /></td>
                        </tr>
                    <tr>
    <td>PASSWORD</td>
                    <td><input type ="text" runat="server" id="tpswd" /></td>
                        </tr>
                    <tr>
        <td>DEPARTMENT</td>
                        <td><select name="department" runat="server" id="tdepartment" style="color:black;">
            <option value="Select Option">Select Option</option>
             <option value="Computer Science & Engineering">Computer Science & Engineering</option>
            <option value="Information Science & Engineering">Information Science & Engineering</option>
            <option value="Civil Engineering">Civil Engineering</option>
            <option value="Mechanical Engineering">Mechanical Engineering</option>
            <option value="Electronics & Electrical Engineering">Electronics & Electrical Engineering</option>
            <option value="Electronics & Communication Engineering">Electronics & Communication Engineering</option>
        </select></td>
                        </tr>
                    <tr>
     <td>SEMESTER</td>
                          <td><input type ="text" runat="server" id="tsem" placeholder="1-8" /></td>
       </tr>
                    <tr>
        <td>GENDER</td>
                        <td><select name="gender" runat="server" id="tgnd" style="color:black;">
            <option value="Select Option">Select Option</option>
             <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Others">Others</option>
        </select></td>
                        </tr>
                    </table>
         <input type ="reset" runat="server"/>
        <input type ="submit" runat="server" onserverclick="Unnamed_ServerClick1" /><br />
         </div>
                     </div>
               
                
    </div>
    </form>
</body>
</html>

