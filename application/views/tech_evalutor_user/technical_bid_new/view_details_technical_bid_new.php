<?php 
$technical_email_id=$this->session->userdata('technical_email_id');
if(empty($technical_email_id)){
	
	redirect('tech-evalutor-logout-by-pass');
}
$Slno_bid=$value=$value; // whichj contail bid information which
$value1=$value1; // material id of vendor
$tech_slno=$this->session->userdata('tech_slno');
$list_success_bid=$this->tech_eva_db->technical_evaluator_bid_new_bid_information($tech_slno,$value);
if($list_success_bid['no_bid']!=1){
	$this->session->set_flashdata('error_message',  'Something went wrong Try Again In page please contact admin user');
    redirect('user-technical-evalutor-home');
}
$result_drafted=$this->tech_eva_db->technical_evalutor_get_bid_information($value);
$result_vendor_list=$this->tech_eva_db->technical_evalutor_get_vendor_information($value);// vendor information
$bid_list=$result_drafted['bid_list'][0];

$mr_slno=$bid_list->mr_slno;
	$value4=$buyer_slno=$bid_list->buyer_slno;
	$get_mr_id=$this->approver_user->get_approver_mr_no_deatils($mr_slno);
	// Bid Detail Dates
	$result_drafted_dates=$this->buyer_user->drafted_bid_information_DATE($Slno_bid,1);
	$value_bid_dates=$result_drafted_dates['bid_date_list'][0]; // bid dates
	// Bid Detail Information
	$result_drafted_bid_details=$this->buyer_user->drafted_bid_information_details($Slno_bid,1);
	$value_bid_details=$result_drafted_bid_details['bid_details_list'][0]; // bid details
	//bid vendor inserted
	$result_drafted_bid_details_vendor = $this->buyer_user->drafted_bid_vendor_information_details($Slno_bid,1);
	foreach ($result_drafted_bid_details_vendor['bid_vendors_list'] as $key) {
		$value_bid_details_vendor[]=$key->vendor_id;
	}

		$mr_no=$get_mr_id['mr_details'][0]->mr_no;
	$job_code_id=$get_mr_id['mr_details'][0]->job_code_id;
	$materilal_category_id_slno=$get_mr_id['mr_details'][0]->materilal_category_id_slno;
	$approver_id=$get_mr_id['mr_details'][0]->approver_id;
	$techinal_evalution=$get_mr_id['mr_details'][0]->techinal_evalution;
	$date_required=$get_mr_id['mr_details'][0]->date_required;
	$date_creation=$get_mr_id['mr_details'][0]->date_creation;
	$edit_id=$get_mr_id['mr_details'][0]->edit_id;
	$status_mr=$get_mr_id['mr_details'][0]->status;
	$resubmit_count=$get_mr_id['mr_details'][0]->resubmit_count;
	// $query_item_details_list=$this->design_user->get_design_master_mr_items_material_single($edit_id,$mr_no,$mr_slno);
	$result_file=$this->design_user->get_design_mr_file_list($mr_slno,$mr_no);

	$get_list_vendors=$this->buyer_user->get_buyer_vendors_list($value1);

	

	$query_item_details_list=$this->design_user->get_design_master_mr_items_material_single($edit_id,$mr_no,$mr_slno);

?>

