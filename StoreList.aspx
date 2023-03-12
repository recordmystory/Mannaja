<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StoreList.aspx.cs" Inherits="Project001.StoreList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 617px;
        }
        .auto-style5 {
            width: 162px;
        }
        .newStyle1 {
            font-family: "DX영화자막 M";
        }
        .auto-style7 {
            font-family: "DX영화자막 M";
            font-size: 25px;
        }
        .auto-style8 {
            margin-right: 20px;
        }
        .auto-style9 {
            font-size: 27px;
        }
        .auto-style10 {
            font-size: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>맛집 리스트</h2>
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" CssClass="auto-style8" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="674px">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <span class="auto-style7"><strong>여기는 어때?</strong></span>
            </HeaderTemplate>
            <ItemStyle BackColor="#EFF3FB" />
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style5" rowspan="4">
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# "~/Album/"+Eval("fName") %>' Width="150px" />
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style9" NavigateUrl='<%# GoList(Eval("seq")) %>' Text='<%# Eval("sname") %>'></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("smenu") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="16px" ImageUrl="~/Album/place.png" Width="16px" />
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text='<%# Eval("splace") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="auto-style10">★</span>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("star") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT * FROM [gstore] ORDER BY [seq]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
