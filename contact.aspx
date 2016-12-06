<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Contact -->
	<div class="contact" id="contact">
		<div class="container">
            <br />
            <br />
			<h3>CONTACT</h3>

			<div class="contact-form">

				<form>
					<input type="text" class="text" placeholder="Name" required="">
					<input type="text" class="text" placeholder="Email" required="">
					<input type="text" class="text" placeholder="Phone" required="">
					<textarea placeholder="Message" required=""></textarea>
					<input type="submit" class="more_btn" value="Send Message">
				</form>

				<!-- Social-Icons -->
				<p>Link with Us on Socail Network</p>
				<div class="social">
					<ul class="social-icons">
						<li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
						<li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
						<li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
						<li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
						<li><a href="#" class="youtube" title="Go to Our Youtube Channel"></a></li>
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
	<div class="map">
		<div class="map-hover">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22702.22744502486!2d11.113366067229226!3d44.662878362361056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x477fc3eca9065c15%3A0x12ec8a03aadae866!2s40019+Sant&#39;Agata+Bolognese+BO%2C+Italy!5e0!3m2!1sen!2sin!4v1451281303075" allowfullscreen></iframe>
			<div class="map-hover-1"></div>
		</div>
	</div>
	<!-- //Map -->
</asp:Content>

