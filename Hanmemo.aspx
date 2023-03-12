<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hanmemo.aspx.cs" Inherits="proj03.NoteList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            color: #CC33FF;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
            width: 438px;
        }
        .auto-style6 {
            height: 24px;
            width: 236px;
        }
        .auto-style7 {
            height: 24px;
            width: 61px;
        }
        .auto-style8 {
            height: 24px;
            width: 239px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ImageButton ID="ImageButton4" runat="server" Height="70px" ImageUrl="~/Images/내정보.png" PostBackUrl="~/MemberOnly/Mypage.aspx" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="70px" ImageUrl="~/Images/메모장.png" PostBackUrl="~/Hanmemo.aspx" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="70px" ImageUrl="~/Images/다이어리.png" PostBackUrl="~/Diary/List.aspx" />
        <hr />
    <h2>&nbsp;한 줄 메모장</h2>
    <br />
    이름: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;&nbsp;<strong><asp:Label ID="Label3" runat="server" CssClass="auto-style10"></asp:Label>
    </strong>
    <br />
    내용:
    <asp:TextBox ID="TextBox3" runat="server" Width="449px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/위아래1.png" OnClick="ImageButton1_Click" Width="30px" Height="29px" />
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/저장_밑.png" OnClick="ImageButton2_Click" Width="80px" Height="30px" />
    <br />
    <hr />
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="nID" DataSourceID="SqlDataSource2" OnDeleteCommand="DataList1_DeleteCommand" OnItemDataBound="DataList1_ItemDataBound" Width="1112px" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <FooterTemplate>
            한 줄 메모로 보기 쉽고 편리하게!
        </FooterTemplate>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            한 줄 메모장<br />
            <br />
            </span>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">번호</td>
                    <td class="auto-style6">글쓴이</td>
                    <td class="auto-style8">날짜</td>
                    <td class="auto-style4">메모</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("nID") %>'></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        (<asp:Label ID="Label1" runat="server" Text='<%# Eval("userID") %>'></asp:Label>
                        )</td>
                    <td class="auto-style8">
                        <asp:Label ID="nDateLabel" runat="server" Text='<%# Eval("nDate", "{0:yyyy-MM-dd HH:mm}") %>' />
                    </td>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="contentLabel" runat="server" Text='<%# GetContent(Eval("content")) %>' />
                        </strong></td>
                    <td class="auto-style3"><strong>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("nID") %>' CommandName="Delete" OnClick="LinkButton1_Click">삭제</asp:LinkButton>
                        </strong></td>
                </tr>
            </table>
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT [nID], [name], [userID], [content], [nDate] FROM [MMemo] ORDER BY [nID] DESC"></asp:SqlDataSource>
    <br />
    <br />
    <strong>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </strong>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
