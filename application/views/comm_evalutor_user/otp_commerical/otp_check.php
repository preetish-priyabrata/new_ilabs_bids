<?php 
$commerical_email_id=$this->session->userdata('commerical_email_id');
if(empty($commerical_email_id)){
	
	redirect('comm-evalutor-logout-by-pass');
}
// 'type_bid'=>$value,'master_bid_id'=>$value1,'category_id'=>$value2,'bid_name'=>$value3,'buyer_bid'=>$value4,'last_otp_id'=>$last_insert_id
$type_bid=$type_bid;
$master_bid_id=$master_bid_id;
$category_id=$category_id;
$bid_name=$bid_name;
$buyer_bid=$buyer_bid;
$last_otp_id=$last_otp_id;
?>

<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item active"><a href="#" class="fa fa-home ">Home</a></li>
				<!-- li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
				<li class="breadcrumb-item active">Page with Transparent Sidebar</li> -->
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">OTP Verification </h1>
			<!-- end page-header -->
			<?php if(!empty($this->session->flashdata('success_message'))){?>
			<div class="alert alert-success fade show">
			  <span class="close" data-dismiss="alert">×</span>
			  <strong>Success!</strong>
			  <?=$this->session->flashdata('success_message')?> 
			  <!-- <a href="#" class="alert-link">an example link</a>.  -->
			</div>
			<?php 
			} if(!empty($this->session->flashdata('error_message'))){?>
			<div class="alert alert-danger fade show">
			  <span class="close" data-dismiss="alert">×</span>
			  <strong>Error !</strong>
			  <?=$this->session->flashdata('error_message')?> 
			  <!-- <a href="#" class="alert-link">an example link</a>.  -->
			</div>
			<?php 
			}
			 // print_r($this->session->userdata());
			 ?>

			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">Please Enter Valid OTP Here</h4>
				</div>
				<div class="panel-body">
					<div class="alert alert-secondary">
                        		<span style="color: red"> *</span> All mandory fields shall be duly filled up 
                        	</div>
					<form action="<?=base_url()?>commerical-otp-verification" method="POST" >
						<div class="row">
							<input  name="type_bid" id="type_bid" type="hidden" required="" value="<?=$type_bid?>" >
							<input  name="master_bid_id" id="master_bid_id" type="hidden" required="" value="<?=$master_bid_id?>" >
							<input  name="category_id" id="category_id" type="hidden" required="" value="<?=$category_id?>" >
							<input  name="bid_name" id="bid_name" type="hidden" required="" value="<?=$bid_name?>" >
							<input  name="buyer_bid" id="buyer_bid" type="hidden" required="" value="<?=$buyer_bid?>" >
							<input  name="last_otp_id" id="last_otp_id" type="hidden" required="" value="<?=$last_otp_id?>" >
							<div class="col-md-6 col-lg-6">
							 	<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="OTP">OTP  <span style="color: red">*</span></label>
									<div class="col-md-9">
										<input class="form-control m-b-5" placeholder="Enter OTP" name="OTP" id="OTP" type="text" required="">
										<small class="f-s-12 text-grey-darker">Here enter Activity name</small>
									</div>
								</div>
								
							</div>
							<!-- <div class="col-md-6 col-lg-6">
							 	<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3">Activity Description  <span style="color: red">*</span></label>
									<div class="col-md-9">
										<textarea class="form-control" rows="3" name="activity_desc" required=""></textarea>
										<small class="f-s-12 text-grey-darker"> Please enter Activity description  </small>
									</div>
								</div>
							</div> -->
						</div>
						<div class="form-group row pull-right">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-sm btn-primary m-r-5">Verify</button>
                               
                                <a href="<?=base_url()?>generate-otp-bid-referecnce/<?=$type_bid?>/<?=$master_bid_id?>/<?=$category_id?>/<?=$bid_name?>/<?=$buyer_bid?>" class="btn btn-sm btn-lime">Resend OTP</a>
                                <a  href="<?=base_url()?>user-commerical-evalutor-home" class="btn btn-sm btn-info">Home</a> 
                            </div>
                        </div>
						
						
					</form>
					
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->