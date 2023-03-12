<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CalenderEx.aspx.cs" Inherits="Project001.CalenderEx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 842px;
    }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 75px;
        }
        .auto-style4 {
            width: 75px;
            height: 24px;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            width: 856px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><strong>
        <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
    </strong>
    <br />
    <table class="auto-style6">
        <tr>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="404px" Width="405px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td style="vertical-align: top">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="399px" OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand" >
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style3">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/images/o.png" Width="25px" CommandArgument='<%# Eval("seq") %>' CommandName="Done"  />
                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/images/x.png" Width="25px" CommandArgument='<%# Eval("seq") %>' CommandName="Delete" />
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("sTime") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4"></td>
                                <td class="auto-style5">
                                    <asp:Label ID="Label3" runat="server" Text='<%# DoneCheck(Eval("ToDo"), Eval("hasDone")) %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                </asp:DataList>
                <br />
                새할일 :
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                시작시간 :
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Images/등록.png" OnClick="ImageButton8_Click" Width="80px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</div><br />
</asp:Content>
