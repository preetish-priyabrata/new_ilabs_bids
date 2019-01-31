<?php 
// echo "string";
// exit;
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){
	
	redirect('vendor-logout-pass');
}
$category=$value;
$vendor_id_bid=$value1;
$master_bid_id_com=$master_bid_id=$value2;
$slno_approve=$value3;

// $value=$vendor_id_bid; // vendor Bid Slno
// $value1=$category; // Category
// $value2=$value2; // status of view
// $value3=$value3; //type of bid close or open
$result_new_bid=$this->vendor_db_users->vendor_new_commerical_rank_bid_id($Vendor_email_id,$slno_approve);
if($result_new_bid['no_new_tech']==2){
	redirect('user-vendor-home');
}
$bid_rank_ids=$result_new_bid['new_tech_list'][0];

$slno_approve_got=$bid_rank_ids->slno_approve;
$category_got=$bid_rank_ids->category;
$vendor_id_bid_got=$bid_rank_ids->vendor_id_bid;
$master_bid_id_got=$bid_rank_ids->master_bid_id;
$start=strtotime($bid_rank_ids->start_date);
$end_date=strtotime($bid_rank_ids->end_date);
$today=strtotime(date('Y-m-d H:i:s'));

if ($today > $start && $today < $end_date){
	if ($today < $end_date){
  		
	
  	}else{
  		echo "<p style='color:red'>Exipred1</p>";
  		// redirect('user-vendor-home');
  	}
}else{
	if($today > $end_date){
		echo "<p style='color:red'>Exipred</p>";
		// redirect('user-vendor-home');
		
	}else{
		echo "<p style='color:green'>Not Started</p>";
		// redirect('user-vendor-home');
	}  
}


$rank=$this->vendor_db_users->vendor_new_commerical_rank_calculation($master_bid_id,$Vendor_email_id);


$result_title=$this->vendor_db_users->vendor_new_query_tech_title_commerical($vendor_id_bid,$Vendor_email_id);
$case_bid=$mode_bid=$result_title['new_tech_list'][0]->mode_bid;
// $master_bid_id_com=$result_title['new_tech_list'][0]->master_bid_id;
$data_get_list_commerical = array('master_bid_id' =>$master_bid_id );
 $query_get_list=$this->db->get_where('master_buyer_material_details',$data_get_list_commerical);
?>

<link rel="stylesheet" type="text/css" href="<?=base_url()?>file_css_admin/counter/CSS/jquery.countdownTimer.css" />
<style type="text/css">
/*	.clock_back{

	}
	.clock {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translateX(-50%) translateY(-50%);
    color: #17D4FE;
    font-size: 60px;
    font-family: Orbitron;
    letter-spacing: 7px;


}*/
/*html, body {
  height: 100%;
}

body {
  background: #0f3854;
  background: radial-gradient(ellipse at center, #0a2e38 0%, #000000 70%);
  background-size: 100%;
}*/

