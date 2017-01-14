<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trekking.aspx.cs" Inherits="Trekking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <!-- Services -->
    <div class="services" id="services">
        <div class="container">
            <br />
            <div class="clearfix"></div>
            <br />
            <h4>Trekking </h4>

            <div class="grid_3 grid_5">
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <div id="myTabContent" class="tab-content">

                        <asp:ListView ID="TreknAdventureListUI" runat="server" DataKeyNames="ID" GroupItemCount="5">

                            <LayoutTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <table border="0" cellpadding="5">
                                                <asp:PlaceHolder runat="server" ID="groupPlaceHolder"></asp:PlaceHolder>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>

                            <GroupTemplate>
                                <tr>
                                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>

                                <td style="margin: 10px;">

                                    <div style="background-color: #FFF; margin: 10px; padding: 10px; border-color: mediumaquamarine; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: 0 10px 10px 0 #C2C2C2; box-shadow: 0 10px 10px 0 #C2C2C2;">
                                        <a href="TreknAdventureDescription.aspx?ID=<%# Eval("ID")%>">
                                            <img src="/images/trekking/ThumbPic/<%# Eval("ThumbPic")%>" class="img-responsive center-block" style="width: 200px; height: 200px;" />
                                            <p class="text-center text-capitalize text-warning center-block" style="font-size: 18px;"><%# Eval("Name")%> </p>
                                            <p class="text-center text-capitalize text-warning center-block" style="font-size: 18px;"><%# Eval("TrekType")%> </p>
                                            <hr />
                                            <a href="contact.aspx"><p class="btn btn-primary btn-sm center-block"><span>Contct Us</span></p> </a>
                                        </a>
                                    </div>

                                </td>

                            </ItemTemplate>

                        </asp:ListView>



                    </div>
                </div>
            </div>


        </div>
    </div>
    <!-- //Services -->

    <!-- STRIP HELP -->
    <div class="container-fixed" style="margin-top: 10px">
        <div class="row" style="background-color: black">
            <div class="col-md-12" style="padding: 10px;">
                <!-- Social-Icons -->
                <div class="social" style="background-color#777;">
                    <ul class="social-icons">
                        <li><a href="https://www.facebook.com/tsolaadventures" class="facebook" title="Go to Our Facebook Page"></a></li>
                        <li><a href="https://twitter.com/Tso_LaAdventure" class="twitter" title="Go to Our Twitter Account"></a></li>
                        <li><a href="https://plus.google.com/u/0/103334864232863873445" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        <li><a href="https://www.instagram.com/tso_laadventures" class="instagram" title="Go to Our Instagram Account"></a></li>
                        <li><a href="https://www.youtube.com/channel/UCJ7pHmG1LaHW5uavpmq_k-g" class="youtube" title="Go to Our Youtube Channel"></a></li>

                    </ul>
                </div>
            </div>

        </div>

        <div class="clearfix"></div>
    </div>
    <!-- Strip HELP -->





</asp:Content>

