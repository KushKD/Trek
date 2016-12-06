<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    	<!-- Agency -->
	<div class="agency">
		<div class="container">

			<h2>WE ARE AN AWESOME AGENCY</h2>

			<div class="agency-grids">
				<div class="col-md-3 col-sm-3 agency-grid">
					<div class="agency-grid-img">
						<img src="images/agency-1.png" alt="Wanderer">
					</div>
					<h4>World Tour</h4>
					<p>Sed ut perspiciatis unde omnis iste natus duis error sit voluptatem accusantium ile doloremque.</p>
				</div>
				<div class="col-md-3 col-sm-3 agency-grid">
					<div class="agency-grid-img">
						<img src="images/agency-2.png" alt="Wanderer">
					</div>
					<h4>Exotic Locations</h4>
					<p>Sed ut perspiciatis unde omnis iste natus duis error sit voluptatem accusantium ile doloremque.</p>
				</div>
				<div class="col-md-3 col-sm-3 agency-grid">
					<div class="agency-grid-img">
						<img src="images/agency-3.png" alt="Wanderer">
					</div>
					<h4>Easy Travelling</h4>
					<p>Sed ut perspiciatis unde omnis iste natus duis error sit voluptatem accusantium ile doloremque.</p>
				</div>
				<div class="col-md-3 col-sm-3 agency-grid">
					<div class="agency-grid-img">
						<img src="images/agency-4.png" alt="Wanderer">
					</div>
					<h4>Beach Resorts</h4>
					<p>Sed ut perspiciatis unde omnis iste natus duis error sit voluptatem accusantium ile doloremque.</p>
				</div>
				<div class="clearfix"></div>
			</div>
			
		</div>
	</div>
	<!-- //Agency -->

	<!-- Services -->
	<div class="services" id="services">
		<div class="container">

			<h3>SERVICES</h3>

			<div class="grid_3 grid_5">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">Expeditions</a></li>
						<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">Rafting</a></li>
						<li role="presentation"><a href="#tree" role="tab" id="tree-tab" data-toggle="tab" aria-controls="tree">Camping</a></li>
						<li role="presentation"><a href="#safari" role="tab" id="safari-tab" data-toggle="tab" aria-controls="safari">Safari</a></li>
						<li role="presentation"><a href="#trekking" role="tab" id="trekking-tab" data-toggle="tab" aria-controls="trekking">Trekking</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-1.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-2.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tree" aria-labelledby="tree-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-3.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p> This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact form, accompanied by English versions from the 1914 translation by H. Rackham. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="safari" aria-labelledby="safari-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-4.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="trekking" aria-labelledby="trekking-tab">
							<div class="col-md-5 col-sm-5 tab-image">
								<img src="images/tab-5.jpg" alt="Wanderer">
							</div>
							<div class="col-md-7 col-sm-7 tab-info">
								<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures.</p>
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
		<button class="btn btn-primary" data-toggle="modal" data-target="#modalvideo">WATCH OUR EXPLORATION<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></button>
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

