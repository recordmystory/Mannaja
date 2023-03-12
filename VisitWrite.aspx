<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VisitWrite.aspx.cs" Inherits="Project001.VisitWrite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 64%;
        }
        .auto-style2 {
            width: 167px;
            text-align: center;
        }
        .auto-style3 {
            width: 561px;
        }
        .auto-style4 {
            color: #666666;
            font-size: 15px;
        }
        .auto-style5 {
            width: 561px;
            background-color: #FFCCCC;
        }
        .auto-style6 {
            width: 167px;
            text-align: center;
            background-color: #CAE2F9;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> 리뷰 작성하기 </h2>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">작성자(<asp:Label ID="Label1" runat="server"></asp:Label>
                )</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">제목</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">내용</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" Rows="3" TextMode="MultiLine" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">별점</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server" Width="90%"></asp:TextBox>
                <br />
                <span class="auto-style4">예시) 3.9 </span></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/Images/쓰기.png" OnClick="ImageButton1_Click" />
&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" Height="35px" ImageUrl="~/Images/돌아가기.png" OnClick="ImageButton3_Click" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="35px" ImageUrl="~/Images/목록.png" PostBackUrl="~/StoreList.aspx" />
            </td>
        </tr>
    </table>

</asp:Content>
