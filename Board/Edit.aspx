<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Project001.Board.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        color: #000000;
    }
    .auto-style3 {
        color: #000000;
        background-color: #E8F4FF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h3>커뮤니티 - 글수정</h3>
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
            <td class="auto-style3" >
                첨부 파일</td>
            <td style="width: 430px; background-color: #B8DEFF;" > 
                <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">[파일 삭제]</asp:LinkButton>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF" class="auto-style2" >
                파일 수정</td>
            <td style="width: 430px; background-color: #B8DEFF;" > 
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="background-color: #E8F4FF"></td>
            <td style="width: 430px; background-color: #B8DEFF;">&nbsp; <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/btn_edit.PNG" onclick="ImageButton1_Click" Height="35px" Width="80px" /> &nbsp; 
                <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
                    ImageUrl="~/images/btn_list.PNG" PostBackUrl="~/Board/List.aspx" Height="35px" Width="80px" />
                </td>
        </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    <br />
</div>
</asp:Content>
