<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddPhoto.aspx.cs" Inherits="projectAll.Album.AddPhoto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 578px;
    }
    .auto-style2 {
            width: 118px;
            text-align: center;
            color: #000000;
            background-color : #E8F4FF;
        }
    .auto-style3 {
        color: #9900FF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>다이어리 추가하기</h2>
<table class="auto-style1">
    <tr>
        <td class="auto-style2">제목</td>
        <td style="background-color: #B8DEFF" >
            <asp:TextBox ID="TextBox1" runat="server" Width="90%"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="다이어리 제목을 입력하세요." ForeColor="Red">*</asp:RequiredFieldValidator>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style2">내용</td>
        <td style="background-color: #B8DEFF" >
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="90%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">작성자</td>
        <td style="background-color: #B8DEFF" >
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">비밀번호</td>
        <td style="background-color: #B8DEFF" >
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">이미지</td>
        <td style="background-color: #B8DEFF" >
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
</table>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Images/올리기.png" OnClick="ImageButton8_Click" Width="140px" />
    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Images/보기.png" OnClick="ImageButton9_Click" PostBackUrl="~/Diary/List.aspx" Width="140px" />
&nbsp;<br />
<br />
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
</strong>
<br />
    <br />
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
<br />
<br />
<br />
<br />
</asp:Content>
