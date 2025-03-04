<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CookiesWebsite2.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookies</title>

    <%--    <script>
    
        function populateDropdown() {
            fetch('https://restcountries.com/v3.1/all')
                .then(response => response.json())
                .then(data => {
                    // Sort countries alphabetically
                    data.sort((a, b) => {
                        const countryA = a.name.common.toUpperCase();
                        const countryB = b.name.common.toUpperCase();
                        if (countryA < countryB) return -1;
                        if (countryA > countryB) return 1;
                        return 0;
                    });

                    const countryDropdown = document.getElementById('CountryID');
                    data.forEach(country => {
                        console.log('country: ', country);
                        const option = document.createElement('option');
                        option.text = country.name.common;
                        option.value = country.name.common;
                        console.log('country: ', country.name.common);
                        countryDropdown.appendChild(option);
                    });
                })
                .catch(error => console.error('Error fetching data:', error));
        }

        window.onload = populateDropdown;
    </script>--%>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Pacifico&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="./custom.css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class=" mt-5">
            <div class="container jumbotron  semi-transparent d-flex align-items-center justify-content-center flex-column form-div " style="width: 35%">

                <div class=" text-white">
                    <h2 class="text-center fs-1 header-font-edit">Please Sign-Up</h2>
                </div>
                <div class="form-group" style="width: 80%">
                    <label class=" font-edit " for="usernameLabel">User name :</label>


                    <div class="input-group ">
                       
                        <asp:TextBox ID="Textbox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" ErrorMessage="User name is requird!!" ForeColor="Red" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textbox1" ErrorMessage="Should be 8 characters at least!!" ForeColor="Red" ValidationExpression="\w{5,}"></asp:RegularExpressionValidator>

                </div>
                <div class="form-group  " style="width: 80%">
                    <label class="font-edit" for="firstnameLabel">First Name :</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                        </div>
                        <asp:TextBox ID="Textbox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox3" ErrorMessage="First name is required!!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textbox3" ErrorMessage="Invalid First Name Format, must start with capital letter !" Font-Size="Medium" ForeColor="Red" ValidationExpression="([A-Z][a-z]\s[A-Z][a-z])|([A-Z][a-z]*)"></asp:RegularExpressionValidator>


                </div>
                <div class="form-group" style="width: 80%">
                    <label class="font-edit" for="LastnameLabel">Last Name :</label>
                    <div class="input-group ">
                        <div class="input-group-prepend">
                        </div>
                        <asp:TextBox ID="Textbox4" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textbox4" ErrorMessage="Last name is required!!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Textbox4" ErrorMessage="Invalid First Name Format, must start with capital letter !" Font-Size="Medium" ForeColor="Red" ValidationExpression="([A-Z][a-z]\s[A-Z][a-z])|([A-Z][a-z]*)"></asp:RegularExpressionValidator>



                </div>
                <div class="form-group" style="width: 80%">
                    <label class="font-edit" for="phonenumberLabel">Phone Number :</label>
                    <div class="input-group ">
                        <div class="input-group-prepend">
                        </div>
                        <asp:TextBox ID="Textbox6" runat="server" CssClass="form-control" TextMode="number"></asp:TextBox>
                    </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Textbox6" ErrorMessage="Invalid Phone Format !" Font-Size="Medium" ForeColor="Red" ValidationExpression="[0][1][0-2][0-9]{8}"></asp:RegularExpressionValidator>
                </div>

                <div class="form-group" style="width: 80%">
                    <label class="font-edit" for="emailLabel">Email Address :</label>
                    <div class="input-group ">
                        <div class="input-group-prepend">
                        </div>
                        <asp:TextBox ID="Textbox5" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textbox5" ErrorMessage="Email is required!!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Textbox5" ErrorMessage="Invalid Email Format !" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </div>


                <div class="form-group" style="width: 80%">
                    <label class="font-edit" for="passLabel">Password :</label>
                    <div class="input-group ">
                        <div class="input-group-prepend">
                        </div>
                        <asp:TextBox ID="Textbox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textbox2" ErrorMessage="Password is required!!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Textbox2" ErrorMessage="Should be between 8 and 12 characters at least" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w{5,12}"></asp:RegularExpressionValidator>

                </div>



                <div class="form-group" style="width: 80%">
                    <label class="font-edit" for="country Label">Country :</label>
                    <div class="input-group ">
                        <div class="input-group-prepend"></div>
                        <asp:DropDownList ID="CountryID" runat="server" AutoPostBack="True" Style="width: 100%" DataSourceID="SqlDataSource6" DataTextField="countryname" DataValueField="countryname">
                     <%--       <asp:ListItem>Saudi Arabia</asp:ListItem>
                            <asp:ListItem>Egypt</asp:ListItem>
                            <asp:ListItem>Syria</asp:ListItem>
                            <asp:ListItem>Palestine</asp:ListItem>
                            <asp:ListItem>United Arab Emirates</asp:ListItem>
                            <asp:ListItem>Sudan</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>America</asp:ListItem>
                            <asp:ListItem>Philipines</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Korea</asp:ListItem>--%>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [countryname] FROM [Country] ORDER BY [countryname]"></asp:SqlDataSource>
                    </div>

                </div>
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-outline-secondary btn-lg" OnClick="Button1_Click1" Width="200px" />

                <div>
                    <asp:Label ID="Label1" runat="server" class=" text-white" Text="Already have an account?"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" class=" text-secondary" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>

                </div>


                <asp:Label ID="msgwelcome" runat="server" class=" mt-4 text-center" ForeColor="#CC0099" Font-Bold="True" Font-Size="20px"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
