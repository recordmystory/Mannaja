<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 457px;
        }
        .auto-style3 {
            height: 24px;
            }
        .auto-style4 {
            width: 190px;
            text-align: center;
        }
        .auto-style5 {
            height: 24px;
            width: 190px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style8 {
            color: #000099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
     <h2>로그인</h2>
    <table class="auto-style2" align="center">
        <tr>
            <td class="auto-style6">아이디</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td rowspan="3">
                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Images/로그인b.png" OnClick="ImageButton8_Click" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">비밀번호</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="로그인 상태 유지" OnCheckedChanged="CheckBox1_CheckedChanged" />
            </td>
        </tr>
    </table>
     <div class="auto-style6">
    <br />
         <strong>
         <br />
    <asp:Label ID="Label2" runat="server" CssClass="auto-style8"></asp:Label>
         </strong>
    <br />
    <br />
    <br />
    <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
    <br />
    <br />
     </div>
</div>
</asp:Content>
