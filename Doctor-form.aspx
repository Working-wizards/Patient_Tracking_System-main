<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctor-form.aspx.cs" Inherits="Patient_Tracking_System.WebForm2" %>

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
            text-indent: 60px;
            font-weight: 800;
        }
    </style>



    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div>
                    <h2>Enter the data</h2>
                </div>
                <br />
                <div class="form-horizontal">

                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="pfname" class="textbox" TextMode="SingleLine" Placeholder="Patient First Name" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="pfname"
                                CssClass="text-danger" ErrorMessage="Patient First name is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="plname" class="textbox" TextMode="SingleLine" Placeholder="Patient Last Name" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="plname"
                                CssClass="text-danger" ErrorMessage="Patient last name is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="pemail" class="textbox" TextMode="Email" Placeholder="Patient Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="pemail"
                                CssClass="text-danger" ErrorMessage="Patient email is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="phonenumber" class="textbox" TextMode="Phone" Placeholder="Patient Phone Number" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="phonenumber"
                                CssClass="text-danger" ErrorMessage="Patient Phonenumber is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="disease" class="textbox" TextMode="singleline" Placeholder="Disease or Medical Condition" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="disease"
                                CssClass="text-danger" ErrorMessage="This Field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="medication" class="textbox" TextMode="singleline" Placeholder="Patient Medication" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="medication"
                                CssClass="text-danger" ErrorMessage="Medication is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="date" class="textbox" TextMode="Date" width="280" Placeholder="Date of Arrival" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="date"
                                CssClass="text-danger" ErrorMessage="Date of Arrival is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="cost" class="textbox" TextMode="Number" width="280" Placeholder="Cost" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="cost"
                                CssClass="text-danger" ErrorMessage="Cost is required." />
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <div class=" col-md-10">
                           <asp:button runat="server" Text="Enter" OnClick="Button_click" CssClass="button"  />
                           
                        </div>
                    </div>
                    <p>
                        <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                        --%>
                    </p>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
