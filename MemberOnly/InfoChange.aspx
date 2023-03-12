<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InfoChange.aspx.cs" Inherits="Final.Modify11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
           .auto-style1 {
               width: 100%;
         
           }
           .auto-style3 {
               width: 211px;
               color: #000000;
               background-color : #B8DEFF;
           }
           .auto-style4 {
               color: #000000;
           }
           .auto-style5 {
               width: 211px;
               color: #000000;
               height: 24px;
               background-color : #B8DEFF;
           }
           .auto-style6 {
               height: 24px;
           }
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    <h2>정보 변경</h2>
         &nbsp;<table class="auto-style1">
             <tr>
                 <td class="auto-style5">아이디</td>
                 <td class="auto-style6"><strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4"></asp:Label>
    </strong></td>
             </tr>
             <tr>
                 <td class="auto-style3">비밀번호</td>
                 <td>
<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
Display="None" ErrorMessage="[비밀번호] 필수입력"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">비밀번호 확인</td>
                 <td>
<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
Display="None" ErrorMessage="[비밀번호 확인] 필수입력"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
ControlToValidate="TextBox3" Display="None" ErrorMessage="비밀번호가 일치하지 않습니다">
</asp:CompareValidator></td>
             </tr>
             <tr>
                 <td class="auto-style3">이름</td>
                 <td>
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
Display="None" ErrorMessage="[이름] 필수입력"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">전화번호</td>
                 <td>
<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">주소</td>
                 <td>
<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">계좌번호</td>
                 <td>
<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <br />
&nbsp;<br />
         <asp:ImageButton ID="ImageButton8" runat="server" Height="35px" ImageUrl="~/Images/등록.png" OnClick="ImageButton8_Click" Width="80px" />
    <br />
    <br />
<asp:Label ID="Label2" runat="server" style="font-weight: 700; " CssClass="auto-style4"></asp:Label><br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server"
DisplayMode="List" ShowMessageBox="True"
ShowSummary="False" />
<br />
       </div>
</asp:Content>
