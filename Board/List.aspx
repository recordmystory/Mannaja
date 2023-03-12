<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Project001.Board.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>답변형 게시판/자료실</h3><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="seq" DataSourceID="SqlDataSource1" CellPadding="4" GridLines="None" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="seq" HeaderText="번호" InsertVisible="False" ReadOnly="True" SortExpression="seq">
            <HeaderStyle Width="60px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="제목" SortExpression="title">
                <ItemTemplate>
                   <%# ShowDepth((int)Eval("depth")) %>
                    <%# ShowReplyIcon((int)Eval("inner_id")) %>
                    <%# ShowTitle( Eval("seq").ToString( ),
                                    Eval("title").ToString( ),
                                    Eval("deleted").ToString( )) %>
                </ItemTemplate>
                <HeaderStyle Width="330px" />
            </asp:TemplateField>
            <asp:BoundField DataField="name" HeaderText="이름" SortExpression="name">
            <HeaderStyle Width="70px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="wDate" DataFormatString="{0:yyyy-MM-dd}" HeaderText="날짜" SortExpression="wDate">
            <HeaderStyle Width="90px" />
            </asp:BoundField>
            <asp:BoundField DataField="hit" HeaderText="조회" SortExpression="hit">
            <HeaderStyle Width="50px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" SelectCommand="SELECT [seq], [title], [name], [wDate], [hit], [ref_id], [inner_id], [depth], [deleted] FROM [board01] ORDER BY [ref_id] DESC, [inner_id]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <br />
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/images/btn_write.PNG" Width="80px" PostBackUrl="~/Board/Write.aspx" />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
