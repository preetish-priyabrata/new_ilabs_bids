<?php
$email_id=$this->session->userdata('buy_email_id');
if(empty($email_id)){

	redirect('buy-logout-by-pass');
}
$value=$value; // bid slno
$id=$value1=$value1; // mateial category status

$results_pending=$this->buyer_user->buyer_queries_new_bid($value,0);
$results_responds=$this->buyer_user->buyer_queries_new_bid($value,1);
$results_pending_respond=$this->buyer_user->buyer_queries_new_bid($value,0);
?>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
<div class="sidebar-bg"></div>
		<!-- end #sidebar -->

		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item active"><a href="#" class="fa fa-home ">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Query Bid Pending Information</a></li>
				<li class="breadcrumb-item active">Query Bid Respond Information</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Query Pending</h1>
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

						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">Query Bid Technical Information</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<?php


						// Array ( [no_bid] => 1 [bid_list] => Array ( [0] => stdClass Object ( [Slno_bid] => 1 [buyer_slno] => 1 [bid_date_entry] => 2018-12-03 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [status_bid] => 4 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [bid_title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [bid_description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [data_entry] => 2018-12-03 14:55:44 [bid_creator_id] => buy1@ilab.com ) ) )

						?>
						<table class="display vendor_example" style="width:100%">
					        <thead>
					            <tr>
					                <th>Slno .</th>
					                <th>Vendor Name</th>
					              	<th>Query</th>
					                <th>Action</th>
					            </tr>
					        </thead>
					        <tbody>
										<?php
										$X=0;
										if($results_pending['no_bid_query']==1){
											foreach ($results_pending['bid_query_list'] as $key_pending) {
												$X++;

												?>
												<tr>
														<td><?=$X?></td>
														<td><?=$key_pending->Vendor_id?></td>
														<td><?=$key_pending->query_details?>
															<br/>
															<small><?=$key_pending->date_query?></small>
														</td>
														<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal<?=$key_pending->Slno_query?>">Reply</button></td>
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
			<!-- end panel -->
		</div>
		<!-- end #content -->


<div class="sidebar-bg"></div>
		<!-- end #sidebar -->

		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->

			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Query Respond</h1>
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

						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">Query Respond Bid Technical Information</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<?php

						// print_r($result_drafted);
						// Array ( [no_bid] => 1 [bid_list] => Array ( [0] => stdClass Object ( [Slno_bid] => 1 [buyer_slno] => 1 [bid_date_entry] => 2018-12-03 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [status_bid] => 4 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [bid_title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [bid_description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [data_entry] => 2018-12-03 14:55:44 [bid_creator_id] => buy1@ilab.com ) ) )

						?>
						<table  class="vendor_example" style="width:100%">
					        <thead>
					            <tr>
					                <th>Slno .</th>
					                <th>Vendor Name</th>
					              	<th>Query</th>
					                <th>Respond</th>
					            </tr>
					        </thead>
					        <tbody>
										<?php
										$X=0;
										if($results_responds['no_bid_query']==1){
											foreach ($results_responds['bid_query_list'] as $key_responds) {
												$X++;

												?>
												<tr>
														<td><?=$X?></td>
														<td><?=$key_responds->Vendor_id?></td>
														<td><?=$key_responds->query_details?>
															<br/>
															<small><?=$key_responds->date_query?></small>
														</td>
														<td><?=$key_responds->response_detail?>
															<br/>
															<small><?=$key_responds->date_respond?></small></td>
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
			<!-- end panel -->
		</div>
		<!-- end #content -->

		<?php
if($results_pending_respond['no_bid_query']==1){
foreach ($results_pending_respond['bid_query_list'] as $key_responds_pend) {

		?>


		<!-- The Modal -->
<div class="modal" id="myModal<?=$key_responds_pend->Slno_query?>">
  <div class="modal-dialog">
    <div class="modal-content">
     <form action="<?=base_url()?>buyer-query-respond-technical" method="POST" >
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title"><?=$key_responds_pend->query_details?></h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
				<input type="hidden" name="Slno_query" value="<?=$key_responds_pend->Slno_query?>">
					<input type="hidden" name="category_id" value="<?=$id?>">
					<input type="hidden" name="value" value="<?=$value?>">
        <label class="">Responds : </label><textarea required name="respond_name"></textarea>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
     </form>
    </div>
  </div>
</div>
<?php } } ?>
