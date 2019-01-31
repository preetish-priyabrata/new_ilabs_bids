<?php 
//  this only commerial bid for closed bid for moi and sci 
$commerical_email_id=$this->session->userdata('commerical_email_id');
if(empty($commerical_email_id)){
	
	redirect('comm-evalutor-logout-by-pass');
}
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
			$query_bid_sub=$this->db->get_where('master_closed_bid_item_total',$data);
			// stdClass Object ( [Slno_closed_item_total] => 2 [master_bid_id_com] => 1 [closed_id_slno_total] => 2 [sub_total] => 118200.00 [total_tax] => 0.00 [total_price] => 118200.00 [user_assumption_charge] => 0.00 [date] => 2019-01-08 17:53:16 [currency_rate] => [currency_name] => [vendor_Bid_slno] => 1 [Vendor_id] => vender@ilab.com ) stdClass Object ( [Slno_closed_item_total] => 1 [master_bid_id_com] => 1 [closed_id_slno_total] => 1 [sub_total] => 338840.00 [total_tax] => 78 [total_price] => 338918.00 [user_assumption_charge] => 0.00 [date] => 2019-01-08 17:40:19 [currency_rate] => [currency_name] => [vendor_Bid_slno] => 3 [Vendor_id] => ven121@gmail.com ) 
foreach ($query_bid_sub->result() as $key_id) {
	// print_r($key_id);
	$array_vedeor_id[]= ($key_id->Vendor_id);
	// $x++;
	// if($key_id->Slno_rankorder_item_total==$id){
 // 		$rank=$x;
 // 		$sub_total=$key_id->sub_total;
 // 	}
	//$get_rank[] = array('Slno_total' => $key_id->Slno_rankorder_item_total,'date_id'=> $key_id->date, 'sub_total'=>$key_id->sub_total);
}
// print_r($array_vedeor_id);
$final_id_vendor=array_unique($array_vedeor_id); // will remove duplicate values
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
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</head>
	<style type="text/css">
		html ,body {
			padding: 0;
			margin: 0;
			width: 100%;
			height: auto;
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

	</style>
	<body >
		<div class="container-fluid">
			<div class="row">
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
			<!-- <div class="container"> -->
			    <!-- <h1>Same height columns in Bootstrap</h1> -->
			    <div class="row row-flex">
			      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" >
			        <div class="content colour-1">
			        	<?php 
			        	// Array ( [0] => stdClass Object ( [Slno_bid] => 1 [buyer_slno] => 2 [bid_date_entry] => 2019-01-08 [bid_ref] => jd [bid_id] => ss [category] => 1 [mode_bid] => Closed Bid [technical_bid_type] => 2 [status_bid] => 1 [mr_slno] => 2 [mr_no] => 2019-01-08-TaYy1 [job_code] => 0770 [edit_id] => 1 [material_category_name] => standard catalogued item [ sci tech ] [bid_title] => SUPPLY OF CLOTHING ARTICLES FOR NCC CADETS OF NCC DIRECTORATE DELHI [bid_description] => ss [data_entry] => 2019-01-08 17:36:44 [bid_creator_id] => buy1@ilab.com [date_publish] => 2019-01-05 [date_closing] => 2019-01-31 [count_id] => 0 ) ) 
			        	// print_r($bid_table->result());
			        	?>
			        	<h5>Bid Details</h5>
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
							<input readonly  class="form-control-plaintext" placeholder="Enter Activity name" name="mode_bid" id="mode_bid" type="text" value="<?=$bid_info_buyer[0]->mode_bid?>" required="">
								
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
			    <!-- here table of comparasation -->
			    <div class="row">
			    	<div class="table-responsive">
			    	<?php
			    	// print_r($final_id_vendor);
			    	// print_r(array_count_values($array_vedeor_id));
			    	$times_repeat=array_count_values($array_vedeor_id);
			    	?>
			    	<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
                        <thead>
                            <tr>                            	
                                <th><strong>Name</strong></th>                             
                                <th><strong>UOM</strong></th>
                               	<th><strong>Quantity</strong></th>
                               	<th><strong>Select Vendor</strong></th>
                                <?php 
						 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
						 				$id_count=$times_repeat[$userid_ven];
						 				echo '<th ><p class="text-center">'.$userid_ven.'</p>'
						 				?>

						 						<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
						 							<tr>
						 								<th width="98%">Currency</th>
						 								<th>
						 									<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
						 									<thead>
									 							<tr>
									 								<th colspan = "3"><p class="text-center"> Quoted Price(INR)</p></th>
									 								<?php 
								 										if($id_count!=1){
								 										for ($i=1; $i <$id_count ; $i++) {
								 											?>
									 								 <th colspan = "3"><p class="text-center"> Negotiated Price <?=$i?> (INR)</p></th>
									 								<?php }}?>
									 							</tr>
									 						</thead>
								 							<tbody>
								 								<tr>
								 									<th>Unit Rate</th>
										 							<th>Converted Rate</th>
										 							<th>Total Price</th>
										 					<?php 
											 					if($id_count!=1){
											 							for ($i=1; $i <$id_count ; $i++) { 
											 				?>
						 									
							 									<th>Unit Rate</th>
									 							<th>Converted Rate</th>
									 							<th>Total Price</th>
															
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
                        		foreach ($query_get_list->result() as $key_value) {
                        			print_r($key_value);
                        			$slno_mat=$key_value->slno_mat;
                        		
                        		?>
                        		<tr>
                        		</tr>
                        		<tr>

                                   <td><?=$key_value->item_name?></td>								  
								   <td><?=$key_value->item_uom?></td>
								   <td><?=$key_value->item_qnt?></td>		  
								   <td>
								 		<select>
								 			<?php 
								 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
								 				echo "<option value=".$userid_ven.">".$userid_ven."</option>";
								 			}
								 			?>
								 		</select>
								 	</td>
								 	 <?php 
						 			foreach ($final_id_vendor as $key_ven_id =>$userid_ven) {
						 				$id_count=$times_repeat[$userid_ven];
						 				
						 				?>
						 				<td>

						 						<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
						 							<tr>
						 								<th width="98%">INR</th>
						 								<th>
						 									<table class="table-bordered" cellpadding="10" cellspacing="1" width="100%">
						 									
								 							<tbody>
								 								<tr>
								 									<th>Unit Rate</th>
										 							<th>Converted Rate</th>
										 							<th>Total Price</th>
										 					<?php 
											 					if($id_count!=1){
											 							for ($i=1; $i <$id_count ; $i++) { 
											 				?>
						 									
							 									<th>Unit Rate</th>
									 							<th>Converted Rate</th>
									 							<th>Total Price</th>
															
											 				<?php }
											 			}
											 				?>
										 						</tr>
										 					
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
                        </tbody>
                    </table>

                </div>
			    </div>
			    
			  
			    
			  <!-- </div> -->




		</div>
	</body>
</html>
	