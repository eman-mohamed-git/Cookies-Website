<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CookiesWebsite2.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cookie&family=Indie+Flower&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="./userProfile.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="page-title text-center my-5 ">My Profile</h1>
    </div>
    <div class=" container shadow my-5 rounded pl-5 py-5">
        <form>
            <div class="row mb-3">
                <label for="fname" class=" col-sm-2  user-profile-sub-heading">First Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="fnametextbox" runat="server" class="form-control" Style="border-radius: 10px; padding: 25px; font-size: 20px" Enabled="False" Height="40px" Width="800px"></asp:TextBox>
                    &nbsp;
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fnametextbox" ErrorMessage="First name is required!!" Font-Size="Medium" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>


                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fnametextbox" ErrorMessage="First name is required!!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="fnametextbox" ErrorMessage="Invalid First Name Format !" Font-Size="Medium" ForeColor="Red" ValidationExpression="([A-Z][a-z]\s[A-Z][a-z])|([A-Z][a-z]*)"></asp:RegularExpressionValidator>--%>
            </div>
            <div class="row mb-3">
                <label for="lname" class="col-sm-2 user-profile-sub-heading">Last Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="lnametextbox" runat="server" class="form-control " Style="border-radius: 10px; padding: 25px; font-size: 20px" Enabled="False" Height="40px" Width="800px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lnametextbox" ErrorMessage="Last name is required!!" Font-Size="Medium" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lnametextbox" ErrorMessage="Last name is required!!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="lnametextbox" ErrorMessage="Invalid First Name Format !" Font-Size="Medium" ForeColor="Red" ValidationExpression="([A-Z][a-z]\s[A-Z][a-z])|([A-Z][a-z]*)"></asp:RegularExpressionValidator>--%>
            </div>
            <div class="row mb-3">
                <label for="email" class="col-sm-2  user-profile-sub-heading">Email address</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="emailtextbox" runat="server" class="form-control " Style="border-radius: 10px; padding: 25px; font-size: 20px" Enabled="False" Height="40px" Width="800px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailtextbox" ErrorMessage="Email is required!!" Font-Size="Medium" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailtextbox" ErrorMessage="Email is required!!" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="emailtextbox" ErrorMessage="Invalid Email Format !" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
            </div>
            <div class="row mb-3">
                <label for="phone" class="col-sm-2 user-profile-sub-heading">Phone</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="phonetextbox" runat="server" class="form-control " Style="border-radius: 10px; padding: 25px; font-size: 20px" Enabled="False" Height="40px" Width="800px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phonetextbox" ErrorMessage="Phone is required!!" Font-Size="Medium" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                <%--                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="phonetextbox" ErrorMessage="Invalid Phone Format !" Font-Size="Medium" ForeColor="Red" ValidationExpression="[0][1][0-2][0-9]{8}"></asp:RegularExpressionValidator>--%>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2  user-profile-sub-heading" for="country Label">Country</label>
                <div class="col-sm-10">
                    <div class="input-group ">
                        <div class="input-group-prepend"></div>
                        <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" Style="border-radius: 10px; padding-left: 20px" Height="40px" Width="800px" Enabled="False" DataSourceID="SqlDataSource6" DataTextField="countryname" DataValueField="countryname">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [countryname] FROM [Country] ORDER BY [countryname]"></asp:SqlDataSource>
                    </div>
                </div>

            </div>
            <div class=" centered-button d-flex justify-content-center align-items-center flex-column">
                <%-- <button type="submit" class="btn btn-outline-secondary btn-lg ">Edit</button>--%>
                <div>
                    <asp:Button ID="editButton" runat="server" Text="Edit" class="btn btn-outline-secondary btn-lg " OnClick="editButton_Click" Width="120px" Style="height: 40px" />

                    <asp:Button ID="saveButton" runat="server" Text="Save" class="btn btn-outline-secondary btn-lg " Visible="False" OnClick="saveButton_Click" Width="120px" />

                </div>
                <div>
                    <asp:Label ID="LabelErr" class="user-profile-sub-heading" runat="server"></asp:Label>

                </div>
                <br />
            </div>
        </form>
    </div>
</asp:Content>
