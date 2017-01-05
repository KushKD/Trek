<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #map {
            height: 400px;
            width: 100%;
        }
    </style>
    <script>
        function initMap() {
            var Tsola = { lat: 31.083254, lng: 77.170938 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 18,
                panControl: true,
                zoomControl: true,
                zoomControlOptions: {
                    style: google.maps.ZoomControlStyle.LARGE
                },
                streetViewControl: true,
                overviewMapControl: true,
                rotateControl: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: Tsola
            });
            var contentString = '<div id="content">' +
              '<div id="siteNotice">' +
              '</div>' +
              '<h4 id="firstHeading" class="firstHeading">TSOLA Adventures</h4>' +
              '<div id="bodyContent">' +
              '</div>' +
              '</div>';

            var infowindow = new google.maps.InfoWindow({
                content: contentString
            });

            var marker = new google.maps.Marker({
                position: Tsola,
                map: map,
                title: 'TSOLA Adventures'
            });
            marker.addListener('click', function () {
                infowindow.open(map, marker);
            });

        }
    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCU06MsERGtIqXGYFN7WDDAqmfu-HKieYs&callback=initMap">
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Contact -->
    <div class="contact" id="contact">
        <div class="container">
            <br />
            <br />
            <h3>Feel Free to Contact Us:</h3>

            <div class="contact-form">

                
                    <asp:TextBox runat="server" ID="name" Height="50px" TextMode="MultiLine" placeholder="Name" />
                    <asp:TextBox runat="server" ID="email" Height="50px" TextMode="MultiLine" placeholder="Email" />
                    <asp:TextBox runat="server" ID="subject" Height="50px" TextMode="MultiLine" placeholder="Subject" />
                    <asp:TextBox runat="server" Height="50px" TextMode="MultiLine" ID="phone" placeholder="Phone" />
                    <asp:TextBox runat="server" Height="120px" ID="message" TextMode="MultiLine" placeholder="Message" />
                    <asp:Button runat="server" OnClick="sendmail" class="more_btn" Text="SHOOT MESSAGE" />
                

                <!-- Social-Icons -->
                <p>Link with Us on Social Network</p>
                <div class="social">
                    <ul class="social-icons">
                        <li><a href="https://www.facebook.com/tsolaadventures" class="facebook" title="Go to Our Facebook Page"></a></li>
                        <li><a href="https://twitter.com/Tso_LaAdventure" class="twitter" title="Go to Our Twitter Account"></a></li>
                        <li><a href="https://plus.google.com/u/0/103334864232863873445" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        <li><a href="https://www.instagram.com/tso_laadventures" class="instagram" title="Go to Our Instagram Account"></a></li>
                        <li><a href="https://www.youtube.com/channel/UCJ7pHmG1LaHW5uavpmq_k-g" class="youtube" title="Go to Our Youtube Channel"></a></li>
                    </ul>
                </div>
                <!-- //Social-Icons -->

                <%--<p>Subscribe to our Newsletter</p>
				<div class="newsletter">
					<form>
						<input class="email" type="email" placeholder="Your email..." required="">
						<input type="submit" class="submit" value="">
					</form>
				</div>--%>
            </div>

        </div>
    </div>
    <!-- //Contact -->

    <!-- Map -->
    <div id="map">
    </div>
    <!-- //Map -->
</asp:Content>

