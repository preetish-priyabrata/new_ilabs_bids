<?php
$technical_email_id=$this->session->userdata('technical_email_id');
if(empty($technical_email_id)){

	redirect('tech-evalutor-logout-by-pass');
}
$tech_slno=$this->session->userdata('tech_slno');
$list_success_bid=$this->tech_eva_db->technical_evaluator_bid_new_lists($tech_slno);
// $data=array'technical_email_id'=>$technical_email_id,'status_active' =>1;
// $query=$this->db->get_where('master_bid_technicalevaluation',$data);
?>


<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

<div class="sidebar-bg"></div>
		<!-- end #sidebar -->

		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="<?=base_url()?>user-buyer-home">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">View Details Technical Bid New</a></li>
				<li class="breadcrumb-item active">View Details of Technical Bid New List</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">View Details for List of Technical Bid New</h1>
			<!-- end page-header -->
			<?php if(!empty($this->session->flashdata('success_message'))){?>
			<div class="alert alert-success fade show">
			  <span class="close" data-dismiss="alert">×</span>
			  <strong>Success!</strong>
			  <?=$this->session->flashdata('success_message')?>
			  <!-- <a href="#" class="alert-link">an example link</a>.  -->
			</div>
			<?php
			}
			?>



<div class="sidebar-bg"></div>
	<!-- end #sidebar -->
	<!-- begin #content -->
	<div id="content" class="content" >
	<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li class="breadcrumb-item active"><a href="<?=base_url()?>user-buyer-home" class="fa fa-home ">Home</a></li>
			<li class="breadcrumb-item"><a href="<?=base_url()?>buyer-mr-received">Received MR</a></li>
			<li class="breadcrumb-item active">Technical View Details</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header"><small>Technical Tech Setting</small></h1>
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
			<h4 class="panel-title">View Details of Techinical REF</h4>
		</div>
		<div class="panel-body">
			<div class="alert alert-secondary">
                <span style="color: red"> *</span> All mandatory fields shall be duly filled up
            </div>
			<form action="<?=base_url()?>bid-tech-entry" method="POST"  id="bid_tech" name="bid_tech" class="bid_tech">

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
							<label class="col-form-label col-md-3" for="activity_name">Title </label>
							<div class="col-md-9">
								<input readonly class="form-control-plaintext" name="mr_no" value="<?=$mr_no?>" required="" >
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="job_code">Description

							</label>
							<div class="col-md-9">
								<input readonly class="form-control-plaintext" name="job_code_id" value="<?=$job_code_id?>" required="" >

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="materials_id">Ref Id </label>
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
							<label class="col-form-label col-md-3" for="tech_evalution">Start Date </label>
							<div class="col-md-9">
								<?php if($techinal_evalution==2){?>
								<input type="text" readonly class="form-control-plaintext" value="No" />
								<?php } else if($techinal_evalution==1){ ?>
									<input type="text" readonly class="form-control-plaintext" value="Yes" />
								<?php }?>

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="required_date">End Date </label>
							<div class="col-md-9">
								<input type="text" readonly name="date_required" class="form-control-plaintext" value="<?=$date_required?>" />
							</div>
						</div>
                    <div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="required_date">Reference Date </label>
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
