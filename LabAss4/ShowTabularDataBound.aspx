<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTabularDataBound.aspx.cs" Inherits="LabAss4.ShowTabularDataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>GridView</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                </asp:GridView>
            </p>
        </div>
        <div>
            <h1>DataList</h1>
            <p>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Username" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        Username:
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        <br />
                        Password:
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </p>
        </div>
        <div>
            <h1>DetailsView</h1>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Username" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Fields>
                </asp:DetailsView>
            </p>
        </div>
        <div>
            <h1>FormView</h1>
            <p>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="Username" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        Username:
                        <asp:Label ID="UsernameLabel1" runat="server" Text='<%# Eval("Username") %>' />
                        <br />
                        Password:
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Username:
                        <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                        <br />
                        Password:
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Username:
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        <br />
                        Password:
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </p>
        </div>
        <div>
            <h1>Repeater</h1>
            <p>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <%#Eval("Username") %>
                            <i>-->y</i>
                         <%#Eval("Password") %>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </div>
        <div>
            <h1>ListView</h1>
            <p>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                  <ItemTemplate>
                        <%#Eval("Username") %>
                            <i>--></i>
                         <%#Eval("Password") %>
                    </ItemTemplate>
                </asp:ListView>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SimpleDatabaseConnectionString %>" SelectCommand="SELECT [Username], [Password] FROM [Logon]"></asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
