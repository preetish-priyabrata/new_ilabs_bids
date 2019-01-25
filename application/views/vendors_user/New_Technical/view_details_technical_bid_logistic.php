<?php
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){

	redirect('vendor-logout-pass');
}
$value=$value;
$value1=$value1;
$result_title=$this->vendor_db_users->vendor_new_query_tech_title($value,$Vendor_email_id);
if($result_title['no_new_tech']!=1){
	$this->session->set_flashdata('error_message', 'Unable find Bid');
	redirect('user-vendor-home');
}
$edit_id=$result_title['new_tech_list'][0]->edit_id;
$mr_slno=$result_title['new_tech_list'][0]->mr_slno;
$mr_no=$result_title['new_tech_list'][0]->mr_no;
$approval_status=$result_title['new_tech_list'][0]->approval_status;
$result_vechile=$this->design_user->get_design_master_mr_vechile_single($edit_id,$mr_no,$mr_slno);

 $result_file=$this->design_user->get_design_mr_file_list($mr_slno,$mr_no); // file information
 	$date_file_sub = array('bid_id_vendor' => $value );
 $get_no_file=$this->db->get_where('master_vendor_tech_token_bid',$date_file_sub);
?>
<!-- begin #content -->
	<div id="content" class="content">
		<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
			<li class="breadcrumb-item"><a href="javascript:;">New Technical Bid</a></li>
			<li class="breadcrumb-item active">Technical Bid Information</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header">Technical Bid View Details<small></small></h1>
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
		// print_r($result_title);

		?>
		<!-- begin panel -->
		<div class="panel panel-inverse">
			<div class="panel-heading">
				<div class="panel-heading-btn">
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
				</div>
				<h4 class="panel-title">Panel Title here</h4>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Date_creation"> Bid Ref <span style="color: red"></span></label>
							<div class="col-md-9">
								<?=$result_title['new_tech_list'][0]->bid_ref?>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Po_no">Start Date <span style="color: red"></span></label>
							<div class="col-md-9">
								<?=$result_title['new_tech_list'][0]->date_start?>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Bg_submission_date">Title </label>
							<div class="col-md-9">
								<?=$result_title['new_tech_list'][0]->title?>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Mfg_clear_date">Description <span style="color: red"></span></label>
							<div class="col-md-9">
								<?=$result_title['new_tech_list'][0]->description?>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Job_code"> Bid Id<span style="color: red"></span></label>
							<div class="col-md-9">
								<?=$result_title['new_tech_list'][0]->bid_id?>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Po_date"> End Date <span style="color: red"></span></label>
							<div class="col-md-9">
								<?=$result_title['new_tech_list'][0]->date_end?>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Advance_payment_date">Date of Query </label>
							<div class="col-md-9">
								<?=$result_title['new_tech_list'][0]->date_end?>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Advance_payment_date"> Type of Bid </label>
							<div class="col-md-9">
								<?=$result_title['new_tech_list'][0]->mode_bid?>
							</div>
						</div>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-12 col-lg-12">
						<h5 class="text-center">Material Information</h5>
						<hr style="height: 3px;background: #0257ab;margin-top: 1.5rem; margin-bottom: 1.5rem"/>
						<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
							<thead>
								<tr>
									<th>Vehicle Type</th>
									<th>Capacity</th>
									<th>Details</th>
									<th>No.</th>
									<th>From Location</th>
									<th>To Location</th>
									<th>Purpose</th>

								</tr>
							</thead>
							<tbody>
							<?php
								if($result_vechile['no_vechile']==1){
									foreach ($result_vechile['item_vechile_list'] as $key_value_vechile) {
										$code=$vehicle_slno_id_single=$key_value_vechile->vehicle_slno_id;
										$from_location_slno_single=$key_value_vechile->from_location_slno;
										$to_location_slno_single=$key_value_vechile->to_location_slno;
										$purpose_info_single=($key_value_vechile->purpose_info);
										$no_vehcile_single=$key_value_vechile->no_vehcile;
										$slno_mr_logistic=$key_value_vechile->slno_mr_logistic;
										$get_location_from=$this->design_user->get_design_master_loaction_list($from_location_slno_single); // from location information will come out

										$get_location_to=$this->design_user->get_design_master_loaction_list($to_location_slno_single); // to location information will come out
										$query_item_details=$this->design_user->get_design_master_vehcile_list($code);
							?>
										<tr>
											<td><?=$query_item_details['item_vehcile'][0]->vehicle_type?></td>
											<td><?=$query_item_details['item_vehcile'][0]->vehicle_capacity?></td>
											<td><?=$no_vehcile_single?></td>
											<td><?=$query_item_details['item_vehcile'][0]->vehicle_desc?></td>
											<td><?=$get_location_from['item_location'][0]->location_name?></td>
											<td><?=$get_location_to['item_location'][0]->location_name?></td>
											<td><?=$purpose_info_single?></td>
										</tr>
							<?php
									}
								}
							?>
							</tbody>
						</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<h5 class="text-center">Attached File Information</h5>
					<hr style="height: 3px;background: #0257ab;margin-top: 1.5rem; margin-bottom: 1.5rem"/>
					<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
						<thead>
								<tr>
										<th><strong>File Name</strong></th>
										<th><strong>Click View</strong></th>

								</tr>
						</thead>
						<tbody>
								<?php foreach($result_file['files_list'] as $key_files){ ?>
										<tr>
												<td><strong><?=$key_files->file_name_actucal?></strong></td>
												<td><strong><a target="_blank" href="<?=base_url()?>upload_files/design_upload/<?=$key_files->attach_name?>">Click View</a> </strong></td>

										</tr>


								<?php }?>

						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				
				<div class="col-md-12 col-lg-12">
					<h5 class="text-center">Submission Created</h5>
					<hr style="height: 3px;background: #0257ab;margin-top: 1.5rem; margin-bottom: 1.5rem"/>
					<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
						<thead>
								<tr>
										<th><strong>Date  Creation</strong></th>
										<th><strong>Status</strong></th>
										<th><strong>Comment</strong></th>										
										<th><strong>Click View</strong></th>

								</tr>
						</thead>
						<tbody>
								<?php foreach($get_no_file->result() as $submission){ ?>
										<tr>
												<td><strong><?=$submission->date_creation?></strong></td>
												<td><strong><?php $submitted_status=$submission->submitted_status;
													if($submitted_status==0){
														echo  "<p style='color: orange'>Drafted</p>"; 
													}if($submitted_status==1){
														echo  "<p style='color: green'>Submitted</p>"; 
													}
													if($submitted_status==5){
														echo  "<p style='color: blue'>Archived</p>"; 
													}
												?></strong></td>
												<td><?php 
													if(!empty($submission->comment)){
														echo $submission->comment;
													}else{
														echo "--";
													}
												?></td>
												<td>
													<strong>
														<?php 
														if($approval_status==1){
																if($submitted_status==1){  echo "<b style='color:green'>Approved<?b>"; 
															}else{
																echo "<b>--</b>";
															}
														
														}else{
															if($submitted_status==1){  echo "---"; }else{?> <a target="_blank" href="<?=base_url().'user-vendor-tech-bid-submission-tokens/'.$value.'/'.$submission->token_no .'/'.$submission->master_bid_id ?>">Click View</a><?php }
														}
														?>
												 	</strong>
												</td>

										</tr>
								<?php }?>
						</tbody>
					</table>
				</div>
			</div>
			<div class="form-group row pull-right">
          <div class="col-md-12">
          	<?php if($approval_status==1){
          		echo "<p style='color:green'><strong> BId Is been Approved </strong></p>";
          	 }else{
				?>
				 <a href="<?=base_url()?>user-vendor-bid-submission/<?=$value?>" class="btn btn-sm btn-success m-r-5"><i class="fas fa-envelope-open-text"></i>   Click To Submit Bid </a>
			<?php }
				?>
              <a href="<?=base_url()?>user-vendor-query-panel/<?=$value?>" class="btn btn-sm btn-warning m-r-5"><i class="fa fa-question-circle" aria-hidden="true"></i>  Query </a>
              <a  href="<?=base_url()?>user-vendor-home" class="btn btn-sm btn-default">Back</a>
          </div>
      </div>

        </div>
    </div>
</div>
