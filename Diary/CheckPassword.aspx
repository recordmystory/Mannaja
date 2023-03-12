<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CheckPassword.aspx.cs" Inherits="projectAll.Album.CheckPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style231 {
            color: #3333FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>비밀번호 확인</h2>
    글 비밀번호: 
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <strong>
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="auto-style231"></asp:Label>
    </strong>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Width="80px" />
&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/목록.png" PostBackUrl="~/Diary/List.aspx" Width="80px" />
    <br />
    <br />
    <br />
</asp:Content>
