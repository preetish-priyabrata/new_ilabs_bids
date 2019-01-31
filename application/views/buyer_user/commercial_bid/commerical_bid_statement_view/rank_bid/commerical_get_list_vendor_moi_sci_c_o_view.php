<?php
$email_id=$this->session->userdata('buy_email_id');
if(empty($email_id)){

	redirect('buy-logout-by-pass');
}

//  this only commerial bid for closed bid for moi and sci
// $commerical_email_id=$this->session->userdata('commerical_email_id');
// if(empty($commerical_email_id)){

// 	redirect('comm-evalutor-logout-by-pass');
// }
$type_bid=$type_bid;
$Slno_bid=$master_bid_id=$master_bid_id;
$category_id=$category_id;
$bid_name=$bid_name;
$buyer_bid=$buyer_bid;
$last_otp_id=$last_otp_id;
$get_list_vendors=$this->buyer_user->get_buyer_vendors_list($category_id);

$get_bid  = array('Slno_bid' =>$master_bid_id);
$bid_table=$this->db->get_where('master_bid_commerical',$get_bid);
$bid_info_buyer=$bid_table->result();



// Bid Detail Dates
$result_drafted_dates=$this->buyer_user->drafted_bid_information_DATE_commerical($Slno_bid,1);
$value_bid_dates=$result_drafted_dates['bid_date_list'][0]; // bid dates

// Bid Detail Information
$result_drafted_bid_details=$this->buyer_user->drafted_bid_information_details_commerical($Slno_bid,1);
$value_bid_details=$result_drafted_bid_details['bid_details_list'][0]; // bid details
//  Project Information
	$job_code=$bid_info_buyer[0]->job_code;
	$data_job_code = array('job_Code' =>$job_code);
	$query_job_code=$this->db->get_where('master_project',$data_job_code);
	$data_db_job_code=$query_job_code->result(); // here fetch information
	$row_job_code = $data_db_job_code[0];

	$mr_no=$bid_info_buyer[0]->mr_no; // bid ref no


	$data_mr_no = array('mr_no' =>$mr_no);
	$query_mr_no=$this->db->get_where('master_mr_job_details',$data_mr_no);
	$data_db_jmr_no=$query_mr_no->result(); // here fetch information
	$row_mr_no = $data_db_jmr_no[0];

	$data_get_list_commerical = array('master_bid_id' =>$Slno_bid );
 	$query_get_list=$this->db->get_where('master_buyer_material_details',$data_get_list_commerical);
$get_rank=array();
			$data=array('master_bid_id_com'=>$master_bid_id);
			// $this->db->order_by('sub_total', "asc");
			$this->db->order_by('sub_total', 'ASC');
			$this->db->order_by('date', "asc");
			$query_bid_sub=$this->db->get_where('master_rankorder_item_total',$data);
			// stdClass Object ( [Slno_closed_item_total] => 2 [master_bid_id_com] => 1 [closed_id_slno_total] => 2 [sub_total] => 118200.00 [total_tax] => 0.00 [total_price] => 118200.00 [user_assumption_charge] => 0.00 [date] => 2019-01-08 17:53:16 [currency_rate] => [currency_name] => [vendor_Bid_slno] => 1 [Vendor_id] => vender@ilab.com ) stdClass Object ( [Slno_closed_item_total] => 1 [master_bid_id_com] => 1 [closed_id_slno_total] => 1 [sub_total] => 338840.00 [total_tax] => 78 [total_price] => 338918.00 [user_assumption_charge] => 0.00 [date] => 2019-01-08 17:40:19 [currency_rate] => [currency_name] => [vendor_Bid_slno] => 3 [Vendor_id] => ven121@gmail.com )
foreach ($query_bid_sub->result() as $key_id) {
	// print_r($key_id);
	$array_vedeor_id[]= ($key_id->Vendor_id);


}
if(!empty($array_vedeor_id)){
	$final_id_vendor=array_unique($array_vedeor_id); // will remove duplicate values
}else{
	  $this->session->set_flashdata('error_message',  'Sorry No vendor has Submitted Commerical information. Please Ask Buyer For looking to it . Here is bid id and bid reference no "' .$bid_info_buyer[0]->bid_id.'/'.$bid_info_buyer[0]->bid_ref.'"');
	redirect('user-buyer-home');
}
$query_summary_filter = array('Bid_master_id_com' =>$master_bid_id  );
$query_summary_filter_exe=$this->db->get_where('master_final_rankorder_bid_item',$query_summary_filter);
// print_r($array_vedeor_id);

