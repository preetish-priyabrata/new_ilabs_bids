<?php
$commerical_email_id=$this->session->userdata('commerical_email_id');
if(empty($commerical_email_id)){

	redirect('buy-logout-by-pass');
}
$otp=rand();
$Slno_bid=$value=$value; // serial id bid master_id
$value1=$value1; // category_id
$result_drafted=$this->comm_eva_db->commerical_bid_details_information_completed($Slno_bid,6);
$mode_bid=$result_drafted['bid_list'][0]->mode_bid;
$buyer_slno=$result_drafted['bid_list'][0]->buyer_slno;
switch ($mode_bid) {
	case 'Closed Bid':
		$type_bid="commerical-otp-verification-success-view/2/".$Slno_bid."/".$value1."/".$mode_bid."/".$buyer_slno."/".$otp;
		break;
	case 'Simple Bid':
			$type_bid="commerical-otp-verification-success-view/1/".$Slno_bid."/".$value1."/".$mode_bid."/".$buyer_slno."/".$otp;
		break;
	case 'Rank Order Bid':
			$type_bid="commerical-otp-verification-success-view/3/".$Slno_bid."/".$value1."/".$mode_bid."/".$buyer_slno."/".$otp;
		break;

	default:
		$this->session->set_flashdata('error_message', 'The Information Trying access is invalid');
		redirect('user-buyer-home');
		break;
}

$bid_list=$result_drafted['bid_list'][0];
if($result_drafted['no_bid']!=1){
	 $this->session->set_flashdata('error_message', 'The Information Trying access is invalid');
	redirect('user-buyer-home');
}
$mr_slno=$bid_list->mr_slno;
$value4=$buyer_slno=$bid_list->buyer_slno;
$get_mr_id=$this->approver_user->get_approver_mr_no_deatils($mr_slno);
// Bid Detail Dates
$result_drafted_dates=$this->buyer_user->drafted_bid_information_DATE_commerical($Slno_bid,1);
$value_bid_dates=$result_drafted_dates['bid_date_list'][0]; // bid dates
// Bid Detail Information
$result_drafted_bid_details=$this->buyer_user->drafted_bid_information_details_commerical($Slno_bid,1);
$value_bid_details=$result_drafted_bid_details['bid_details_list'][0]; // bid details
//bid vendor inserted
$result_drafted_bid_details_vendor = $this->buyer_user->drafted_bid_vendor_information_details_commerical($Slno_bid,1);
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

 $result_vechile=$this->design_user->get_design_master_mr_vechile_single($edit_id,$mr_no,$mr_slno);

 $query_mr_location_list=$this->design_user->get_design_master_mr_location_details($edit_id,$mr_no,$mr_slno);

 $get_location=$this->design_user->get_design_master_loaction_list();
 $query_item_details_list=$this->design_user->get_design_master_mr_items_material_single($edit_id,$mr_no,$mr_slno);

 $data_get_list_commerical = array('master_bid_id' =>$Slno_bid );
 $query_get_list=$this->db->get_where('master_buyer_material_details',$data_get_list_commerical);
?>

