<?php 
$commerical_email_id=$this->session->userdata('commerical_email_id');
if(empty($commerical_email_id)){
	
	redirect('comm-evalutor-logout-by-pass');
}
$Slno_bid=$value=$value; // whichj contail bid information which
$value1=$value1; // material id of vendor
$comm_slno=$this->session->userdata('comm_slno');
$list_success_bid=$this->comm_eva_db->commerical_evaluator_bid_new_bid_information($comm_slno,$value);
if($list_success_bid['no_bid']!=1){
	$this->session->set_flashdata('error_message',  'Something went wrong Try Again In page please contact admin user');
    redirect('user-commerical-evalutor-home');
}
//$result_drafted=$this->tech_eva_db->technical_evalutor_get_bid_information($value);
//$result_vendor_list=$this->tech_eva_db->technical_evalutor_get_vendor_information($value);// vendor information
//$bid_list=$result_drafted['bid_list'][0];

//$mr_slno=$bid_list->mr_slno;
	//$value4=$buyer_slno=$bid_list->buyer_slno;
	//$get_mr_id=$this->approver_user->get_approver_mr_no_deatils($mr_slno);
	// Bid Detail Dates
	//$result_drafted_dates=$this->buyer_user->drafted_bid_information_DATE($Slno_bid,1);
	//$value_bid_dates=$result_drafted_dates['bid_date_list'][0]; // bid dates
	// Bid Detail Information
	//$result_drafted_bid_details=$this->buyer_user->drafted_bid_information_details($Slno_bid,1);
	//$value_bid_details=$result_drafted_bid_details['bid_details_list'][0]; // bid details
	//bid vendor inserted
	//$result_drafted_bid_details_vendor = $this->buyer_user->drafted_bid_vendor_information_details($Slno_bid,1);
	//foreach ($result_drafted_bid_details_vendor['bid_vendors_list'] as $key) {
		//$value_bid_details_vendor[]=$key->vendor_id;
	//}

		//$mr_no=$get_mr_id['mr_details'][0]->mr_no;
	//$job_code_id=$get_mr_id['mr_details'][0]->job_code_id;
	//$materilal_category_id_slno=$get_mr_id['mr_details'][0]->materilal_category_id_slno;
	//$approver_id=$get_mr_id['mr_details'][0]->approver_id;
	//$techinal_evalution=$get_mr_id['mr_details'][0]->techinal_evalution;
	//$date_required=$get_mr_id['mr_details'][0]->date_required;
	//$date_creation=$get_mr_id['mr_details'][0]->date_creation;
	//$edit_id=$get_mr_id['mr_details'][0]->edit_id;
	//$status_mr=$get_mr_id['mr_details'][0]->status;
	//$resubmit_count=$get_mr_id['mr_details'][0]->resubmit_count;
	// $query_item_details_list=$this->design_user->get_design_master_mr_items_material_single($edit_id,$mr_no,$mr_slno);
	//$result_file=$this->design_user->get_design_mr_file_list($mr_slno,$mr_no);

	//$get_list_vendors=$this->buyer_user->get_buyer_vendors_list($value1);

	

	//$query_item_details_list=$this->design_user->get_design_master_mr_items_material_single($edit_id,$mr_no,$mr_slno);