p {
  margin: 0;
  padding: 0;
}
.circle-badge {
  height: 100px;
  width: 100px;
  line-height:100px;
  text-align: center;
  border-radius: 50px;
  background: #1ACAC0;
  color:white;
  margin-left:auto;
  margin-right:auto;
}
#clock {
  font-family: 'Share Tech Mono', monospace;
  color: #ffffff;
  text-align: center;
  position: absolute;
  left: 50%;
  top: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  color: #daf6ff;
  text-shadow: 0 0 20px #0aafe6, 0 0 20px rgba(10, 175, 230, 0);
}
#clock .time {
  letter-spacing: 0.05em;
  /*font-size: 80px;*/
  font-size: 60px;
  padding: 5px 0;
}
#clock .date {
  letter-spacing: 0.1em;
  font-size: 24px;
}
#clock .text {
  letter-spacing: 0.1em;
  font-size: 12px;
  padding: 20px 0 0;
}
.pk_clock{
  background: #0f3854;
  background: radial-gradient(ellipse at center, #0a2e38 0%, #000000 70%);
  background-size: 100%;
  height: 17em;
}
</style>
<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<!-- <li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
				<li class="breadcrumb-item active">Page with Top Menu</li> -->
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Vendor DashBoard<small>All Starts From Here</small></h1>
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
						
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">Panel Title here</h4>
				</div>
				<div class="panel-body">
						<form action="<?=base_url()?>user-vendor-bid-submission-commerical-save" method="POST">
					<div class="row">
						<div class="col-lg-8 col-md-8">
								<?php 
									// print_r($rank);
								?>
								
								<div class="row">
							      <div >
							        <div class="col-xs-6 col-md-12 text-center">
							          <div class="circle-badge" style="background:#1ACAC0">
							            <strong>Rank <i id="ranks"><?=$rank['rank']?></i></strong>
							          </div>
							          <div>
							            <strong >Your Current Price :- <i id="price"> <?=$rank['sub_total']?></i></strong>
							          </div>
							          <div>
							         
							          </div>
							        </div>

							      </div>
							    </div>


						</div>
						<div class="col-lg-4 col-md-4">	
							<div class="row">
								<div class="col-lg-12">
									<div class="pk_clock">
										<div id="clock">
										    <p class="date">{{ date }}</p>
										    <p class="time">{{ time }}</p>
										    <!-- <p class="text">DIGITAL CLOCK with Vue.js</p> -->
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<hr>
									<h1 class="text-center">Count Down</h1>
									<hr>
									<div class="text-center">
									 <table style="border:0px;">
		                                <tr>
		                                	<td style="width:70px;text-align:center;">Days</td>
		                                    <td style="width:70px;text-align:center;">Hours</td>
		                                    <td style="width:60px;text-align:center;">Minutes</td>
		                                    <td style="width:70px;text-align:center;">Seconds</td>
		                                </tr>
		                                <tr>
		                                    <td colspan="4"><span id="color_timer"></span></td>
		                                </tr>
		                            </table>
		                        </div>
		                        </div>
		                    </div>

						 </div>
					</div>
					<br>
					<br>
				
					<div class="row">
						<input type="hidden" name="url" value="vendor-rank-bid-order/<?=$category?>/<?=$vendor_id_bid?>/<?=$master_bid_id?>/<?=$slno_approve?>">
							<input type="hidden" name="auction" value="bid">
							<input type="hidden" name="master_bid_id" value="<?=$master_bid_id_com?>">
							<input type="hidden" name="vendor_bid_id" value="<?=$vendor_id_bid?>">
							<input type="hidden" name="vendor_id" value="<?=$Vendor_email_id?>">
							<input type="hidden" name="mode_bid" value="<?=$mode_bid?>">
							<input type="hidden" name="mode_bid_id" value="3">
							<input type="hidden" name="Category" value="<?=$category?>">
							<input type="hidden" name="bid_ref" value="<?=$result_title['new_tech_list'][0]->bid_ref?>	">
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
								<td colspan="6">Gauarantee / Warranty</td>
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
			<!-- end panel -->
			</div>
		<!-- end #content -->
	</div>
<!-- <script>
  $(function(){
                                    $('#given_date').countdowntimer({
                                        startDate : "2014/10/01 00:00:00",
                                        dateAndTime : "2018/01/01 00:00:00",
                                        size : "lg"
                                    });
                                });
</script> -->

 <script>
                                $(function(){
                                    $('#color_timer').countdowntimer({
                                        // currentTime : true,
                                        // size : "lg",
                                        dateAndTime : '<?=$bid_rank_ids->end_date?>',
                                        size : "lg",
                                        borderColor : "#5D09FA",
                                        backgroundColor : "#FAF209",
                                        fontColor : "#FA0909",
                                        timeUp : timeisUp
                                    });
                                    function timeisUp() {
								        	setTimeout(function() {
											  window.location.href = "<?=base_url()?>user-vendor-home";
											}, 3000);
								    }
                                });
                            </script>
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