<div class="sidebar-bg"></div>
	<!-- end #sidebar -->
	<!-- begin #content -->
	<div id="content" class="content" >
	<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li class="breadcrumb-item active"><a href="<?=base_url()?>user-buyer-home" class="fa fa-home ">Home</a></li>
			<li class="breadcrumb-item"><a href="<?=base_url()?>buyer-mr-received">Received MR</a></li>
			<li class="breadcrumb-item active">Commerical Details</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header"><small>Buyer commerical Setting</small></h1>
		<!-- end page-header -->
	<?php
		if(!empty($this->session->flashdata('success_message'))){?>
			<div class="alert alert-success fade show">
				<span class="close" data-dismiss="alert">×</span>
				<strong>Success!</strong>
				<?=$this->session->flashdata('success_message')?>
				  <!-- <a href="#" class="alert-link">an example link</a>.  -->
			</div>
	<?php
		}
		if(!empty($this->session->flashdata('error_message'))){?>
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
			<h4 class="panel-title">Commerical REF</h4>
		</div>
		<div class="panel-body">
		
			<form action="#" method="#"  id="bid_tech" name="bid_tech" class="bid_tech">

				<input class="form-control m-b-5"  name="slno_Mr_no" id="slno_Mr_no" type="hidden" value="<?=$bid_list->mr_slno?>" required="" readonly>
				<input class="form-control m-b-5"  name="value4" id="value4" type="hidden" value="<?=$value4?>" required="" readonly>
				<input class="form-control m-b-5"  name="edit_id" id="edit_id" type="hidden" value="<?=$edit_id?>" required="" readonly>
				<input class="form-control m-b-5"  name="status_mr" id="status_mr" type="hidden" value="<?=$status_mr?>" required="" readonly>
				<input class="form-control m-b-5"  name="resubmit_count" id="resubmit_count" type="hidden" value="<?=$resubmit_count?>" required="" readonly>


				<input name="job_code_id" id="job_code_id" type="hidden" value="<?=$job_code_id?>" required="" readonly>
				<input name="materials_id" id="materials_id" type="hidden" value="<?=$materilal_category_id_slno?>" required="" readonly>
				<input name="tech_evalution" id="tech_evalution" type="hidden" value="<?=$techinal_evalution?>" required="" readonly>
				<div class="row">
					<div class="col-md-12 col-lg-12">
						<h4 class="panel-title text-center">General Information</h4>
						<hr style="height: 2px; background:  green">
					</div>


					<div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">MR No </label>
							<div class="col-md-9">
								<input readonly class="form-control-plaintext" name="mr_no" value="<?=$mr_no?>" required="" >
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="job_code">Job Code

							</label>
							<div class="col-md-9">
								<input readonly class="form-control-plaintext" name="job_code_id" value="<?=$job_code_id?>" required="" >

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="materials_id">Material Category </label>
							<div class="col-md-9">
								<?php 	$data_array_materials=$this->design_user->get_design_material_category_list();	?>

									<?php 	if($data_array_materials['no_materials']==2){
												$category_name='No Mateial Found';

											}else if($data_array_materials['no_materials']==1){
												foreach ($data_array_materials['materials_list'] as $key_materials) {
													if($materilal_category_id_slno==$key_materials->Slno_cat){
														$category_name= $key_materials->category_name." [ ".$key_materials->short_code." ]";
													}
												}
											}
									?>

								<input readonly class="form-control-plaintext text-capitalize" name="category_name" value="<?=$category_name?>" id="mr_date_of_creation" type="text" required="" >

							</div>
						</div>


					</div>
					<div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="tech_evalution">Technical Evalution </label>
							<div class="col-md-9">
								<?php if($techinal_evalution==2){?>
								<input type="text" readonly class="form-control-plaintext" value="No" />
								<?php } else if($techinal_evalution==1){ ?>
									<input type="text" readonly class="form-control-plaintext" value="Yes" />
								<?php }?>

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="required_date">Date Required </label>
							<div class="col-md-9">
								<input type="text" readonly name="date_required" class="form-control-plaintext" value="<?=$date_required?>" />
							</div>
						</div>



					</div>
				</div>
				
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
														<input class="form-control m-b-5" placeholder="" name="date_create" id="date_create" type="text" value="<?=date('Y-m-d')?>" required="" readonly style='opacity: 1'>
															<small class="f-s-12 text-grey-darker">---</small>
													</div>
												</div>

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="bid_ref_no">Bid Ref No <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5" onkeyup="get_bid_ref(1)" placeholder="Enter Bid Ref No" name="bid_ref_no" value="<?=$bid_list->bid_ref?>" id="bid_ref_no" type="text" required="" >
														<span id="job_code_error1"></span><br>
														<small class="f-s-12 text-grey-darker">Here enter Bid Ref No Should Be Unique</small>
													</div>
												</div>

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="bid_method">Mode Of Selection <span style="color: red">*</span></label>
													<div class="col-md-9">
												  		<select class="form-control" id="bid_method"  name="bid_method">
												    		<option value="">--Please Select Mod Of Selection--</option>
												    		<option value="Closed Bid" <?php if($bid_list->mode_bid=="Closed Bid"){ echo "selected"; }?>>Closed Bid </option>
												    		<option value="Rank Order Bid" <?php if($bid_list->mode_bid=="Rank Order Bid"){ echo "selected"; }?>>Rank Order Bid </option>
												    		<option value="Simple Bid" <?php if($bid_list->mode_bid=="Simple Bid"){ echo "selected"; }?>>Simple Bid </option>
												  		</select>
												  		<small class="f-s-12 text-grey-darker">Please Select Mode Of Selection</small>
												  	</div>
												</div>

												<!-- part A end -->
											</div>

											<!-- Part B -->
											<div class="col-md-6 col-lg-6">
												<!-- part B Start -->

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="date_publish">Bid Publish Date <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5 datepickers" placeholder="Enter Activity name" name="date_publish" id="date_publish" value="<?=$bid_list->date_publish?>" type="text" required="" >
														<small class="f-s-12 text-grey-darker">Please Select Bid Publish Date</small>
													</div>
												</div>

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="bid_Id">Bid Id <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5" placeholder="Enter Bid Id " onkeyup="get_bid_ref(2)" name="bid_Id" id="bid_Id" type="text"  value="<?=$bid_list->bid_id?>" required="" >
														<span id="job_code_error2"></span><br>
														<small class="f-s-12 text-grey-darker">Here enter Bid Id Should Be Unique</small>
													</div>
												</div>

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="date_closing">Date Of Closing <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5 datepickers" placeholder="Enter Date Of Closing" name="date_closing" id="date_closing" type="text" required="" value="<?=$bid_list->date_closing?>">
														<small class="f-s-12 text-grey-darker">Please Select Date Of Closing</small>
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
													<label class="col-form-label col-md-3" for="bid_title">Bid Title  <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5" placeholder="Enter Bid Title" name="bid_title" id="bid_title" type="text" required="" value="<?=$bid_list->bid_title?>">
														<small class="f-s-12 text-grey-darker">Here enter Bid Title</small>
													</div>
												</div>

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="bid_period_work">Period Of Work  <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5" placeholder="Enter Period Of Work" name="bid_period_work" id="bid_period_work" type="text" required="" value="<?=$value_bid_details->period_work_detail?>">
														<small class="f-s-12 text-grey-darker">Here enter Period Of Work</small>
													</div>
												</div>

												<!-- part c end -->
											</div>
											<!-- part c end here -->
											<!-- part d -->
											<div class="col-md-6 col-lg-6">
												<!-- part d start -->

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3">Work Description  <span style="color: red">*</span></label>
													<div class="col-md-9">
														<textarea class="form-control" rows="3" name="bid_work_description" required=""><?=$value_bid_details->work_detail_bid?></textarea>
														<small class="f-s-12 text-grey-darker"> Please enter Work Description  </small>
													</div>
												</div>

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="bid_location_work">Location Of Work  <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5" placeholder="Enter Location Of Work" name="bid_location_work" id="bid_location_work" type="text" required="" value="<?=$value_bid_details->location_detail?>">
														<small class="f-s-12 text-grey-darker">Here enter Location Of Work</small>
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
					                                        <th><strong>ACE Value</strong></th>

					                                    </tr>
					                                </thead>
					                                <tbody>
					                                	<?php 
					                                		foreach ($query_get_list->result() as $key_value) {
					                                		
					                                		?>
					                                		<tr>
						                                       <td><?=$key_value->item_name?></td>
															   <td><?=$key_value->item_id?></td>
															   <td><?=$key_value->item_qnt?></td>
															   <td><?=$key_value->item_uom?></td>
															   <td>
																	<?php 
															   			$tech_name=json_decode($key_value->tech_name);
															   			foreach ($tech_name as $key_id) {
															   				echo $key_id."<br>";
															   			}
															   		?>
															    </td>
															   <td><?=$key_value->unit_price?></td>

						                                    </tr>

					                                		<?php
					                                		}
					                                		?>
					                                </tbody>
					                            </table>
												<?php





												?>

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
													<label class="col-form-label col-md-3" for="date_start_bid">Bid Start Date <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5 datepickers" placeholder="EnterBid Start Date" name="date_start_bid" id="date_start_bid" type="text" required="" value="<?=$value_bid_dates->bid_start_date?>">
														<small class="f-s-12 text-grey-darker">Please Select Bid Start Date</small>
													</div>
												</div>

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="date_clearfication_bid">Bid Clearfication Date <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5 datepickers" placeholder="EnterBid Clearfication Date" name="date_clearfication_bid" id="date_clearfication_bid" type="text" required="" value="<?=$value_bid_dates->bid_query_closed_date?>">
														<small class="f-s-12 text-grey-darker">Please Select Bid Clearfication Date</small>
													</div>
												</div>
												<!-- part e end -->
											</div>
											<!-- part e end Here -->
											<!-- part f -->
											<div class="col-md-6 col-lg-6">
												<!-- part f start -->
												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="date_closed_bid">Bid Closed Date <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class="form-control m-b-5 datepickers" placeholder="EnterBid Closed Date" name="date_closed_bid" id="date_closed_bid" type="text" required="" value="<?=$value_bid_dates->bid_closed_date?>">
														<small class="f-s-12 text-grey-darker">Please Select Bid Closed Date</small>
													</div>
												</div>

												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3">Detail Description  <span style="color: red">*</span></label>
													<div class="col-md-9">
														<textarea class="form-control" rows="3" name="bid_detail_description" required=""><?=$value_bid_dates->bid_detail_description?></textarea>
														<small class="f-s-12 text-grey-darker"> Please enter Detail Description  </small>
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
										<hr style="background: lightblue">
										<!-- row Start -->
										<div class="row">
											<!-- part g -->
											<div class="col-md-6 col-lg-6">

												<!-- part g start -->
												<div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="job_code">Attach Files <span style="color: red">*</span></label>
													<div class="col-md-9">
														<input class=" m-b-5" placeholder="Enter Activity name" name="job_files" id="job_files" type="file"  >	<span class="btn btn-sm btn-info" id="sub">Upload</span>	<br>
														<small class="f-s-12 text-grey-darker">Job Attachment</small>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<div id="cart-item-files"></div>
													</div>
												</div>
												<!-- part g end -->
											</div>
											<!-- part g end here -->
											<!-- part h -->
											<div class="col-md-6 col-lg-6">
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
							       		Commerical Evaluator / Vendor Selection
							      	</a>
							    </div>
							    <div id="collapseFive" class="collapse" data-parent="#accordion">
							      	<div class="card-body">
							       		<h5 class="text-left">Commerical Evaluator / Vendor Selection</h5>
										<hr style="background: lightblue">
										<!-- row Start -->
										<div class="row">											
											<div class="col-lg-12">
												<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
						                        	<thead>
							                            <tr>
							                                <th><strong>Vendor Name </strong></th>
							                                <th><strong>Vendor View</strong></th>
							                            </tr>
							                        </thead>
							                        <tbody>
												<?php
														if($get_list_vendors['No_vendors']==1){
															foreach($get_list_vendors['vendors_lists'] as $key_vendors){
																$Vendor_email_id=$key_vendors->Vendor_email_id;
												?>
														<tr>
													<?php
														if (in_array($Vendor_email_id, $value_bid_details_vendor,true)){
													?>
															<td><?=$key_vendors->Vendor_name?></td>
															<td>
																<p>Organisation Name : <?=$key_vendors->Organisation_name?></p>
																<p>Vendor Mobile : <?=$key_vendors->Mobile_no?></p>
																<p>Vendor Address : <?=$key_vendors->Organisation_address?></p>
															</td>
													<?php
														}
													?>
					                                </tr>
								                <?php
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
					<!-- </div>
				</div> -->


				<div class="form-group row pull-right">
                    <div class="col-md-12">
						<a href="<?=base_url()?><?=$type_bid?>" class="btn btn-sm btn-lime">View Comparate Statement</a>
						<a  href="<?=base_url()?>user-commerical-evalutor-home" class="btn btn-sm btn-default">Home</a>
                    </div>
                </div>
			</form>
		</div>
	</div>
</div>

