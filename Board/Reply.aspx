<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reply.aspx.cs" Inherits="Project001.Board.Reply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        color: #000000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h3>커뮤니티 - 답변쓰기</h3>
    <table>
        <tr>
            <td style="background-color: #E8F4FF" >
                작성자</td>
            <td style="width: 430px; background-color: #B8DEFF;">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="작성자를 입력하세요." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF">
                글 비밀번호</td>
            <td style="width: 430px; background-color: #B8DEFF;">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px"></asp:TextBox> 
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                     ErrorMessage="글 비밀번호를 입력하세요." ForeColor="Red">*</asp:RequiredFieldValidator>
           </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF">
                제목</td>
            <td style="width: 430px; background-color: #B8DEFF;">
                <asp:TextBox ID="TextBox3" runat="server" Width="90%"></asp:TextBox> 
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                     ErrorMessage="제목을 입력하세요." ForeColor="Red">*</asp:RequiredFieldValidator>
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
            <td style="background-color: #E8F4FF" class="auto-style2" >
                파일 첨부</td>
            <td style="width: 430px; background-color: #B8DEFF;" > 
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF"></td>
            <td style="width: 430px; background-color: #B8DEFF;">&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/btn_reply.PNG" onclick="ImageButton1_Click" Height="35px" Width="80px" /> &nbsp; 
                <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                    ImageUrl="~/images/btn_list.PNG" PostBackUrl="~/Board/List.aspx" Height="35px" Width="80px" />
           </td>
        </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    <br />
</div>
</asp:Content>
