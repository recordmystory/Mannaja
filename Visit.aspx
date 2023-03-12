<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Visit.aspx.cs" Inherits="Project001.Visit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            width: 149px;
        }
        .auto-style3 {
            font-size: 16px;
        }
        .auto-style4 {
            font-size: 15px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style7 {
            height: 45px;
        }
        .auto-style8 {
            width: 886px;
        }
        .auto-style13 {
            width: 183px;
        }
        .auto-style14 {
            width: 626px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>리뷰 남기기 </h2>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="1">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="5">
                        <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl='<%# "~/Album/"+Eval("fName") %>' Width="130px" />
                    </td>
                    <td><strong>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("sname") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("smenu") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="16px" ImageUrl="~/Album/place.png" Width="16px" />
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text='<%# Eval("splace") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style3">★ </span>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text='<%# Eval("star") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style4" NavigateUrl="~/StoreList.aspx">맛집 목록으로 돌아가기</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT * FROM [gstore] WHERE ([seq] = @seq)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="seq" QueryStringField="sn" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Images/쓰기.png" OnClick="ImageButton1_Click" />
&nbsp;<asp:DataList ID="DataList2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" OnDeleteCommand="DataList2_DeleteCommand" OnItemDataBound="DataList2_ItemDataBound">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/Album/like.png" Width="20px" />
                        <strong>&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("vtitle") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style13">글쓴이</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("vname") %>'></asp:Label>
                        (<asp:Label ID="Label11" runat="server" Text='<%# Eval("vid") %>'></asp:Label>
                        )</td>
                </tr>
                <tr>
                    <td class="auto-style13">작성 날짜</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("vdate") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">방문 후기</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("vbody") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">별점</td>
                    <td class="auto-style14">★
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("vstar") %>'></asp:Label>
                        &nbsp; </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("seq") %>' CommandName="Delete">삭제</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [visit] WHERE ([ref_id] = @ref_id) ORDER BY [vdate] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="ref_id" QueryStringField="sn" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
