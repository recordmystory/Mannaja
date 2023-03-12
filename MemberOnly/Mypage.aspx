<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mypage.aspx.cs" Inherits="Final.Mypage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: left;
    }
    .auto-style2 {
        width: 53%;
    }
    .auto-style3 {
        height: 24px;
    }
        .auto-style8 {
            height: 24px;
            width: 108px;
            color: #000000;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> <br />
        <li>
        <asp:ImageButton ID="ImageButton4" runat="server" Height="70px" ImageUrl="~/Images/내정보.png" PostBackUrl="~/MemberOnly/Mypage.aspx" />
        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/Images/메모장.png" PostBackUrl="~/Hanmemo.aspx" />
        &nbsp;<li>&nbsp;</li><asp:ImageButton ID="ImageButton3" runat="server" Height="70px" ImageUrl="~/Images/다이어리.png" PostBackUrl="~/Diary/List.aspx" />
        <li>&nbsp;</li>
        <hr />
    </div>

    <div>
        <h2 class="auto-style5">마이페이지</h2>
        <p class="auto-style5">&nbsp;</p> </div>
<asp:Image ID="Image1" runat="server" Height="139px" ImageUrl="~/Album/loopy.PNG" Width="124px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton5" runat="server" Height="39px" ImageUrl="~/Images/정보수정.png" OnClick="ImageButton5_Click" PostBackUrl="~/MemberOnly/InfoChange.aspx" Width="103px" />
<br />
<br />
<br />
<table align="left" class="auto-style2" style="background-color: #FFFFFF">
    <tr>
        <td class="auto-style8" style="background-color: #E8F4FF">이름</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style8" style="background-color: #E8F4FF">전화번호</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style8" style="background-color: #E8F4FF">주소</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style8" style="background-color: #E8F4FF">계좌번호</td>
        <td class="auto-style3"><strong>
            <asp:Label ID="Label4" runat="server"></asp:Label>
            </strong></td>
    </tr>
</table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
</asp:Content>
