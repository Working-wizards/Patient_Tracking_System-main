<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Patient_Tracking_System.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
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


        .form-horizontal {
            margin-left: 50px !important;
            padding-top: 50px;
        }

        h2 {
            font-family: Montserrat, sans-serif;
            font-size: 20px;
            text-indent: 35px;
            font-weight: 800;
        }
        
    </style>
   
    <script>
        
    </script>

    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal ">
        <div>
            <h2>Create Your Account</h2>
        </div>
        <br />


        <div class="form-group">
            <!--<asp:Label runat="server" AssociatedControlID="Fname" CssClass="col-md-2 control-label">First Name:</asp:Label>-->
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Fname" class="textbox" TextMode="SingleLine" Placeholder="First Name" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Fname"
                    CssClass="text-danger" ErrorMessage="First Name is required." />

            </div>
        </div>
        <div class="form-group">
            <!--<asp:Label runat="server" AssociatedControlID="Lname" CssClass="col-md-2 control-label">Last Name:</asp:Label>-->
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Lname" class="textbox" TextMode="SingleLine" Placeholder="Last Name" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Lname"
                    CssClass="text-danger" ErrorMessage="Last Name is required." />

            </div>
        </div>
        <div class="form-group">
            <!--<asp:Label runat="server" AssociatedControlID="Lname" CssClass="col-md-2 control-label">Last Name:</asp:Label>-->
            <div class="col-md-10">
                <select runat="server" id="Desig" class="textbox" style="width:280px">
                    <option hidden selected disabled>Choose here</option>
                    <option> Doctor</option>
                    <option>Patient</option>
                    <option>Admin</option>
                </select>
                
                <!--<asp:TextBox runat="server" ID="type2" class="textbox" TextMode="SingleLine" Placeholder="Last Name" />-->
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Desig"
                    CssClass="text-danger" ErrorMessage="Selection is required." />

            </div>
        </div>
        <div class="form-group">
           <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" class="textbox" TextMode="Email" Placeholder="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="Email is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" class="textbox" Placeholder="Password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Password is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="textbox" Placeholder="Confirm Password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Password Confirmation is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <br />
        <div class="form-group">
            <div class=" col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="button" />
            </div>
        </div>
    </div>
</asp:Content>