// 			// // $data_return = array('rank' => $rank,'sub_total'=>$sub_total );

// 			//  // $rank;
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Comparative Statement</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

	</head>
	<style type="text/css">
		html ,body {
			padding: 0;
			margin: 0;
			width: 100%;
			height: auto;
			background-color: white;
		}
		/* display this row with flex and use wrap (= respect columns' widths) */

		.row-flex {
		  display: flex;
		  flex-wrap: wrap;
		}


		/* vertical spacing between columns */

		[class*="col-"] {
		  /*margin-bottom: 30px;*/
		  margin-bottom: 2px;

		}
		#bordes{
			border: 1px solid red;
		}

		.content {
		  height: 100%;
		  padding: 20px 20px 10px;
		  /*color: #fff;*/
		}
		.no-gutters {
		  margin-right: 0;
		  margin-left: 0;

		  > .col,
		  > [class*="col-"] {
		    padding-right: 0;
		    padding-left: 0;
		  }
		}
		table {
  border: 1px solid #ccc;
  border-collapse: collapse;
  /*table-layout: fixed;*/
  width: 100%;
}
table tr {
  border: 1px solid #ddd;
  padding: .35em;
}
table tr:nth-child(even) {
  background: #f8f8f8;
}
table th,
table td {
  padding: .625em;
  text-align: left;
}
table th {
  background: #999;
  color: #fff;
  font-size: .85em;
  letter-spacing: .1em;
  text-transform: uppercase;
}
table td {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
table tr td:last-child{
	/*padding: .625em;*/
    background: #ccc;
    /*last-child*/
    /*nth-child*/
}
/*table caption {
  font-size: 1.5em;
  margin: .5em 0 .75em;
}
table tr {
  border: 1px solid #ddd;
  padding: .35em;
}
table tr:nth-child(even) {
  background: #f8f8f8;
}
table th,
table td {
  padding: .625em;
  text-align: left;
}
table th {
  background: #999;
  color: #fff;
  font-size: .85em;
  letter-spacing: .1em;
  text-transform: uppercase;
}
table td {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}*/
	</style>
	<body >
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
			 // print_r($this->session->userdata());
			 ?>
		<form action="#" method="POST"  id="bid_tech" name="bid_tech" class="bid_tech">
		<div class="container-fluid">
			<div class="row ">
				<div class="jumbotron text-center" style="margin-bottom:0 ; width: 100%; padding: 1em">
					<h1>LARSEN & TOUBRO LIMITED</h1>
				  	<p>Center Procurement Dept , MMH SBG , <br>
				  	Godrej Waterside Tower -2 , 11th Floor , DP-5  <br>
				  	Sector V , Salt Lake  City . Kolkata :- 700091</p>
				  	<br>
				  	<b>[ COMPARATIVE STATEMENT ]</b>

				</div>
			</div>
			<hr>





			<input type="hidden" name="type_bid" value="<?=$type_bid?>">
			<input type="hidden" name="master_bid_id" value="<?=$master_bid_id?>">
			<input type="hidden" name="category_id" value="<?=$category_id?>">
			<input type="hidden" name="bid_name" value="<?=$bid_name?>">
			<input type="hidden" name="buyer_bid" value="<?=$buyer_bid?>">
			<input type="hidden" name="last_otp_id" value="<?=$last_otp_id?>">

			<!-- <div class="container"> -->
			    <!-- <h1>Same height columns in Bootstrap</h1> -->
			    <div class="row row-flex no-gutters">
			      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" >
			        <div class="content colour-1">


			        	 <!-- <table class="table table-borderless text-center">
						    <thead>
						      <tr>
						        <th colspan="2" ><h5>Bid Details</h5></th>

						      </tr>
						    </thead>
						    <tbody>
						      <tr>
						        <td><div class="form-group row m-b-15">
							<label class="col-form-label col-3" for="activity_name">PR Nos</label></div></td>

						        <td>
						        	<div class="form-group row m-b-15">
						        		<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="Project_Name" id="Project_Name" type="text" value="<?=$row_job_code->Project_Name?>" required="">
						       		 </div>
						        </td>
						      </tr>
						      <tr>
						        <td>Mary</td>
						        <td>Moe</td>
						        <td>mary@example.com</td>
						      </tr>
						      <tr>
						        <td>July</td>
						        <td>Dooley</td>
						        <td>july@example.com</td>
						      </tr>
						    </tbody>
						  </table> -->
			        	<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="Project_Name">Project</label>
							<div class="col-md-9">
								<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="Project_Name" id="Project_Name" type="text" value="<?=$row_job_code->Project_Name?>" required="">

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-3" for="activity_name">PR Nos</label>
							<div class="col-9">
								<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="activity_name" id="activity_name" type="text" required="">

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="location_detail">Location</label>
							<div class="col-md-9">
								<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="location_detail" id="location_detail" type="text" required="" value="<?=$value_bid_details->location_detail?>">

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="bid_id">Bid No</label>
							<div class="col-md-9">
								<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="bid_id" id="bid_id" type="text" value="<?=$bid_info_buyer[0]->bid_id?>" required="">

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="bid_start_date">Open Date</label>
							<div class="col-md-9">
								<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="bid_start_date" id="bid_start_date" value="<?=$value_bid_dates->bid_start_date?>" type="text" required="">

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="bid_closed_date">Closed Date</label>
							<div class="col-md-9">
								<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="bid_closed_date" id="bid_closed_date" type="text" value="<?=$value_bid_dates->bid_closed_date?>" required="">

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="mode_bid">Bid Type</label>
							<div class="col-md-9">
							<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="mode_bid" id="mode_bid" type="text" value="<?=$bid_info_buyer[0]->mode_bid?>" required="">

							</div>
						</div>
						<div class="form-group row m-b-15">
							<label class="col-form-label col-md-3" for="mode_bid">ACE Value</label>
							<div class="col-md-9">
							<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="mode_bid" id="mode_bid" type="text" value="<?=$bid_info_buyer[0]->ACE_Value?>" required="">

							</div>
						</div>
			        </div>
			      </div>
			      <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12" >
			        <div class="content colour-2">
			        	<div class="row">
			        		<div class="col-lg-12">
				          		<h5>Bid Creation</h5>
				          		<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="time_date_creation">Date & Time</label>
									<div class="col-md-9">
										<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="time_date_creation" id="time_date_creation" type="text" value="<?=$row_mr_no->time_date_creation?>" required="">

									</div>
								</div>
								<div class="form-group row m-b-15">
									<label class="col-form-label col-md-3" for="creators_id">Name</label>
									<div class="col-md-9">
									<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="creators_id" id="creators_id" type="text" value="<?=$row_mr_no->creators_id?>" required="">

									</div>
								</div>
							</div>
			          	</div>
			        </div>
			      </div>
			      <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
			        <div class="content colour-3">
			          	<h3>Currency</h3>
			          	<table class="table table-bordered">
						    <thead>
							    <tr>
							    	<th>SRL</th>
							        <th>Currency</th>
							        <th>Rate</th>
							    </tr>
						    </thead>
						    <tbody>
						      	<tr>
							        <td>1</td>
							        <td>INR</td>
							        <td>1.00</td>
						      	</tr>
						    </tbody>
						</table>
			        </div>
			    </div>
			    <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
			    	<div class="content colour-3">
			          	<h3>BID Summary</h3>
			          	<table class="table table-bordered">
						    <thead>
							    <tr>
							    	<th>SRL</th>
							        <th>Item </th>
							        <th>Qnty </th>
							        <th>Unit Price</th>
							        <th>Basic Price</th>
							        <th>Vendor</th>
							    </tr>
						    </thead>
						    <tbody>
						    	<?php
						    	$x=0;
						    		foreach ($query_summary_filter_exe->result() as $key_summary => $value_summary) {
						    		$x++;
						    	?>
						      	<tr>
						      		<td><?=$x?></td>
							        <td><?=$value_summary->Item_name?></td>
							        <td><?=$value_summary->Quantity?></td>
							        <td><?=$value_summary->Unit_price?></td>
							        <td><?=$value_summary->Total_unitprice?></td>
							        <td><?=$value_summary->Vendor_id?></td>

						      	</tr>
						      <?php }?>
						    </tbody>
						</table>
			        </div>


			    </div>

			     <!--  <div class="col-md-4 col-sm-6 col-xs-12">
			        <div class="content colour-4">
			          <h3>Fourth column</h3>
			          <p>Normal content.</p>
			        </div>
			      </div>
			      <div class="col-md-4 col-sm-6 col-xs-12">
			        <div class="content colour-5">
			          <h3>Fifth column</h3>
			          <p>Normal content.</p>
			        </div>
			      </div>
			      <div class="col-md-4 col-sm-6 col-xs-12">
			        <div class="content colour-6">
			          <h3>Sixth column</h3>
			          <p>Normal content.</p>
			        </div>
			      </div> -->
			    </div>
			      <div class="w-100"></div>

			    <!-- here table of comparasation -->
			    <div class="row">
			    	<div class="table-responsive">
			    	<?php
			    	// print_r($final_id_vendor);
			    	// print_r(array_count_values($array_vedeor_id));
			    	$times_repeat=array_count_values($array_vedeor_id);
			    	?>
			    	<table class="table table-bordered" border="1" cellpadding="10" cellspacing="1" width="100%">
                        <thead>
                            <tr>
                            	<th  scope="row">#</th>
                                <th><strong>Name</strong></th>
                                <th><strong>UOM</strong></th>
                               	<th><strong>Quantity</strong></th>
                               	<!-- <th><strong>Select Vendor</strong></th> -->
                                <?php
						 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
						 				$id_count=$times_repeat[$userid_ven];
						 				echo '<th ><p class="text-center">'.$userid_ven.'</p>'
						 				?>

						 						<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
						 							<tr>
						 								<th width="25%"  scope="row">Currency</th>
						 								<th>
						 									<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
						 									<thead>
									 							<tr>
									 								<th width="25%" colspan = "3"  scope="row"><p class="text-center"> Quoted Price(INR)</p></th>
									 								<?php
								 										if($id_count!=1){
								 										for ($i=1; $i <$id_count ; $i++) {
								 											?>
									 								 <th width="25%" colspan = "3"  scope="row"><p class="text-center"> Negotiated Price <?=$i?> (INR)</p></th>
									 								<?php }}?>
									 							</tr>
									 						</thead>
								 							<tbody>
								 								<tr>
								 									<th width="25%"  scope="row">Unit Rate</th>
										 							<th width="25%">Converted Rate</th>
										 							<th width="25%">Total Price</th>
										 					<?php
											 					if($id_count!=1){
											 							for ($i=1; $i <$id_count ; $i++) {
											 				?>

							 									<th width="25%"  scope="row"> Unit Rate</th>
									 							<th width="25%">Converted Rate</th>
									 							<th width="25%">Total Price</th>

											 				<?php }
											 			}
											 				?>
										 						</tr>

								 							</tbody>
								 						</table>


						 							</th>
						 						</tr>


						 					</table>
						 					<?php


						 			}
								?>

                            </tr>
                        </thead>
                        <tbody>
                        	<!-- stdClass Object ( [slno_mat] => 1 [slno_mr_id] => 362 [item_name] => material item 1 [item_id] => mat001 [item_uom] => nos [tech_name] => ["No Parameter Found"] [item_qnt] => 15 [unit_price] => 2500 [master_bid_id] => 1 ) stdClass Object ( [slno_mat] => 2 [slno_mr_id] => 363 [item_name] => material item 17 [item_id] => mat0087 [item_uom] => nos [tech_name] => ["technical 1667"] [item_qnt] => 25 [unit_price] => 230 [master_bid_id] => 1 ) stdClass Object ( [slno_mat] => 3 [slno_mr_id] => 364 [item_name] => material item 19 [item_id] => mat0018 [item_uom] => nos [tech_name] => ["ABCD 3333"] [item_qnt] => 70 [unit_price] => 405 [master_bid_id] => 1 ) stdClass Object ( [slno_mat] => 4 [slno_mr_id] => 365 [item_name] => material item 22 [item_id] => mat00910 [item_uom] => nos [tech_name] => ["No Parameter Found"] [item_qnt] => 100 [unit_price] => 885 [master_bid_id] => 1 )  -->
                        	<?php
                        	$x=0;
                        		foreach ($query_get_list->result() as $key_value) {
                        			// print_r($key_value);
                        			$slno_mat=$key_value->slno_mat;
                        		$x++;
                        		?>
                        		<input type="hidden" name="slno_mat_mateial[]" value="<?=$slno_mat?>">
                        		<tr>
                        		</tr>
                        		<tr>
                        			<td><?=$x?></td>
                                   <td><?=$key_value->item_name?></td>
								   <td><?=$key_value->item_uom?></td>
								   <td><?=$key_value->item_qnt?></td>
								  <!--  <td>
								 		<select class="form-control" name="vendor_apporved[<?=$slno_mat?>]">
								 			<?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				echo "<option value=".$userid_ven.">".$userid_ven."</option>";
								 			}
								 			?>
								 		</select>
								 	</td> -->
								 	 <?php
						 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
						 				$id_count=$times_repeat[$userid_ven];
						 				$date_im = array('Vendor_id' => $userid_ven,'Bid_master_id_com'=> $Slno_bid,'comm_item_slno'=>$slno_mat);
						 				$data_ve_item=$this->db->get_where('master_rankorder_bid_item',$date_im);
						 				?>
						 				<td>

						 						<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
						 							<tr>
						 								<th width="25%">INR</th>
						 								<th>
						 									<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">

								 							<tbody>
								 							<?php
								 							// stdClass Object ( [Slno_closed_item] => 5 [closed_id_slno] => 2 [Bid_master_id_com] => 1 [Item_name] => material item 1 [Quantity] => 15 [Uom_unit] => nos [Unit_price] => 2840 [Total_unitprice] => 42600.00 [date_entry] => 2019-01-08 17:53:15 [comm_item_slno] => 1 [Mr_item_slno] => [Item_id] => mat001 [Bid_slno] => 1 [Vendor_id] => vender@ilab.com )
								 							foreach ($data_ve_item->result() as $key_item => $value_item) {
								 								echo "<th width='25%'>".$value_item->Unit_price."</th>";
								 								echo "<th width='25%'>".$value_item->Unit_price."</th>";
								 								echo "<th width='25%'>".$value_item->Total_unitprice."</th>";

								 							}

								 							?>


								 							</tbody>
								 						</table>


						 							</th>
						 						</tr>


						 					</table>
						 				</td>
						 		<?php
						 			}
								?>

                                </tr>

                        		<?php
                        		}
                        		?>
                        		<tr>
		                    		<th></th>
			                        <th colspan="3"><strong>Sub Total</strong></th>
			                       <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_Short = array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid);
						 						$data_Short=$this->db->get_where('master_rankorder_item_total',$date_Short);
								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								 foreach ($data_Short->result() as $key_short => $value_short) {
								 								 ?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_short->sub_total?></th>

								 							<?php }?>
								 							</tr>


								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>

			                    <!-- tax total -->
			                    <tr>
		                    		<th></th>
			                        <th colspan="3"><strong>Total Taxes</strong></th>
			                       <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_tax= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid);
						 						$data_tax=$this->db->get_where('master_rankorder_item_total',$date_tax);
								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								 foreach ($data_tax->result() as $key_tax => $value_tax) {
								 								 ?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_tax->total_tax?></th>

								 							<?php }?>
								 							</tr>


								 					</table>
								 				</th>
								 					<?php


								 			}
										?>

			                    </tr>
			                    <!-- total price -->
			                    <tr>
		                    		<th></th>
			                        <th colspan="3"><strong>Total Landed Cost</strong></th>
			                        <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_total= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid);
						 						$data_total=$this->db->get_where('master_rankorder_item_total',$date_total);
								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								 foreach ($data_total->result() as $key_total => $value_total) {
								 								 ?>
									 								<th width="25%"></th>
									 								<th width="25%"></th>
									 								<th width="25%"><?=$value_total->total_price?></th>

								 								<?php }?>
								 							</tr>


								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>

			                    <!-- User Assumption Charges -->
			                     <tr>
		                    		<th></th>
			                        <th colspan="3"><strong>User Assumption Charges</strong></th>
			                        <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_user_assumption_charge= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid);
						 						$data_user_assumption_charge=$this->db->get_where('master_rankorder_item_total',$date_user_assumption_charge);
								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								 foreach ($data_user_assumption_charge->result() as $key_user_assumption_charge => $value_user_assumption_charge) {
								 								 ?>
									 								<th width="25%"></th>
									 								<th width="25%"></th>
									 								<th width="25%"><?=$value_user_assumption_charge->user_assumption_charge?></th>

								 								<?php }?>
								 							</tr>


								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                    <!-- Delivery Basis -->
			                    <tr>
		                    		<th></th>
			                        <th colspan="3"><strong>Delivery Basis</strong></th>
			                        <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_delivery_basis= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid,'field_name'=>'delivery basis');
						 						$data_delivery_basis=$this->db->get_where('master_rankorder_bid_item_misc',$date_delivery_basis);
								 				//

								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								foreach ($data_delivery_basis->result() as $key_delivery_basis => $value_delivery_basis) {

								 									?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_delivery_basis->field_value?></th>
								 							<?php }?>
								 							</tr>


								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                    <!-- Gurantee /Warranty -->
			                    <tr>
		                    		<th></th>
			                        <th colspan="3"><strong> Gurantee / Warranty</strong></th>
			                        <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_gaurantee= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid,'field_name'=>'gaurantee warranty');
						 						$data_gaurantee=$this->db->get_where('master_rankorder_bid_item_misc',$date_gaurantee);
								 				//

								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								foreach ($data_gaurantee->result() as $key_gaurantee => $value_gaurantee) {

								 									?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_gaurantee->field_value?></th>
								 							<?php }?>
								 							</tr>

								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                    <!-- Delivery Schedule -->
			                    <tr>
		                    		<th></th>
			                        <th colspan="3"><strong> Delivery Schedule </strong></th>
			                       <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_delivery= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid,'field_name'=>'delivery schedule');
						 						$data_delivery=$this->db->get_where('master_rankorder_bid_item_misc',$date_delivery);
								 				//

								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								foreach ($data_delivery->result() as $key_delivery => $value_delivery) {

								 									?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_delivery->field_value?></th>
								 							<?php }?>
								 							</tr>



								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                    <!-- Payment Terms -->
			                    <tr>
		                    		<th></th>
			                        <th colspan="3"><strong> Payment Terms </strong></th>
			                       	<?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_payment= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid,'field_name'=>'payment terms');
						 						$data_payment=$this->db->get_where('master_rankorder_bid_item_misc',$date_payment);
								 				//

								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								foreach ($data_payment->result() as $key_payment => $value_payment) {

								 									?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_payment->field_value?></th>
								 							<?php }?>
								 							</tr>


								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                    <!-- Validity Of Offer -->
			                     <tr>
		                    		<th></th>
			                        <th colspan="3"><strong>Validity Of Offer</strong></th>
			                        <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_validity= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid,'field_name'=>'validity of offer');
						 						$data_validity=$this->db->get_where('master_rankorder_bid_item_misc',$date_validity);
								 				//

								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								foreach ($data_validity->result() as $key_validity => $value_validity) {

								 									?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_validity->field_value?></th>
								 							<?php }?>
								 							</tr>


								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                    <!-- Security BG -->
			                     <tr>
		                    		<th></th>
			                        <th colspan="3"><strong> Security BG</strong></th>
			                        <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_security= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid,'field_name'=>'security BG');
						 						$data_security=$this->db->get_where('master_rankorder_bid_item_misc',$date_security);
								 				//

								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								foreach ($data_security->result() as $key_security => $value_security) {

								 									?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_security->field_value?></th>
								 							<?php }?>
								 							</tr>

								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                    <!-- Liquidity Damage -->
			                     <tr>
		                    		<th></th>
			                        <th colspan="3"><strong>Liquidity Damage</strong></th>
			                       	<?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_liquidity= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid,'field_name'=>'liquidity damage');
						 						$data_liquidity=$this->db->get_where('master_rankorder_bid_item_misc',$date_liquidity);
								 				//

								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								foreach ($data_liquidity->result() as $key_liquidity => $value_liquidity) {

								 									?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_liquidity->field_value?></th>
								 							<?php }?>
								 							</tr>



								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                    <!-- Remarks -->
			                     <tr>
		                    		<th></th>
			                        <th colspan="3"><strong>Remarks</strong></th>
			                        <?php
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				$id_count=$times_repeat[$userid_ven];
								 				$date_remarks= array('Vendor_id' => $userid_ven,'master_bid_id_com'=> $Slno_bid,'field_name'=>'remarks');
						 						$data_remarks=$this->db->get_where('master_rankorder_bid_item_misc',$date_remarks);
								 				//

								 				?>
								 				<th>
								 					<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
								 							<tr>
								 								<th width="25%"></th>
								 								<!-- this will be inr blank -->
								 								<?php
								 								foreach ($data_remarks->result() as $key_remarks => $value_remarks) {

								 									?>
								 								<th width="25%"></th>
								 								<th width="25%"></th>
								 								<th width="25%"><?=$value_remarks->field_value?></th>
								 							<?php }?>
								 							</tr>


								 					</table>
								 				</th>
								 					<?php


								 			}
										?>


			                    </tr>
			                      <!-- Remarks -->

                        </tbody>
                    </table>


                </div>
			    </div>
			    <div class="w-100"></div>

			    <div class="w-100"></div>
			    <div class="form-group row push-right float-right">
                    <div class="col-md-12">

						<a  href="<?=base_url()?>user-buyer-home" class="btn btn-sm btn-info">Home</a>
                    </div>
                </div>



			  <!-- </div> -->




		</div>
	</form>
	</body>
</html>
