<?php 
$email_id=$this->session->userdata('buy_email_id');
if(empty($email_id)){
	
	redirect('buy-logout-by-pass');
}
$value=$value; //Slno_bid
$value1=$value1; //category

$result_vendor_list=$this->buyer_user->buyer_get_vendor_information($value);// vendor information
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
                        <span style="color: red"> *</span> All mandatory fields shall be duly filled up 
                    </div>
					<form action="<?=base_url()?>buyer-bid-rank-invitation-to-vendor-com" method="POST" >
						<input type="hidden" name="master_bid_id" value="<?=$value?>">
						<input type="hidden" name="category" value="<?=$value1?>">
						<input type="hidden" name="bid_ref" value="<?=$result_vendor_list['bid_vendors_list'][0]->bid_ref?>">
						<input type="hidden" name="bid_id" value="<?=$result_vendor_list['bid_vendors_list'][0]->bid_id?>">
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
                                                <input type="text" class="form-control  m-b-5"  name="Starting" id="datetimepicker3" placeholder="Starting Date/Time" required="" />
                                            </div>
                                            <div class="col-xs-6 col-md-9">
                                                <input type="text" class="form-control  m-b-5" name="ending" id="datetimepicker4" placeholder="Ending  Date/Time" required="" />
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
										<small class="f-s-12 text-grey-darker">Here enter Bid Max no. of Entry </small>
									</div>
								</div>
								<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="Technical_ev" >Commercial Evaluator Name <span style="color: red">*</span></label>
									<div class="col-md-9">
										<?php
										$data_array_approver=$this->buyer_user->get_user_generic_list('1','0','0','10','','');

										?>

										<select name="Technical_ev"  class="form-control m-b-5" id="Technical_ev" required="" >
											<?php
											if($data_array_approver['no_user']==2){?>
												<option value="">--No Commerical Evaluator Is found--</option>
												<?php
											}else if($data_array_approver['no_user']==1){
												?>
												<option value="">--Select Commerical Evaluator--</option>
											<?php
												foreach ($data_array_approver['user_approver'] as $key_approver) {
													echo "<option value='".$key_approver->slno."'>".$key_approver->Username." [ ".$key_approver->email_id." ]</option>";
												}


											}
											?>

										</select>
										<small class="f-s-12 text-grey-darker">Select Commercial Evaluator </small>
									</div>
								</div>
							 
							</div>
						</div>
						<div class="row">
							<!-- <?php 
								print_r($result_vendor_list);
							?> -->
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
			                       	<?php
			                       		if($result_vendor_list['no_bid_vendors']==1){
			                       			foreach ($result_vendor_list['bid_vendors_list'] as $key => $value_vendor) {
			                       				if(!empty($value_vendor->submission_status) && ($value_vendor->submission_status==1)){
			                       					?>
			                       					<input type="hidden" name="slno_vendor_approve[]" value="<?=$value_vendor->slno_vendor?>">
													<input type="hidden" name="vendor_id_approve[]" value="<?=$value_vendor->vendor_id?>">
			                       					<tr>
				                       					<td> <?=$value_vendor->Vendor_name?></td>
														<td>
															<p>
																Organisation Name : <?=$value_vendor->Organisation_name?>					
															</p>
															<p>
																Vendor Mobile : <?=$value_vendor->Mobile_no?>
															</p>
															<p>
																Vendor Address : <?=$value_vendor->Organisation_address?>
															</p>
														</td>
													</tr>
			                       					<?php
			                       				}
			                       				# code...
			                       			}
			                       		}

			                       	?>
			                       	
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
			                       	 	<?php
			                       		if($result_vendor_list['no_bid_vendors']==1){
			                       			foreach ($result_vendor_list['bid_vendors_list'] as $key => $value_vendor) {
			                       				if(empty($value_vendor->submission_status) || ($value_vendor->submission_status==0)){
			                       					?>
			                       					<input type="hidden" name="slno_vendor_not[]" value="<?=$value_vendor->slno_vendor?>">
													<input type="hidden" name="vendor_id_not[]" value="<?=$value_vendor->vendor_id?>">
			                       					<tr>
				                       					<td> <?=$value_vendor->Vendor_name?></td>
														<td>
															<p>
																Organisation Name : <?=$value_vendor->Organisation_name?>					
															</p>
															<p>
																Vendor Mobile : <?=$value_vendor->Mobile_no?>
															</p>
															<p>
																Vendor Address : <?=$value_vendor->Organisation_address?>
															</p>
														</td>
													</tr>
			                       					<?php
			                       				}
			                       				# code...
			                       			}
			                       		}

			                       	?>
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