<?php
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){

	redirect('vendor-logout-pass');
}
$value=$value; // vendor Bid Slno
$value1=$value1; // Category
$value2=$value2; // status of view
$value3=$value3; //type of bid close or open

$result_title=$this->vendor_db_users->vendor_new_query_tech_title_commerical($value,$Vendor_email_id);
if($result_title['no_new_tech']!=1){
	$this->session->set_flashdata('error_message', 'Unable find Bid');
	redirect('user-vendor-home');
}


$case_bid=$mode_bid=$result_title['new_tech_list'][0]->mode_bid;
$master_bid_id_com=$result_title['new_tech_list'][0]->master_bid_id;
$data_get_list_commerical = array('master_bid_id' =>$master_bid_id_com );
 $query_get_list=$this->db->get_where('master_buyer_material_details',$data_get_list_commerical);
?>
<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">New Commercial Bid Submission</a></li>
		<li class="breadcrumb-item active">Commercial Bid Submission Information</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Commercial Bid Submission Sci<small></small></h1>
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
			<h4 class="panel-title">Panel Title here</h4>
		</div>
		<div class="panel-body">
			<form action="<?=base_url()?>user-vendor-bid-submission-commerical-save" method="POST">
				<input type="hidden" name="master_bid_id" value="<?=$master_bid_id_com?>">
				<input type="hidden" name="vendor_bid_id" value="<?=$value?>">
				<input type="hidden" name="vendor_id" value="<?=$Vendor_email_id?>">
				<input type="hidden" name="mode_bid" value="<?=$mode_bid?>">
				<input type="hidden" name="mode_bid_id" value="<?=$value3?>">
				<input type="hidden" name="Category" value="<?=$value1?>">
				<input type="hidden" name="bid_ref" value="<?=$result_title['new_tech_list'][0]->bid_ref?>	">
			<div class="row">
				<div class="col-md-6 col-lg-6">
					<div class="form-group row m-b-15">
						<label class="col-form-label col-md-3" for="Date_creation"> Bid Ref <span style="color: red"></span></label>
						<div class="col-md-9">

						<?=$result_title['new_tech_list'][0]->bid_ref?>	
						</div>
					</div>
					<div class="form-group row m-b-15">
						<label class="col-form-label col-md-3" for="Po_no">Start Date <span style="color: red"></span></label>
						<div class="col-md-9">
						<?=$result_title['new_tech_list'][0]->date_start?>	
						</div>
					</div>
					<div class="form-group row m-b-15">
						<label class="col-form-label col-md-3" for="Bg_submission_date">Title </label>
						<div class="col-md-9">
						<?=$result_title['new_tech_list'][0]->title?>	
						</div>
					</div>
					<div class="form-group row m-b-15">
						<label class="col-form-label col-md-3" for="Mfg_clear_date">Description <span style="color: red"></span></label>
						<div class="col-md-9">
							<?=$result_title['new_tech_list'][0]->description?>	
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-6">
					<div class="form-group row m-b-15">
						<label class="col-form-label col-md-3" for="Job_code"> Bid Id<span style="color: red"></span></label>
						<div class="col-md-9">
						<?=$result_title['new_tech_list'][0]->bid_id?>	
						</div>
					</div>
					<div class="form-group row m-b-15">
						<label class="col-form-label col-md-3" for="Po_date"> End Date <span style="color: red"></span></label>
						<div class="col-md-9">
						<?=$result_title['new_tech_list'][0]->date_end?>	
						</div>
					</div>
					<div class="form-group row m-b-15">
						<label class="col-form-label col-md-3" for="Advance_payment_date">Date of Query </label>
						<div class="col-md-9">
						<?=$result_title['new_tech_list'][0]->date_end?>	
						</div>
					</div>
					<div class="form-group row m-b-15">
						<label class="col-form-label col-md-3" for="Advance_payment_date"> Type of Bid </label>
						<div class="col-md-9">
							<?=$mode_bid?>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<h5 class="text-center">Material Information</h5>
					<hr style="height: 3px;background: #0257ab;margin-top: 1.5rem; margin-bottom: 1.5rem"/>
					<table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
						<thead>
							<tr>							
                                <th><strong>Name</strong></th>
                                <th><strong>Id</strong></th>
                                <th><strong>Quantity</strong></th>
                                <th><strong>UOM</strong></th>
                                <th><strong>Technical Parameter</strong></th>
                                <th>Unit Price</th>
								<th>Total Price</th>
                            </tr>						
						</thead>
						<tbody>							
							<?php 
							$x=0;
                    		foreach ($query_get_list->result() as $key_value) {
                    			$x++;
                    		// print_r($key_value);
                    		// stdClass Object ( [slno_mat] => 1 [slno_mr_id] => 107 [item_name] => Progressing cavity pump. [item_id] => Mat003 [item_uom] => Capacity [tech_name] => ["No Parameter Found"] [item_qnt] => 10 [unit_price] => 10 [master_bid_id] => 4 ) 
                    		?>
                    		<input type="hidden" readonly class="form-control-plaintext" name="slno_mat[<?=$key_value->slno_mat?>]" value="<?=$key_value->slno_mat?>">
                    		<tr>
                               <td><input type="text" readonly class="form-control-plaintext" name="item_name[<?=$key_value->slno_mat?>]" value="<?=$key_value->item_name?>"></td>
							   <td><input type="text" readonly class="form-control-plaintext" name="item_id[<?=$key_value->slno_mat?>]" value="<?=$key_value->item_id?>"></td>
							   <td><input type="text" id="qty<?=$x?>" readonly class="form-control-plaintext" name="item_qnt[<?=$key_value->slno_mat?>]" value="<?=$key_value->item_qnt?>"></td>
							   <td><input type="text" readonly class="form-control-plaintext" name="item_uom[<?=$key_value->slno_mat?>]" value="<?=$key_value->item_uom?>"></td>
							   <td>
									<?php 
							   			$tech_name=json_decode($key_value->tech_name);
							   			foreach ($tech_name as $key_id) {
							   				echo $key_id."<br>";
							   			}
							   		?>
							    </td>
							   <td> <input type="text" id="cost<?=$x?>" onkeyup="fix_cala(<?=$x?>)" name="cost[<?=$key_value->slno_mat?>]" required /> </td>
                    			<td> <input type="text" readonly class="form-control-plaintext" id="price<?=$x?>" name="price[<?=$key_value->slno_mat?>]"   value='0'/> </td>

                            </tr>

                    		<?php
                    		}
                    		?>
                    			<tr>
								<td colspan="6">Sub total</td>
								<td ><input type="text" readonly="readonly" class="form-control" id="total" name="sub_total" /></td>
							</tr>
							<tr>
								<td colspan="6">Total Tax</td>
								<td ><input type="text"  class="form-control" id="total_tax" onkeyup="fix_cala('tax')" name="total_tax"  value="0.00" /></td>
							</tr>
							<tr>
								<td colspan="6">Total Landed Cost </td>
								<td ><input type="text" readonly="readonly" class="form-control" id="total_landed" name="total_landed"  value="0.00" /></td>
							</tr>
							<tr>
								<td colspan="6">User Assumption Charges </td>
								<td ><input type="text" class="form-control" id="user_assmption" name="user_assumption" value="0.00" /></td>
							</tr>
							<tr>
								<td colspan="6">Delivery Basis</td>
								<td ><input type="text"  class="form-control" id="delivery_basis" name="delivery_basis"  required="" /></td>
							</tr>
							<tr>
								<td colspan="6">Guarantee / Warranty</td>
								<td ><input type="text" class="form-control" id="gaurantee_warranty" name="gaurantee_warranty"  required="" /></td>
							</tr>
							<tr>
								<td colspan="6">Delivery Schedule</td>
								<td ><input type="text" class="form-control" id="delivery_schedule" name="delivery_schedule" required="" /></td>
							</tr>
							<tr>
								<td colspan="6">Payment Terms</td>
								<td ><input type="text" class="form-control" id="payment_terms" name="payment_terms" required=""  /></td>
							</tr>
							<tr>
								<td colspan="6">Validity of Offer</td>
								<td ><input type="text" class="form-control" id="validity_of_offer" name="validity_of_offer"   required="" /></td>
							</tr>
							<tr>
								<td colspan="6">Security BG</td>
								<td ><input type="text" class="form-control" id="security_BG" name="security_BG"  required="" /></td>
							</tr>
							<tr>
								<td colspan="6">Liquidity Damage</td>
								<td ><input type="text" class="form-control" id="liquidity_damage" name="liquidity_damage" required="" /></td>
							</tr>
							<tr>
								<td colspan="6">Remarks</td>
								<td ><textarea  class="form-control" id="remarks" name="remarks" required="" /></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="form-group row pull-right">
                <div class="col-md-12">
                	<input type="button" value="Total" id="to_cal" onclick="totalIt()" />
                    <button type="submit" id="to_sub" class="btn btn-sm btn-primary m-r-5">Save</button>
                    <a  href="user-admin-home" class="btn btn-sm btn-default">Cancel</a> 
                </div>
            </div>
		</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	 function calc(idx) {
	 		var cost=$("#cost"+idx).val();
	 		// alert(idx+":"+cost);
	 		var qntid=$("#qty"+idx).val();
	 		// alert(idx+":"+qntid);
		  var price = parseFloat(cost)*parseFloat(qntid);
		   // alert(idx+":"+price);  
		  document.getElementById("price"+idx).value= isNaN(price)?"0.00":price.toFixed(2);
	   
	}

	function totalIt() {
	  
	  var total=0;
	  for (var i=1;i<=<?=$x?>;i++) {
	    calc(i);  
	    var price = parseFloat(document.getElementById("price"+i).value);
	    total += isNaN(price)?0:price;
	  }
	  
	  document.getElementById("total").value=isNaN(total)?"0.00":total.toFixed(2);   
	   var sub_total=$('#total').val();    
	   var total_tax=$('#total_tax').val();   
	   var price_total = parseFloat(sub_total)+parseFloat(total_tax); 
	   document.getElementById("total_landed").value=isNaN(price_total)?"0.00":price_total.toFixed(2);
	   	$('#to_sub').show();
		$('#to_cal').hide();             
	}   
	function fix_cala(id){
		$('#to_sub').hide();
		$('#to_cal').show();
	}
	$(document).ready(function(){
		$('#to_sub').hide();
	});
</script>
