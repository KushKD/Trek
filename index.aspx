<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Slider -->
		<div class="slider">
			<ul class="rslides" id="slider1">
				<li>
					<img src="images/slider/slide-1.jpg" alt=""/>
					<div class="caption">
						<h3>"Positive QUOTE For this Image"</h3>
					</div>
				</li>
				<li>
					<img src="images/slider/slide-2.jpg" alt=""/>
					<div class="caption">
						<h3>"Positive QUOTE For this Image"</h3>
					</div>
				</li>
				<li>
					<img src="images/slider/slide-3.jpg" alt=""/>
					<div class="caption">
						<h3>"Positive QUOTE For this Image"</h3>
					</div>
				</li>
				<li>
					<img src="images/slider/slide-4.jpg" alt=""/>
					<div class="caption">
						<h3>"Positive QUOTE For this Image"</h3>
					</div>
				</li>
				<li>
					<img src="images/slider/slide-5.jpg" alt=""/>
					<div class="caption">
						<h3>"Positive QUOTE For this Image"</h3>
					</div>
				</li>
               
			</ul>
		</div>
		<!-- //Slider -->

   

	<!-- Services -->
	<div class="services" id="services">
		<div class="container">

			<h3>ACTIVITIES</h3>

			<div class="grid_3 grid_5">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#upcoming" role="tab" id="upcoming-tab" data-toggle="tab" aria-controls="trekking">Upcoming </a></li>
						<li role="presentation" ><a href="#trekking" id="trekking-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">Trekking</a></li>
						<li role="presentation"><a href="#wildlife" role="tab" id="wildlife-tab" data-toggle="tab" aria-controls="tours">Wildlife</a></li>
						<li role="presentation"><a href="#jeep" role="tab" id="safari-tab" data-toggle="tab" aria-controls="tree">Jeep Safari</a></li>
						<li role="presentation"><a href="#cycling" role="tab" id="cycling-tab" data-toggle="tab" aria-controls="safari">Cycling Tours</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="upcoming" aria-labelledby="upcoming-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-1.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p>All the Upcoming Tours and Notifications. Lines on Upcoming Notifications</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="trekking" aria-labelledby="trekking-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-2.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p> Need an trekking Image and three line on it</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="wildlife" aria-labelledby="wildlife-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-3.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p>  Need an Wildlife Image and three line on it</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="jeep" aria-labelledby="safari-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-4.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p> Need an Safari Jeep Image and three line on it </p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="cycling" aria-labelledby="cycling-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-5.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p> Need an Cycling Image and three line on it</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>

			
		</div>
	</div>
	<!-- //Services -->

	<!-- Video -->
	<div class="video">
		<button class="btn btn-primary" data-toggle="modal" data-target="#modalvideo">WATCH OUR EXPLORATION (Need a Video 5 minutes or three minute)<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></button>
		<!-- Tooltip-Content -->
		<div class="tooltip-content">

			<div class="modal fade features-modal" id="modalvideo" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<iframe src="https://player.vimeo.com/video/67993068" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
						</div>
					</div>
				</div>
			</div>

			<script>
				$('#myModal').modal('');
			</script>

		</div>
		<!-- //Tooltip-Content -->
</asp:Content>

