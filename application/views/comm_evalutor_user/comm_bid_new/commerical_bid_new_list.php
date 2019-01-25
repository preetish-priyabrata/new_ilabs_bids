<?php
$commerical_email_id=$this->session->userdata('commerical_email_id');
if(empty($commerical_email_id)){

	redirect('comm-evalutor-logout-by-pass');
}
$comm_slno=$this->session->userdata('comm_slno');
$list_success_bid=$this->comm_eva_db->commerical_evaluator_bid_new_list($comm_slno);
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
				<li class="breadcrumb-item"><a href="javascript:;">Commercial Bid New</a></li>
				<li class="breadcrumb-item active">List of Commercial Bid New List</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">List of Commercial Bid New</h1>
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
			//  print_r($list_success_bid);
			 ?>
			 <div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">

						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>

					<h4 class="panel-title">Commercial Bid New List</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="example_buyer" class="display" style="width:100%">
					        <thead>
					            <tr>
					                <th>Slno .</th>
					                <th>Bid Ref</th>
					                <th>Bid Id.</th>
					                <th>Start Date</th>

					              	<th>End Date</th>

					              	<th>Status</th>
					                <th>Action</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<?php
					        		if($list_success_bid['no_bid']==1){
					        		$x=0;
					        		// Array ( [no_bid] => 1 [bid_ids_list] => Array ( [0] => stdClass Object ( [slno_bid_tech_id] => 1 [bid_slno] => 3 [buyer_slno] => 1 [Technical_id_person] => 19 [master_bid_id] => 1 [status_bid] => 1 [view_status] => 0 [Slno_bid] => 1 [bid_date_entry] => 2018-12-03 [bid_ref] => REF 2018 [bid_id] => REF 2018 [category] => 3 [mode_bid] => Closed Bid [technical_bid_type] => 1 [mr_slno] => 3 [mr_no] => 2018-11-05-pUgws [job_code] => 679034 [edit_id] => 1 [material_category_name] => logistics [ logistics ] [bid_title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [bid_description] => INVITATION OF BIDS FOR SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [data_entry] => 2018-12-03 14:55:44 [bid_creator_id] => buy1@ilab.com [date_publish] => 2018-12-06 [date_closing] => 2018-12-30 ) [1] => stdClass Object ( [slno_bid_tech_id] => 2 [bid_slno] => 8 [buyer_slno] => 5 [Technical_id_person] => 19 [master_bid_id] => 2 [status_bid] => 1 [view_status] => 0 [Slno_bid] => 2 [bid_date_entry] => 2018-12-05 [bid_ref] => ref /2018 f [bid_id] => myt [category] => 2 [mode_bid] => Rank Order Bid [technical_bid_type] => 1 [mr_slno] => 8 [mr_no] => 2018-11-06-EDNHT [job_code] => 189067 [edit_id] => 1 [material_category_name] => make to order items [ moi ] [bid_title] => What is the best online site for practicing aptitude [bid_description] => Comprehensive 29-part course includes ML concepts, algorithms, hands-on projects and industry workflow [data_entry] => 2018-12-05 19:16:03 [bid_creator_id] => buy1@ilab.com [date_publish] => 2018-05-02 [date_closing] => 2018-12-29 ) ) )
					        		foreach ($list_success_bid['bid_ids_list'] as $bid_key_id) {
					        				$master_bid_id=$bid_key_id->master_bid_id;
										if($bid_key_id->mode_bid!="Rank Order Bid"){
										$x++;
										

					        			?>
					        		<tr>
					        			<td><?=$x?></td>
					        			<td><?=$bid_key_id->bid_ref?></td>
					        			<td><?=$bid_key_id->bid_id?></td>
					        			<td><?=$bid_key_id->bid_date_entry?></td>
					        			<td><?=$bid_key_id->date_closing?></td>
					        			<td><?php
		                                    $status_bid=$bid_key_id->status_bid;
		                                    if($status_bid==1){
		                                    	echo "<p style='color:green'> Active Bid</p>";
		                                    }else{
		                                    	echo "Not Active Bid";
		                                    }
		                                 ?>

		                                </td>


                                      

                                      <td><a href="<?=base_url()?>user-commerical-evaluator-view-details-commerical-bid-new/<?=$bid_key_id->Slno_bid?>/<?=$bid_key_id->category?>" class="btn btn-sm btn-info" >View</a></td>



						            </tr>
										<?php }
							} }?>

					        </tbody>
					    </table>
					</div>
					<br>
					<br>
					<a href="<?=base_url()?>user-commerical-evalutor-home" class="btn btn-xs btn-success fa fa-angle-left"   role="button"><i class=""></i> Back</a>
				</div>
			</div>


		</div>
		<!-- end #content -->
