<?php 
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){
	
	redirect('vendor-logout-pass');
}

?>
<!-- begin #top-menu -->
		<div id="top-menu" class="top-menu" >
			<!-- begin top-menu nav -->
			<ul class="nav">
				<li>
					<a href="<?=base_url()?>user-vendor-new-technical">
						<div class="icon-img">
							<img src="<?=base_url()?>file_css_admin/assets/img/logo/logo-bs4.png" alt="" />
						</div>
						<span>Technical Bid<span class="label label-theme m-l-5">NEW</span></span>
					</a>
				</li>
				<li>
					<a href="<?=base_url()?>user-vendor-new-commerical">
						<div class="icon-img">
							<img src="<?=base_url()?>file_css_admin/assets/img/logo/logo-bs4.png" alt="" />
						</div>
						<span>Commerical Bid<span class="label label-theme m-l-5">NEW</span></span>
					</a>
				</li>
				<li>
					<a href="<?=base_url()?>user-vendor-new-auction-list">
						<div class="icon-img">
							<i class="fas fa-gavel" style="font-size: 19px; color: #64f664;"></i>
							
							<!-- <img src="<?=base_url()?>file_css_admin/assets/img/logo/logo-bs4.png" alt="" /> -->
						</div>
						<span>Auction Biding<span class="label label-theme m-l-5">NEW</span></span>
					</a>
				</li>
				<li>
					<a href="<?=base_url()?>user-vendor-new-notification-list">
						<div class="icon-img">
							<i class="far fa-bell" style="font-size: 19px; color: red;"></i>
							<!-- <span class="icon-bell"></span> -->
							<!-- <img src="<?=base_url()?>file_css_admin/assets/img/logo/logo-bs4.png" alt="" /> -->
						</div>
						<span>Notification <span id="Notification"></span> </span>
					</a>
				</li>
				
				
				<li class="menu-control menu-control-left">
					<a href="javascript:;" data-click="prev-menu"><i class="fa fa-angle-left"></i></a>
				</li>
				<li class="menu-control menu-control-right">
					<a href="javascript:;" data-click="next-menu"><i class="fa fa-angle-right"></i></a>
				</li>
			</ul>
			<!-- end top-menu nav -->
		</div>
		<!-- end #top-menu -->
