<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Patient_Tracking_System._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  `
    <style>
        .thumbnail {
            padding: 0 0 15px 0;
            height:fit-content();
            
        }

            .thumbnail p {
                margin-top: 15px;
                color: #555;
            }

        

            .btn:hover, .btn:focus {
                border: 1px solid #333;
                background-color: #fff;
                color: #000;
            }

        .container {
            padding: 100px 100px;
            
        }
        

        .bg-1 {
            
            
            margin: 0px 0px;
            
            color: #bdbdbd;
        }

            .bg-1 p {
                font-style: italic;
            }
    </style>


    <div class="bg-1">
        <div class="container">
            <div class="row text-center">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="Img/Doctor.jpg" alt="Jane" style="width:100%; height:100%"  />
                        <p><strong>Dr. Emily Watts</strong></p>
                        <p>Pediatritian</p>
                        <p>Dr. Emily specialize in child primary care.</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="Img/Doctor-2.jpg" alt="Jane" style="width:100%; height:100%">
                        <p><strong>Dr. John Walker</strong></p>
                        <p>Dermatologist</p>
                        <p>Dr. John Walker is expert of diseases related to skin, hair and nail.</p>
                    </div>
                </div>
                <div class="col-sm-4" >
                    <div class="thumbnail" >
                        <img src="Img/Doctor-3.jpg" alt="Jane"style="width:100%; height:100% " />
                        <p><strong>Dr. Sam Stan</strong></p>
                        <p><strong>Ophthalmologists</strong></p>
                        <p>Dr. Sam specialize in eye and vision care.</p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
