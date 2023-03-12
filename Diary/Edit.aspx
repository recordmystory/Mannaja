<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="projectAll.Album.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
    .auto-style111 {
        width: 578px;
    }
    .auto-style2 {
        width: 118px;
        text-align: center;
    }
    .auto-style3 {
        color: #9900FF;
    }
            .auto-style4 {
                width: 118px;
                text-align: center;
                color: #000000;
                background-color :#E8F4FF;
            }
            .auto-style5 {
                color: #000000;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>다이어리 수정하기</h2>
<table class="auto-style111">
    <tr>
        <td class="auto-style4">제목</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="90%"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="사진 제목을 입력하세요." ForeColor="Red">*</asp:RequiredFieldValidator>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style4">내용</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="90%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">작성자</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">이미지</td>
        <td>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style5"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Image ID="Image1" runat="server" Width="100%" />
        </td>
        <td>
            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Images/btn_edit.png" OnClick="ImageButton8_Click" Width="70px" />
            <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Images/btn_return.png" OnClick="ImageButton9_Click" Width="70px" />
&nbsp;<strong><br />
            <br />
<asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
</strong>
        </td>
    </tr>
</table>
    <br />
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
<br />
<br />
<br />
<br />
</asp:Content>