<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item active"><a href="#" class="fa fa-home ">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Bid Information</a></li>
				<li class="breadcrumb-item"><a href="<?=base_url()?>user-technical-evaluator-bid-new-list">Technical Bid Active Bid </a></li>
				<li class="breadcrumb-item active">Bid Detail Information</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Bid Detail Information</h1>
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
			 // print_r($result_vendor_list);
			 // Array ( [no_bid] => 1 [bid_ids_list] => Array ( [0] => stdClass Object ( [slno_bid_tech_id] => 1 [bid_slno] => 3 [buyer_slno] => 1 [Technical_id_person] => 19 [master_bid_id] => 1 [status_bid] => 1 [view_status] => 0 [Slno_bid] => 1 [bid_date_entry] => 2018-12-03 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [bid_title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [bid_description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [data_entry] => 2018-12-03 14:55:44 [bid_creator_id] => buy1@ilab.com [date_publish] => 2018-12-06 [date_closing] => 2018-12-30 ) ) ) 
			 // 
			 // Array ( [no_bid] => 1 [bid_ids_list] => Array ( [0] => stdClass Object ( [slno_bid_tech_id] => 1 [bid_slno] => 3 [buyer_slno] => 1 [Technical_id_person] => 19 [master_bid_id] => 1 [status_bid] => 1 [view_status] => 0 [Slno_bid] => 1 [bid_date_entry] => 2018-12-03 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [bid_title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [bid_description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [data_entry] => 2018-12-03 14:55:44 [bid_creator_id] => buy1@ilab.com [date_publish] => 2018-12-06 [date_closing] => 2018-12-30 [Slno_bid_date] => 1 [bid_start_date] => 2018-12-04 [bid_closed_date] => 2018-12-15 [bid_query_closed_date] => 2018-12-06 [status] => 1 [bid_detail_description] => What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ) ) ) 
			 // 
			 // 
			 // 
			 // Array ( [no_bid_vendors] => 1 [bid_vendors_list] => Array ( [0] => stdClass Object ( [slno_vendor] => 1 [bid_slno] => 3 [buyer_slno] => 1 [vendor_id] => ven111@gmail.com [status] => 1 [approval_status] => [submission_status] => [submission_count] => 0 [title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [date_start] => 2018-12-04 [date_end] => 2018-12-15 [query_end_date] => 2018-12-06 [master_bid_id] => 1 [view_status] => 0 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [date_entry] => 2018-12-03 14:55:44 [date_update] => 2018-12-10 21:18:10 [status_active] => 1 [status_view] => 5 [Slno_vendor] => 3 [Vendor_name] => ven10 [Vendor_email_id] => ven111@gmail.com [Mobile_no] => 985676768 [Organisation_name] => xyz [Password] => 111 [Password_hash] => 698d51a19d8a121ce581499d7b701668 [Status] => 1 [Date_entry] => 2018-09-26 [Time_entry] => 15:14:25 [Vendor_desc] => ttt [Organisation_address] => xxxt ) [1] => stdClass Object ( [slno_vendor] => 2 [bid_slno] => 3 [buyer_slno] => 1 [vendor_id] => ven121@gmail.com [status] => 1 [approval_status] => 0 [submission_status] => 1 [submission_count] => 1 [title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [date_start] => 2018-12-04 [date_end] => 2018-12-15 [query_end_date] => 2018-12-06 [master_bid_id] => 1 [view_status] => 0 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [date_entry] => 2018-12-03 14:55:44 [date_update] => 2018-12-11 12:34:56 [status_active] => 1 [status_view] => 7 [Slno_vendor] => 4 [Vendor_name] => INFOLEX METAMORF [Vendor_email_id] => ven121@gmail.com [Mobile_no] => 76673498510 [Organisation_name] => INFOLEX METAMORF BUSINESS SOLUTIONS PRIVATE LIMITED [Password] => 141 [Password_hash] => 0f28b5d49b3020afeecd95b4009adf4c [Status] => 1 [Date_entry] => 2018-09-26 [Time_entry] => 15:24:14 [Vendor_desc] => xxxy [Organisation_address] => No.3, 3rd Main, Bahubalinagar, MES Ring Road, Jalahalli Post Bangalore Bangalore KA 560013 IN ) [2] => stdClass Object ( [slno_vendor] => 3 [bid_slno] => 3 [buyer_slno] => 1 [vendor_id] => ven221@gmail.com [status] => 1 [approval_status] => [submission_status] => [submission_count] => 0 [title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [date_start] => 2018-12-04 [date_end] => 2018-12-15 [query_end_date] => 2018-12-06 [master_bid_id] => 1 [view_status] => 0 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [date_entry] => 2018-12-03 14:55:44 [date_update] => 2018-12-14 17:26:07 [status_active] => 1 [status_view] => 6 [Slno_vendor] => 5 [Vendor_name] => Vendor 4 [Vendor_email_id] => ven221@gmail.com [Mobile_no] => 8635787011 [Organisation_name] => T&T [Password] => 5432 [Password_hash] => 2e92962c0b6996add9517e4242ea9bdc [Status] => 1 [Date_entry] => 2018-11-13 [Time_entry] => 11:44:36 [Vendor_desc] => abc [Organisation_address] => Chennai ) [3] => stdClass Object ( [slno_vendor] => 4 [bid_slno] => 3 [buyer_slno] => 1 [vendor_id] => ven310@yahoo.com [status] => 1 [approval_status] => [submission_status] => [submission_count] => 0 [title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [date_start] => 2018-12-04 [date_end] => 2018-12-15 [query_end_date] => 2018-12-06 [master_bid_id] => 1 [view_status] => 0 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [date_entry] => 2018-12-03 14:55:44 [date_update] => 2018-12-10 21:18:10 [status_active] => 1 [status_view] => 5 [Slno_vendor] => 7 [Vendor_name] => Vendor 7 [Vendor_email_id] => ven310@yahoo.com [Mobile_no] => 7767443790 [Organisation_name] => ipts [Password] => 567 [Password_hash] => 99c5e07b4d5de9d18c350cdf64c5aa3d [Status] => 1 [Date_entry] => 2018-11-13 [Time_entry] => 11:48:12 [Vendor_desc] => vvvy [Organisation_address] => Jharkhand ) [4] => stdClass Object ( [slno_vendor] => 5 [bid_slno] => 3 [buyer_slno] => 1 [vendor_id] => ven97@gmail.com [status] => 1 [approval_status] => [submission_status] => [submission_count] => 0 [title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [date_start] => 2018-12-04 [date_end] => 2018-12-15 [query_end_date] => 2018-12-06 [master_bid_id] => 1 [view_status] => 0 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [date_entry] => 2018-12-03 14:55:44 [date_update] => 2018-12-10 21:18:10 [status_active] => 1 [status_view] => 5 [Slno_vendor] => 10 [Vendor_name] => Vendor779 [Vendor_email_id] => ven97@gmail.com [Mobile_no] => 7437878342 [Organisation_name] => AATG [Password] => 8888 [Password_hash] => cf79ae6addba60ad018347359bd144d2 [Status] => 1 [Date_entry] => 2018-11-13 [Time_entry] => 11:54:37 [Vendor_desc] => cvcd [Organisation_address] => ctc ) [5] => stdClass Object ( [slno_vendor] => 6 [bid_slno] => 3 [buyer_slno] => 1 [vendor_id] => ven979@yahoo.com [status] => 1 [approval_status] => [submission_status] => [submission_count] => 0 [title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [date_start] => 2018-12-04 [date_end] => 2018-12-15 [query_end_date] => 2018-12-06 [master_bid_id] => 1 [view_status] => 0 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [date_entry] => 2018-12-03 14:55:44 [date_update] => 2018-12-10 21:18:10 [status_active] => 1 [status_view] => 5 [Slno_vendor] => 11 [Vendor_name] => Vendor55 [Vendor_email_id] => ven979@yahoo.com [Mobile_no] => 7564566850 [Organisation_name] => DDTC [Password] => 7771 [Password_hash] => cd81cfd0a3397761fac44ddbe5ec3349 [Status] => 1 [Date_entry] => 2018-11-13 [Time_entry] => 12:07:01 [Vendor_desc] => gtch [Organisation_address] => RNC ) ) ) 
			 ?>

			<!-- begin panel -->
	<div class="panel panel-inverse">
		<div class="panel-heading">
			<div class="panel-heading-btn">
			
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			</div>
			<h4 class="panel-title">Bid Detail Information</h4>
		</div>
		<div class="panel-body">
			<!-- here information star which need to view and work on it  -->
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div id="accordion">
						<div class="card">
							<div class="card-header text-center">
								<a class="card-link" data-toggle="collapse" href="#collapseOne">
									Basic Details
								</a>
							</div>
							<div id="collapseOne" class="collapse show" data-parent="#accordion">
								<div class="card-body">
									<h5 class="text-left">Basic Details</h5>
									<hr style="background: lightblue">
									<!-- row Start -->
									<div class="row">
										<!-- part A -->
										<div class="col-md-6 col-lg-6">
											<!-- Part A Start  -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_create">Date </label>
												<div class="col-md-9">
													<input readonly  class="form-control-plaintext m-b-5" placeholder="" name="date_create" id="date_create" type="text" value="<?=date('Y-m-d')?>" required="" readonly style='opacity: 1'>

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_ref_no">Bid Ref No</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" onkeyup="get_bid_ref(1)" placeholder="Enter Bid Ref No" name="bid_ref_no" value="<?=$bid_list->bid_ref?>" id="bid_ref_no" type="text" required="" >
													<span id="job_code_error1"></span><br>

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_method">Mode Of Selection</label>
												<div class="col-md-9">
											  		<select disabled class="form-control-plaintext" id="bid_method"  name="bid_method">
											    		<option value="">--Please Select Mod Of Selection--</option>
											    		<option value="Closed Bid" <?php if($bid_list->mode_bid=="Closed Bid"){ echo "selected"; }?>>Closed Bid </option>
											    		<option value="Rank Order Bid" <?php if($bid_list->mode_bid=="Rank Order Bid"){ echo "selected"; }?>>Rank Order Bid </option>
											    		<option value="Simple Bid" <?php if($bid_list->mode_bid=="Simple Bid"){ echo "selected"; }?>>Simple Bid </option>
											  		</select>

											  	</div>
											</div>

											<!-- part A end -->
										</div>

										<!-- Part B -->
										<div class="col-md-6 col-lg-6">
											<!-- part B Start -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_publish">Bid Publish Date</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5 datepickers" placeholder="Enter Activity name" name="date_publish" id="date_publish" value="<?=$bid_list->date_publish?>" type="text" required="" >

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_Id">Bid Id</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" placeholder="Enter Bid Id " onkeyup="get_bid_ref(2)" name="bid_Id" id="bid_Id" type="text"  value="<?=$bid_list->bid_id?>" required="" >
													<span id="job_code_error2"></span><br>

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_closing">Date Of Closing</label>
												<div class="col-md-9">
													<input readonly class="form-control-plaintext m-b-5 datepickers" placeholder="Enter Date Of Closing" name="date_closing" id="date_closing" type="text" required="" value="<?=$bid_list->date_closing?>">

												</div>
											</div>


											<!-- part B End -->
										</div>
										<!-- part B  -->
									</div>
								</div>
							</div>
						</div>
						<!-- part Accordion 1 End -->
						<!-- Part Accordion 2 Start -->
						<div class="card">
							<div class="card-header text-center">
								<a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
									Work Item Details
								</a>
							</div>
							<div id="collapseTwo" class="collapse" data-parent="#accordion">
								<div class="card-body">
									<h5 class="text-left">Work Item Details</h5>
									<hr style="background: lightblue">
									<!-- row Start -->
									<div class="row">
										<!-- part c -->
										<div class="col-md-6 col-lg-6">
											<!-- part c start -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_title">Bid Title </label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" placeholder="Enter Bid Title" name="bid_title" id="bid_title" type="text" required="" value="<?=$bid_list->bid_title?>">

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_period_work">Period Of Work </label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" placeholder="Enter Period Of Work" name="bid_period_work" id="bid_period_work" type="text" required="" value="<?=$value_bid_details->period_work_detail?>">

												</div>
											</div>

											<!-- part c end -->
										</div>
										<!-- part c end here -->
										<!-- part d -->
										<div class="col-md-6 col-lg-6">
											<!-- part d start -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3">Work Description </label>
												<div class="col-md-9">
													<textarea class="form-control-plaintext" rows="3" name="bid_work_description" required=""><?=$value_bid_details->work_detail_bid?></textarea>

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_location_work">Location Of Work </label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" placeholder="Enter Location Of Work" name="bid_location_work" id="bid_location_work" type="text" required="" value="<?=$value_bid_details->location_detail?>">

												</div>
											</div>


											<!-- part d end -->
										</div>
										<!-- part d end here -->
									</div>
									<hr>
									<div class="row">
										<div class="col-lg-12">
											<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
					                                <thead>
					                                    <tr>
					                                        <th><strong>Name</strong></th>
					                                        <th><strong>id</strong></th>
					                                        <th><strong>Quantity</strong></th>
					                                        <th><strong>UOM</strong></th>
					                                        <th><strong>Technical Parameter</strong></th>

					                                    </tr>
					                                </thead>
					                                <tbody>

					                                		<?php
					                                	// echo "<pre>";
					                                		if($query_item_details_list['no_item']==1){
					                                			$item_list=$query_item_details_list['item_list'];
					                                			// print_r($item_list);
					                                			// $this->procurement_user->procurement_mr_item_tech_single();
					                                				foreach ($item_list as $key_item => $value_item) {
					                                					$slno_item_mr=$value_item->slno_item_mr;
					                                					$get_technical=$this->procurement_user->procurement_mr_item_tech_single($slno_item_mr);
																		$code=$value_item->material_item_id;
																		 $material_quantity=$value_item->material_quantity;
																		$query_item_details=$this->design_user->get_design_master_items_material_single($code);
																		// print_r($get_technical);

																		// $get_technical=$this->procurement_user->procurement_mr_item_tech_single;

					                                			?>
					                                			<tr>
					                                				<td><?=$query_item_details['materials_list'][0]->item_name?></td>
					                                				<td><?=$query_item_details['materials_list'][0]->item_id?></td>
					                                				<td><?=$material_quantity?></td>
							                                      	<td><?=$query_item_details['materials_list'][0]->item_uom?></td>
							                                       	<td>
							                                       		<?php

							                                       		if($get_technical['no_received']==1){
							                                       			$procuremenr_list_single=$get_technical['procuremenr_list_single'];
							                                       			foreach ($procuremenr_list_single as $key_value_technical) {
							                                       				echo $key_value_technical->tech_name."<br>";
							                                       				# code...
							                                       			}
							                                       		}else{
							                                       			echo " No Parameter is been Selected";
							                                       		}
							                                       		?>

							                                       	</td>


					                                			</tr>
					                                			<?php

					                                		}
					                                		}?>

					                                </tbody>
					                            </table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- part Accordion 2 End -->
						<!-- Part Accordion 3 Start -->
						<div class="card">
							<div class="card-header text-center">
								<a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
									Critical Date
								</a>
							</div>
							<div id="collapseThree" class="collapse" data-parent="#accordion">
								<div class="card-body">
									<h5 class="text-left">Work Item Details</h5>
									<hr style="background: lightblue">
									<!-- row Start -->
									<div class="row">
										<!-- part e -->
										<div class="col-md-6 col-lg-6">
											<!-- part e start -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_start_bid">Bid Start Date</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5 datepickers" placeholder="EnterBid Start Date" name="date_start_bid" id="date_start_bid" type="text" required="" value="<?=$value_bid_dates->bid_start_date?>">

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_clearfication_bid">Bid Clearfication Date</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5 datepickers" placeholder="EnterBid Clearfication Date" name="date_clearfication_bid" id="date_clearfication_bid" type="text" required="" value="<?=$value_bid_dates->bid_query_closed_date?>">

												</div>
											</div>
											<!-- part e end -->
										</div>
										<!-- part e end Here -->
										<!-- part f -->
										<div class="col-md-6 col-lg-6">
											<!-- part f start -->
											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_closed_bid">Bid Closed Date</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5 datepickers" placeholder="EnterBid Closed Date" name="date_closed_bid" id="date_closed_bid" type="text" required="" value="<?=$value_bid_dates->bid_closed_date?>">

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3">Detail Description </label>
												<div class="col-md-9">
													<textarea class="form-control-plaintext" rows="3" name="bid_detail_description" required=""><?=$value_bid_dates->bid_detail_description?></textarea>

												</div>
											</div>
											<!-- part f end -->
										</div>
										<!-- part f end Here -->
									</div>
									<!-- row end here -->
								</div>
							</div>
						</div>
						<!-- part Accordion 3 End -->
						<!-- Part Accordion 4 Start -->
						<div class="card">
							<div class="card-header text-center">
								<a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">
									Attach Files
								</a>
							</div>
							<div id="collapseFour" class="collapse" data-parent="#accordion">
								<div class="card-body">
									<h5 class="text-left">Attach Files Details</h5>
									<hr style="background: lightblue;">
									<!-- row Start -->
									<div class="row">
										<!-- part h -->
										<div class="col-md-12 col-lg-12">
											<!-- part h start -->
											<div class="row">
												<div class="col-lg-12">
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
											<!-- part h end -->
										</div>
										<!-- part h end here -->
									</div>
									<!-- row end here -->
								</div>
							</div>
						</div>
						<!-- part Accordion 4 End -->
						<div class="card">
							<div class="card-header text-center">
							  	<a class="collapsed card-link" data-toggle="collapse" href="#collapseFive">
							   		 Vendor Section
							   	</a>
							</div>
							<div id="collapseFive" class="collapse" data-parent="#accordion">
							   	<div class="card-body">
							   		<h5 class="text-left"> Vendor Section</h5>
									<hr style="background: lightblue">
									<!-- row Start -->
									<div class="row">
										<div class="col-md-12 col-lg-12">
											<div class="row">
												<div class="col-lg-12">
													<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
									                	<thead>
								                            <tr>
								                                <th><strong>Vendor Name </strong></th>
								                                <th><strong>Vendor Details</strong></th>
								                                <th><strong>Submited Status</strong></th>
								                                <th><strong>Approved Status</strong></th>
								                                <th><strong>Action</strong></th>
								                            </tr>
								                        </thead>
									                    <tbody>
									                    	<?php
									                            if($result_vendor_list['no_bid_vendors']==1){
										                        	foreach($result_vendor_list['bid_vendors_list'] as $key_vendors){
																		$Vendor_email_id=$key_vendors->Vendor_email_id;
																		if (in_array($Vendor_email_id, $value_bid_details_vendor,true)){
																?>          <tr>
											                                    <td> <?=$key_vendors->Vendor_name?></td>
																				<td>
																					<p>
																						Organisation Name : <?=$key_vendors->Organisation_name?>					
																					</p>
																					<p>
																						Vendor Mobile : <?=$key_vendors->Mobile_no?>
																					</p>
																					<p>
																						Vendor Address : <?=$key_vendors->Organisation_address?>
																					</p>
																				</td>
																				<td>
																					<?php 
																						if(!empty($key_vendors->submission_status) && ($key_vendors->submission_status==1)){
																							if(!empty($key_vendors->approval_status) && ($key_vendors->approval_status==1)){
																								if($key_vendors->approval_status==1){
																									echo "<b style='color : green'>Approved</b>";
																								}else{
																										echo "<b style='color : red'>Resubmission Of Bid</b>";
																								}
																							}else{
																								if(($key_vendors->status_view==6)){
																									echo "<b style='color : lightgreen'>Bid Is View Not Submited</b>"; 
																								}else if(($key_vendors->status_view==8)){
																									echo "<b style='color : lightgreen'>Resubmission of Bid</b>";
																								}else{
																									echo "<b style='color : lightgreen'>Approve Is Pending</b>";
																								}
																								
																							}
																						}else{
																							echo "<b style='color : orange'>Tender Is Not Submited</b>";
																						}
																					?>
																				</td>
																				<td>
																					<?php 
																					
																						if(!empty($key_vendors->status_view) && ($key_vendors->status_view==7)){
																							
																								if(!empty($key_vendors->submission_status) && ($key_vendors->submission_status==1)){
																									echo "<b style='color : green'>Submited</b>";
																								}else{
																										echo "<b style='color : red'>Not Submited </b>";
																								}
																							
																						}else if(($key_vendors->status_view==6)){
																							echo "<b style='color : lightgreen'>Bid Is View Not Submited</b>"; 
																						}else if(($key_vendors->status_view==8)){
																							echo "<b style='color : lightgreen'>Resubmission of Bid</b>";
																						}else{
																							echo "<b style='color : orange'>Not Viewed </b>";
																						}
																					?>
																				</td>
																				<td>
																					<?php 
																						if(!empty($key_vendors->submission_status) && ($key_vendors->submission_status==1)){
																							if(!empty($key_vendors->approval_status) && ($key_vendors->approval_status==1)){
																								if($key_vendors->approval_status==1){
																									echo "<b style='color : green'>----</b>";
																								}else{
																										echo "<b style='color : red'>----</b>";
																								}
																							}else{
																								?>
																								<a href="<?=base_url()?>technical-evalutor-get-approved-reject/<?=$key_vendors->slno_vendor?>/<?=$key_vendors->master_bid_id?>/<?=$value1?>"> Click View </a>
																								<?php
																							}
																						}else{
																							echo "<b style='color : orange'>Please Wait</b>";
																						}
																					?>
																				</td>
																			</tr>
															<?php		}													
									                         	 	}
									                         	}
									                        ?>
									                    </tbody>
									                </table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- here it end here  -->			
		</div>
	</div>
	<!-- end panel -->
</div>
<!-- end #content -->