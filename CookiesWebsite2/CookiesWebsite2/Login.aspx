<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CookiesWebsite2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cooki</title>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Pacifico&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./custom.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class=" login-form">
            <div class=" container mb-auto jumbotron boxshadow semi-transparent d-flex align-items-center justify-content-center flex-column form-div " style="width: 35%">

                <div class="card-header-pills  text-white  ">
                    <h2 class="text-center fs-1 header-font-edit">Please Login to see the magic</h2>
                </div>
                <div class="form-group" style="width: 80%">
                    <label class=" font-edit " for="usernameLabel">User name :</label>


                    <div class="input-group ">
                        <div class="input-group-prepend">
                        </div>
                        <asp:TextBox ID="usernameLoginTextbox" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>



                <div class="form-group" style="width: 80%">
                    <label class="font-edit" for="passLabel">Password :</label>
                    <div class="input-group ">
                        <div class="input-group-prepend">
                        </div>
                        <asp:TextBox ID="passwordLoginTextbox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn btn-outline-secondary btn-lg" OnClick="LoginButton_Click1" Width="200px" />
                <br />

                <div>
                    <asp:Label ID="Label1" runat="server" class=" text-white" Text="Create new account:"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" class=" text-secondary" NavigateUrl="~/SignUp.aspx">SignUp</asp:HyperLink>

                </div>




                <br />
                <asp:Label ID="msgLogin" runat="server" class=" mt-4 text-center" ForeColor="Red" Font-Bold="True" Font-Size="20px"></asp:Label>
            </div>

        </div>




    </form>
</body>
</html>
