<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin-Login.aspx.cs" Inherits="Patient_Tracking_System.Account.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .textbox {
            position: relative;
            border: 2px solid;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-radius: 10px;
            height: 50px;
            width: 300px;
            transition: border-color 0.2s;
        }

            .textbox:focus {
                position: relative;
                outline: none;
                border-top-style: none;
                border-left-style: none;
                border-right-style: none;
                border-width: 3px;
                border-color: #007acc;
                text-indent: 10px;
                box-shadow: inherit;
            }

        .button {
            border: 2px solid;
            border-radius: 10px;
            height: 50px;
            width: 280px;
            background-color: #2d2d30;
        }

            .button:hover {
                background-color: #007acc;
                color: aliceblue;
            }


        .row {
            margin-left: 50px !important;
            padding-top: 50px;
        }

        h2 {
            font-family: Montserrat, sans-serif;
            font-size: 20px;
            text-indent: 25px;
            font-weight: 800;
        }
    </style>

    <!--<h2><%: Title %>.</h2>-->

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div>
                    <h2>Sign in To your account</h2>
                </div>
                <br />
                <div class="form-horizontal">

                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <!--<asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>-->
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" class="textbox" TextMode="Email" PLaceholder="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <select runat="server" id="Desig" class="textbox" style="width: 280px">
                                <option hidden selected disabled>Choose here</option>
                                <option>Doctor</option>
                                <option>Patient</option>
                                <option>Admin</option>
                            </select>

                            <!--<asp:TextBox runat="server" ID="type2" class="textbox" TextMode="SingleLine" Placeholder="Last Name" />-->
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Desig"
                                CssClass="text-danger" ErrorMessage="Selection is required." />

                        </div>
                    </div>
                    <div class="form-group">
                        <!-- <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>-->
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" Class="textbox" Placeholder="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <div class=" col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass=" button" />
                        </div>
                    </div>
                </div>
                <div>
                    <h5>Don't have an account?  
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Sign up!</asp:HyperLink>
                    </h5>
                </div>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>
    </div>
</asp:Content>
