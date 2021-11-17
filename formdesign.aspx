<%@ Page Language="C#" AutoEventWireup="true" CodeFile="formdesign.aspx.cs" Inherits="formdesign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 127px;
        }
        .style5
        {
            width: 127px;
        }
        .style6
        {
            width: 127px;
            height: 26px;
        }
        .style7
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="744px">
            <table style="width:100%;">
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblhead" runat="server" Font-Bold="True" Font-Size="14pt" 
                            style="font-weight: 700" Text="Doctors appointment form"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtname" 
                            ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtage" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lbldob" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                            BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                            Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lblbloodgrp" runat="server" Text="Blood Group"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddplistbg" runat="server" AutoPostBack="True">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>O</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="name0" runat="server" 
                            ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="lblmobnum" runat="server" Text="Mobile Number"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="txtmobnum" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="name1" runat="server" 
                            ControlToValidate="txtmobnum" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="name2" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Enter Email in proper format" 
                            ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lbldoapp" runat="server" Text="Date of Appointment"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                            BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                            Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btninsert" runat="server" onclick="btninsert_Click" 
                            Text="Insert" />
                        &nbsp;<asp:Button ID="btnshowrecord" runat="server" onclick="btnshowrecord_Click" 
                            Text="Show Record" />
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="grddata" runat="server" AutoGenerateSelectButton="True">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;</asp:Panel>
    
    </div>
    </form>
</body>
</html>
