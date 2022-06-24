<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managestud.aspx.cs" Inherits="collegeManagementSystem.managestud" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Student Records</title>
 
         <link rel="icon"  href="imgs\college-graduation.png" />
       <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
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
        .tablecont{
            background-color:rgba(58, 58, 58, 0.90);
            margin:auto;
            height: 92vh;
            display:flex;
            align-items:center;
            justify-content:center;
        }
        #GridView1{
            border:1px solid grey;
            box-shadow:-1px -1px 8px gray;
            border-radius:4px 4px;
        }
        .studcont{
            background-color:#F9F9F9;
            margin:auto;
            height: 92vh;
            display:flex;
            align-items:center;
            justify-content:center;
        }
        .del{
            border-style:none;
            color:#9ad759;
        }
    </style>
</head>
<body style="margin:0; height: 100vh;">
    <form id="form1" runat="server">  
    <div>
        
        <div class="headtxt">
           MANAGE STUDENTS HERE
            <a href="homepage.aspx" style="float:right; font-family:Arial; font-size:20px; padding-top:10px; padding-right:10px;">LogOut</a>
        </div>
        <div class="studcont">

        
        <asp:GridView ID="GridView1" runat="server" style="text-align:center; margin-bottom:auto; background-color: floralwhite; " OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                
                <asp:TemplateField>
                <ItemTemplate>
                <asp:LinkButton runat="server" CommandName="Delete" ID="del" Text="Delete" >Delete</asp:LinkButton>
                     
                    
                    </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
    </div>
    </form>
</body>
</html>

