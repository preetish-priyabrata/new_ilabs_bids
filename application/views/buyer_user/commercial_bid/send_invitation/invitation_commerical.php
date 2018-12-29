<?php 
$email_id=$this->session->userdata('buy_email_id');
if(empty($email_id)){
	
	redirect('buy-logout-by-pass');
}
?>
<link href="<?=base_url()?>file_css_admin/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet" />
<link href="<?=base_url()?>file_css_admin/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css" rel="stylesheet" />
<link href="<?=base_url()?>file_css_admin/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
<link href="<?=base_url()?>file_css_admin/assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />

<!--  <link href="<?=base_url()?>file_css_admin/assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/plugins/jquery-tag-it/css/jquery.tagit.css" rel="stylesheet" /> -->
<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item active"><a href="#" class="fa fa-home ">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Send Bid Information</a></li>
				<li class="breadcrumb-item active">Setting Rank Order Date and Time</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Setting Rank Order Date and Time </h1>
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
			
			 ?>

			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<!-- <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a> -->
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">Setting Rank Order Date and Time</h4>
				</div>
				<div class="panel-body">
					<div class="alert alert-secondary">
                        <span style="color: red"> *</span> All mandory fields shall be duly filled up 
                    </div>
					<form action="admin-add-activity-save" method="POST" >
						<div class="row">
							<div class="col-md-6 col-lg-6">
								<!-- <div class="form-group row  m-b-15">
									<label class="col-md-4 col-form-label">Default Date Time</label>
									<div class="col-md-8">
                                        <div class="input-group date" id="datetimepicker1">
                                            <input type="text" class="form-control" />
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
									</div>
								</div> -->
								<div class="form-group row  m-b-15">
									<label class="col-md-3 col-form-label">Date Time <span style="color: red">*</span></label>
									<div class="col-md-9">
									    <div class="row row-space-10">
                                            <div class="col-xs-6 col-md-9">
                                                <input type="text" class="form-control  m-b-5"  name="Starting" id="datetimepicker3" placeholder="Starting Date/Time" />
                                            </div>
                                            <div class="col-xs-6 col-md-9">
                                                <input type="text" class="form-control  m-b-5" name="ending" id="datetimepicker4" placeholder="Ending  Date/Time" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="activity_name">Timer <span style="color: red">*</span></label>
									<div class="col-md-9">
										<input class="form-control m-b-5" placeholder="Enter Timer in minutes" name="timer" id="timer" type="text" required="">
										<small class="f-s-12 text-grey-darker">Here enter Timer in minutes </small>
									</div>
								</div>
							 	
								
							</div>
							<div class="col-md-6 col-lg-6">
								<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="activity_name">Bid Max Entry <span style="color: red">*</span></label>
									<div class="col-md-9">
										<input class="form-control m-b-5" placeholder="Enter Activity name" name="no_of_entry" id="no_of_entry" type="text" required="">
										<small class="f-s-12 text-grey-darker">Here enter Bid Max no of Entry </small>
									</div>
								</div>
							 	<!-- <div class="form-group row m-b-15">
									<label class="col-form-label col-md-3">Activity Description  <span style="color: red">*</span></label>
									<div class="col-md-9">
										<textarea class="form-control" rows="3" name="activity_desc" required=""></textarea>
										<small class="f-s-12 text-grey-darker"> Please enter Activity description  </small>
									</div>
								</div> -->
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6">
								<h4 class="text-center">Submited Bid</h4>
								<hr style="border: 1px solid lightgreen">
								<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
				                	<thead>
			                            <tr>
			                                <th><strong>Vendor Name </strong></th>
			                                <th><strong>Vendor Details</strong></th>			                                
			                            </tr>
			                        </thead>
			                       <tbody>
			                       	
			                       </tbody>
			                    </table>
			                </div>
			                <div class="col-lg-6">
								<h4 class="text-center"> Not Submited Bid</h4>
								<hr style="border: 1px solid lightblue">
								<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
				                	<thead>
			                            <tr>
			                                <th><strong>Vendor Name </strong></th>
			                                <th><strong>Vendor Details</strong></th>			                                
			                            </tr>
			                        </thead>
			                       <tbody>
			                       	
			                       </tbody>
			                    </table>
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

		<script type="text/javascript">
			   
		</script>