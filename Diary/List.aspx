<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="projectAll.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ImageButton ID="ImageButton4" runat="server" Height="70px" ImageUrl="~/Images/내정보.png" PostBackUrl="~/MemberOnly/Mypage.aspx" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/Images/메모장.png" PostBackUrl="~/Hanmemo.aspx" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="70px" ImageUrl="~/Images/다이어리.png" PostBackUrl="~/Diary/List.aspx" />
        <hr />
    <h2>&nbsp;다이어리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/쓰기.png" PostBackUrl="~/Diary/AddPhoto.aspx" Height="40px" Width="80px" />
    </h2>
    <div class="auto-style1">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="imgID" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="827px" CellPadding="4" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
            </div class="auto-style2">
        
            <div class="auto-style2">
                <a href='Show.aspx?imgID=<%# Eval("imgID") %>'>
                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# "~/Photos/" + Eval("fName") %>' Width="150px" />
                </a>
                <br />
                <asp:Image ID="Image2" runat="server" Height="22px" ImageUrl="~/Images/연필.png" Width="22px" />
                &nbsp;<strong><asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                </strong>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                <br />
                [<asp:Label ID="Label3" runat="server" Text='<%# Eval("pDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                ]
            </div>
            </div>
        
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT [imgID], [userID], [name], [title], [fName], [pDate] FROM [DDiary] ORDER BY [imgID] DESC"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
