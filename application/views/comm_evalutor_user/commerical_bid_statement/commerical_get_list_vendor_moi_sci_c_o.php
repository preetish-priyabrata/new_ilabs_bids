<?php 
//  this only commerial bid for closed bid for moi and sci 
$commerical_email_id=$this->session->userdata('commerical_email_id');
if(empty($commerical_email_id)){
	
	redirect('comm-evalutor-logout-by-pass');
}
$type_bid=$type_bid;
$master_bid_id=$master_bid_id;
$category_id=$category_id;
$bid_name=$bid_name;
$buyer_bid=$buyer_bid;
$last_otp_id=$last_otp_id;
$get_list_vendors=$this->buyer_user->get_buyer_vendors_list($category_id);
$get_rank=array();
			$data=array('master_bid_id_com'=>$master_bid_id);
			// $this->db->order_by('sub_total', "asc");
			$this->db->order_by('sub_total', 'ASC');
			// $this->db->order_by('date', "asc");			
			$query=$this->db->get_where('master_closed_bid_item_total',$data);
			// echo $this->db->last_query();
			// print_r($query->result());
			$data_id=array('master_bid_id_com'=>$master_bid_id);
			$this->db->order_by('sub_total', 'ASC');
			$this->db->order_by('Slno_rankorder_item_total', "desc");
			
			$query_rode=$this->db->get_where('master_rankorder_item_total',$data_id);
			// echo $this->db->last_query();
			$resutt=$query_rode->result();
			 // $id=$resutt[0]->Slno_rankorder_item_total;
			// print_r($data_id);
			// print_r($query->result());
			// Array ( [0] => stdClass Object ( [Slno_rankorder_item_total] => 1 [master_bid_id_com] => 22 [rankorder_id_slno_total] => 1 [sub_total] => 1253177.09 [total_tax] => 3.56 [total_price] => 1968.56 [user_assumption_charge] => 0.00 [date] => 2018-12-31 19:42:29 [currency_rate] => [Bid_slno] => 132 [currency_name] => [Vendor_id] => ven121@gmail.com ) [1] => stdClass Object ( [Slno_rankorder_item_total] => 2 [master_bid_id_com] => 22 [rankorder_id_slno_total] => 2 [sub_total] => 1253177.11 [total_tax] => 6755 [total_price] => 1259932.00 [user_assumption_charge] => 0.00 [date] => 2018-12-31 19:43:11 [currency_rate] => [Bid_slno] => 131 [currency_name] => [Vendor_id] => vender@ilab.com ) ) 
			// $x=0;
			// foreach ($query->result() as $key_id) {
			// 	$x++;
			// 	if($key_id->Slno_rankorder_item_total==$id){
			// 		$rank=$x;
			// 		$sub_total=$key_id->sub_total;
			// 	}
			// 	// $get_rank[] = array('Slno_total' => $key_id->Slno_rankorder_item_total,'date_id'=> $key_id->date, 'sub_total'=>$key_id->sub_total);
			// }
			// // $data_return = array('rank' => $rank,'sub_total'=>$sub_total );
			
			//  // $rank;
?>

<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item active"><a href="#" class="fa fa-home ">Home</a></li>
				<!-- li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
				<li class="breadcrumb-item active">Page with Transparent Sidebar</li> -->
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<!-- <h1 class="page-header">Page with Transparent Sidebar <small>header small text goes here...</small></h1> -->
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
			 // print_r($this->session->userdata());
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
					<h4 class="panel-title">List of vendors Applied for Bid</h4>
				</div>
				<div class="panel-body">

					 <div class="table-responsive-sm">          
						<table class="table">
						    <thead>
						      <tr>
						        <th>#</th>
						        <th>Vendor Name</th>
						        <th>Type Of L</th>						       
						        <th>Check</th>
						      </tr>
						    </thead>
						    <tbody>
						    	<?php 
						    	$x=0;
						    		// print_r($query->result());
						    		foreach ($query->result() as $key_vaul) {
						    			$Vendor_id=$key_vaul->Vendor_id;						    		
						    			if($get_list_vendors['No_vendors']==1){
											foreach($get_list_vendors['vendors_lists'] as $key_vendors){
												$Vendor_email_id=$key_vendors->Vendor_email_id;
												if($Vendor_id==$Vendor_email_id){
													$x++;
												?>
												<tr>
													<td><?=$x?></td>
													<td><?=$key_vendors->Vendor_name?></td>
													<td>L <?=$x?></td>
													<td><?=$key_vendors->Vendor_name?></td>
												</tr>
												<?php	
												} 
											}
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