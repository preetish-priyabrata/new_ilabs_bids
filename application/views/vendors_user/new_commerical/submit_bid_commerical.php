 <?php
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){

	redirect('vendor-logout-pass');
}
$value=$value;
$key_values_slno=$token;
$master_bid_id=$master_bid_id;
$result_title=$this->vendor_db_users->vendor_new_query_tech_title($value,$Vendor_email_id);
if($result_title['no_new_tech']!=1){
	$this->session->set_flashdata('error_message', 'Unable find Bid');
	redirect('user-vendor-home');
}
?>
<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		      <li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
				<li class="breadcrumb-item active">Submit Commercial Bid</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Creating New Bid For Commercial Submission</h1>
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
					<h4 class="panel-title">Create New Commercial Bid </h4>
				</div>
				<div class="panel-body">
          <h4 class="panel-title ">Title Bid  : <h5><?=$result_title['new_tech_list'][0]->title?></h5></h4>
          <hr style="height: 2px; background:  green">
          <div class="alert alert-secondary">
            <span style="color: red"> *</span> All mandatory fields shall be duly filled up
        	</div>
					<form action="<?=base_url()?>vendor-tech-file-new-bid-submission" method="POST" >
						<div class="row">
							<div class="col-md-6 col-lg-6">
							 	<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="activity_name">File Name <span style="color: red">*</span></label>
									<div class="col-md-9">
										<input type="hidden" name="value_slno" id="value_slno" value="<?=$value?>">
										<input type="hidden" name="key_values_slno" id="key_values_slno" value="<?=$key_values_slno?>">
										<input type="hidden" name="master_bid_id" id="master_bid_id" value="<?=$master_bid_id?>">
										<input type="hidden" name="Vendor_email_id" id="Vendor_email_id" value="<?=$Vendor_email_id?>">
										<input class="form-control m-b-5" placeholder="Enter File name" name="file_name" id="file_name" type="text" >
										<small class="f-s-12 text-grey-darker">Here enter File name</small>
									</div>
								</div>
							</div>
							<div class="col-md-5 col-lg-5">
							 	<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3">Attach Files  <span style="color: red">*</span></label>
									<div class="col-md-9">
										<input type="file" name="new_file" id="new_file" ><br />
										<small class="f-s-12 text-grey-darker"> Please Attach Files  </small>
									</div>
								</div>
							</div>
              				<div class="col-md-1 col-lg-1">
							 	<div class="form-group row m-b-15">
									<span class="btn btn-sm btn-info" id="sub">Upload</span>
								</div>
							</div>
						</div>
            <div class="row">
            	<div class="col-md-12">
            	<div id="cart-item-files"></div>
            </div>
            </div>
						<div class="form-group row pull-right">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
                    <a  href="user-admin-home" class="btn btn-sm btn-default">Cancel</a>
                </div>
            </div>


					</form>
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->
		