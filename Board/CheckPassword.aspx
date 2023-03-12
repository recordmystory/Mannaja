<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CheckPassword.aspx.cs" Inherits="Project001.Board.CheckPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h2>비밀번호 확인</h2>
        글 비밀번호 : <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <strong>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
    </strong>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="35px" Width="80px" />
&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/btn_list.PNG" PostBackUrl="~/Board/List.aspx" Height="35px" Width="80px" />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>
