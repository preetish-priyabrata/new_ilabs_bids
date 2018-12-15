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
				<li class="breadcrumb-item active">View Details List of Technical Bid New List</li>
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
			 <div class="panel panel-inverse">
		<div class="panel-heading">
			<div class="panel-heading-btn">
				<!-- <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a> -->
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			</div>
			<h4 class="panel-title">View Details Technical Bid New</h4>
		</div>
		<div class="panel-body">
			


            <form action="<?=base_url()?>bid-tech-entry" method="POST"  id="bid_tech" name="bid_tech" class="bid_tech">
					

               <div id="accordion">
    <div class="card">
      <div class="card-header text-center">
        <a class="card-link" data-toggle="collapse " href="#collapseOne">
          Basic Details
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-parent="#accordion">
        <div class="card-body">
        	<div class="row">
              <div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Date </label>
							<div class="col-md-9">
								<input class="form-control m-b-5" placeholder=""name="date" name="date" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="job_code">Bid Ref No
							</label>
							<div class="col-md-9">
							<input class="form-control m-b-5" placeholder=""name="Bid Ref No" name="Bid Ref No" >
							<small class="f-s-12 text-grey-darker"></small>	
							</div>
						</div>
			</div>
					<div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Bid Publish Date</label>
							<div class="col-md-9">
								<input class="form-control m-b-5" placeholder=""name="Bid Publish Date" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Bid Id</label>
							<div class="col-md-9">
								<input class="form-control m-b-5" placeholder=""name="Bid Id" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
					</div>
                    
                   <div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Mode of Selection</label>
							<div class="col-md-9">
								<input class="form-control m-b-5" placeholder=""name="Mode of Selection" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
					</div>
                   <div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Date of Closing</label>
							<div class="col-md-9">
								<input class="form-control m-b-5" placeholder=""name="Date of Closing" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
					</div>

         </div>
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
          <div class="row">
              <div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Bid Title </label>
							<div class="col-md-9">
								<input class="form-control m-b-5" placeholder=""name="" name="Bid Title" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Period of Work</label>
							<div class="col-md-9">
								<input class="form-control m-b-5" placeholder=""name="" name="Period of Work" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
			  </div>
			  <div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Work Description</label>
							<div class="col-md-9">
								<textarea input class="form-control m-b-5" placeholder=""name="Work Description" name="" >
							</textarea>
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Location of Work</label>
							<div class="col-md-9">
								<input class="form-control m-b-5" placeholder=""name="Location Of Work" name="Location of Work" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
			  </div>
        </div>

     </div>
    </div>

    <div class="container">
  <table class="table table-bordered">
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
      </tr>
    </thead>
    <tbody>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
       </tr> 
      
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
       </tr> 
       <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
       </tr> 
       <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
       </tr> 
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
       </tr> 
    </tbody>
  </table>
   </div>

</div>											

   <div class="card">
      <div class="card-header text-center">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
          Critical Dates
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
          <div class="row">
              <div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Bid Start Date </label>
							<div class="col-md-9">
								<input class="form-control m-b-5 datepickers" placeholder=""name="Bid Start Date" name="Bid Start Date" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Bid Clearification Date</label>
							<div class="col-md-9">
								<input class="form-control m-b-5 datepickers" placeholder=""name="Bid Clearification Date" name="Bid Clearification Date" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
						
			 </div>
             <div class="col-md-6 col-lg-6">
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Bid Closed Date</label>
							<div class="col-md-9">
								<input class="form-control m-b-5 datepickers" placeholder=""name="" name="Bid Closed Date" >
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="activity_name">Detail Description</label>
							<div class="col-md-9">
								<textarea input class="form-control m-b-5" placeholder=""name="Detail Description" name="Detail Description" ></textarea>
							<small class="f-s-12 text-grey-darker"></small>
							</div>
						</div>
			 </div>
           </div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header text-center">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
          Attach File
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <div class="row">
													<h5 class="text-left">Attach Files Details</h5>
										<hr style="background: lightblue">
										<!-- row Start -->
										<div class="row">
											<!-- part g -->
											<div class="col-md-6 col-lg-6">

												<!-- part g start -->
												<!-- <div class="form-group row m-b-15">
													<label class="col-form-label col-md-3" for="job_code">Attach Files <span style="color: red"></span></label>
													<div class="col-md-9">
														<input class=" m-b-5" placeholder="Enter Activity name" name="job_files" id="job_files" type="file"  >	<span class="btn btn-sm btn-info" id="sub">Upload</span>	<br>
														<small class="f-s-12 text-grey-darker">Job Attachment</small>
													</div>
												</div>
												 -->
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
		</div>
       </div>
      </div>
    </div>
    



    <div class="card">
      <div class="card-header text-center">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
          Technical Evaluator / Vendor Selection
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
          


















        </div>
      </div>
    </div>
    









  </div>
</div>
    

</form>