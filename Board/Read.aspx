<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Read.aspx.cs" Inherits="Project001.Board.Read" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h3>커뮤니티 - 글읽기</h3>
    <table>
        <tr>
            <td style="background-color: #E8F4FF" >
                작성자</td>
            <td style="width: 430px; background-color: #B8DEFF;">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF">
                작성일자</td>
            <td style="width: 430px; background-color: #B8DEFF;">
                <asp:Label ID="Label2" runat="server"></asp:Label>
           </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF">
                제목</td>
            <td style="width: 430px; background-color: #B8DEFF;">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF" >
                내용</td>
            <td style="width: 430px; background-color: #B8DEFF;" >
                <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" 
                    Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF" >
                첨부파일</td>
            <td style="width: 430px; background-color: #B8DEFF;" > 
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1"></asp:LinkButton>
&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF"></td>
            <td style="width: 430px; background-color: #B8DEFF;">&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/btn_edit.PNG" onclick="ImageButton1_Click" Height="35px" Width="80px" /> &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="35px" ImageUrl="~/images/btn_reply.PNG" Width="80px" />
&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="35px" ImageUrl="~/images/btn_delete.png" Width="80px" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                    ImageUrl="~/images/btn_list.PNG" PostBackUrl="~/Board/List.aspx" Height="35px" Width="80px" />
           </td>
        </tr>
        </table>
        <br />
    <br />
</div>
</asp:Content>
