<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointments.aspx.cs" Inherits="Patient_Tracking_System.Appointments" %>
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
            text-indent: -20px;
            font-weight: 800;
        }
    </style>



    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div>
                    <h2>Enter Your Data for Appointment</h2>
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
                            <asp:TextBox runat="server" ID="fname" class="textbox" TextMode="SingleLine" Placeholder="First Name" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="fname"
                                CssClass="text-danger" ErrorMessage="First name is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="lname" class="textbox" TextMode="SingleLine" Placeholder="Last Name" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="lname"
                                CssClass="text-danger" ErrorMessage="Last name is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="email" class="textbox" TextMode="Email" Placeholder="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                                CssClass="text-danger" ErrorMessage="Email is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="phonenumber" class="textbox" TextMode="Phone" Placeholder="Phone Number" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="phonenumber"
                                CssClass="text-danger" ErrorMessage="Phonenumber is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="reason" class="textbox" TextMode="singleline" Placeholder="Reason for appointment" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="reason"
                                CssClass="text-danger" ErrorMessage="This Field is required." />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-10"> 
                            <asp:TextBox runat="server" ID="date" class="textbox" TextMode="Date" width="280" Placeholder="Appointment Date" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="date"
                                CssClass="text-danger" ErrorMessage="Appointment date is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="time" class="textbox" TextMode="Time" width="280" Placeholder="Time" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="time"
                                CssClass="text-danger" ErrorMessage="Time management required." />
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <div class=" col-md-10">
                           <asp:button runat="server" Text="Enter" OnClick="Button_click"  CssClass="button"  />
                           
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