?>
<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item active"><a href="#" class="fa fa-home ">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Bid Information</a></li>
				<li class="breadcrumb-item"><a href="<?=base_url()?>user-technical-evaluator-bid-new-list">Commercial Bid Active Bid </a></li>
				<li class="breadcrumb-item active">Bid Details Information</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Bid Details Information</h1>
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

	<div class="panel panel-inverse">
		<div class="panel-heading">
			<div class="panel-heading-btn">
			
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			</div>
			<h4 class="panel-title">Bid Details Information</h4>
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
												<label class="col-form-label col-md-3" for="bid_ref_no">Bid Ref No.</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" onkeyup="get_bid_ref(1)" placeholder="Enter Bid Ref No" name="bid_ref_no" value=" "bid_ref_no" type="text" required="" >
													
												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_method">Mode Of Selection</label>
												<div class="col-md-9">
											  		<select disabled class="form-control-plaintext" id="bid_method"  name="bid_method">
											    		<option value="">--Please Select Mode Of Selection--</option>
											    		<option value="Closed Bid" <?php if($bid_list->mode_bid=="Closed Bid"){ echo "selected"; }?>>Closed Bid </option>
											    		<option value="Rank Order Bid" <?php if($bid_list->mode_bid=="Rank Order Bid"){ echo "selected"; }?>>Rank Order Bid </option>
											    		<option value="Simple Bid" <?php if($bid_list->mode_bid=="Simple Bid"){ echo "selected"; }?>>Simple Bid </option>
											  		</select>

											  	</div>
											</div>
										</div>
                                        <div class="col-md-6 col-lg-6">
											<!-- part B Start -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_publish">Bid Publish Date</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5 datepickers" placeholder="Enter Activity name" name="date_publish" id="date_publish" value=" "text" required="" >

												</div>
											</div>
                                            
											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_Id">Bid Id</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" placeholder="Enter Bid id" name="bid_Id" id="bid_Id" value=" "text" required="" >

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_create">Date of Closing</label>
												<div class="col-md-9">
													<input readonly  class="form-control-plaintext m-b-5" placeholder="" name="date_closing" id="date_closing" type="text" value=" " required="" >

												</div>
											</div>


											<!-- part B End -->
										 </div>
										<!-- part B  -->
									    </div>
								    </div>
							   </div>
						    </div>
											<!-- part A end -->
						</div>
                    </div>
                </div>             
            </div>
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
                             <div class="row">
										<!-- part c -->
										<div class="col-md-6 col-lg-6">
											<!-- part c start -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_title">Bid Title </label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" placeholder="Enter Bid Title" name="bid_title" id="bid_title" type="text" required="" value=" ">

												</div>
											</div>

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_period_work">Period Of Work </label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" placeholder="Enter Period Of Work" name="bid_period_work" id="bid_period_work" type="text" required="" value=" ">

												</div>
											</div>

											<!-- part c end -->
										</div>
										<!-- part c end here -->
										<!-- part d -->
										<div class="col-md-6 col-lg-6">
											<!-- part d start -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_publish">Work Description</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5 datepickers" name="bid_detail_description" id="bid_detail_description" value=" "text" required="" >

												</div>
											</div>
											

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="bid_location_work">Location Of Work </label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5" placeholder="Enter Location Of Work" name="bid_location_work" id="bid_location_work" type="text" required="" value=" ">

												</div>
                                            
											</div>
                                            
                                           
                                        
                                             
                                         </div>
                                     </div>
                                         <div class="row">
												<div class="col-lg-12">
													<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
								                        <thead>
								                            <tr>
								                                <th><strong>Name</strong></th>
								                                <th><strong>Id</strong></th>
                                                                <th><strong>Quantity</strong></th>
                                                                 <th><strong>UOM</strong></th>
                                                                 <th><strong>Technical Parameter</strong></th>
								                            </tr>
								                        </thead>
								                        <tbody>
								                            
								                        </tbody>
								                     </table>
												</div>
										 </div>                                                     
                                         
	               		                </div>
	               		        </div> 
	               		    </div>
	            </div>

	               <div class="card">
							<div class="card-header text-center">
								<a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
									Critical Date
								</a>
							</div>
							<div id="collapseThree" class="collapse" data-parent="#accordion">
								<div class="card-body">
									<h5 class="text-left">Critical Dates</h5>
									<hr style="background: lightblue">
									<!-- row Start -->
									<div class="row">
										<!-- part e -->
										<div class="col-md-6 col-lg-6">
											<!-- part e start -->

											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3">Bid Start Date </label>
												<div class="col-md-9">
													<input class="form-control-plaintext" name="bid_start_date" type="text" required="">

												</div>
											</div>
											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3">Bid Clarification Date </label>
												<div class="col-md-9">
													<input class="form-control-plaintext" name="date_clearification_bid" type="text" required="">

												</div>
											</div>
											<!-- part e end -->
										</div>
										<!-- part e end Here -->
										<!-- part f -->
										<div class="col-md-6 col-lg-6">
											<!-- part f start -->
											<div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_publish">Bid Closed Date</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5 datepickers" name="date_closed_bid" id="date_closed_bid" value=" "text" required="" >

												</div>
											</div>
                                            <div class="form-group row m-b-15">
												<label class="col-form-label col-md-3" for="date_publish">Detail Description</label>
												<div class="col-md-9">
													<input class="form-control-plaintext m-b-5 datepickers" name="bid_detail_description" id="bid_detail_description" value=" "text" required="" >

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
								                                <th><strong>Submitted Status</strong></th>
								                                
								                                
								                            </tr>
								                        </thead>
									                    
									                </table>
												</div>
											</div>
											<div class="form-group row pull-right">
                                           <div class="col-md-12">
                                           <button type="submit" class="btn btn-sm btn-primary m-r-5">Click to generate OTP</button>
                                           <a  href="<?=base_url()?>user-commmerical-evalutor-home" class="btn btn-sm btn-success">Back</a> 
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

<!-- end #content -->
								
							

							
								        
