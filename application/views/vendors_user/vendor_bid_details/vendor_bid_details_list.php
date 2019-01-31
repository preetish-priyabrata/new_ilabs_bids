<?php
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){

	redirect('vendor-logout-pass');
}
$result_new_bid=$this->vendor_db_users->vendor_new_commerical_rank_bid($Vendor_email_id);
?>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Auction Bid</a></li>
				<!-- <li class="breadcrumb-item active">Page with Top Menu</li> -->
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Auction Bid List<small></small></h1>
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
					<h4 class="panel-title">Auction Bid List</h4>
				</div>
				<div class="panel-body">
					
					<div class="table-responsive">
						<div class="table-responsive">						
							<table class="display table vendor_example" style="width:100%">
					        	<thead>
						            <tr>
						                <th>Slno .</th>
						                <th>Bid Ref</th>						               
						                <th>Bid Start date</th>
						              	<th>Bid End date</th>
						              	<th>Counter</th>
						              	<th>Action</th>						              
						            </tr>
					        	</thead>
					        	<tbody>
					        		<?php 
					        		$x=0;
					        		if($result_new_bid['no_new_tech']==1){
					        			foreach ($result_new_bid['new_tech_list'] as $bid_rank_ids) {
					        				$slno_approve=$bid_rank_ids->slno_approve;
					        				$category=$bid_rank_ids->category;
					        				$vendor_id_bid=$bid_rank_ids->vendor_id_bid;
					        				$master_bid_id=$bid_rank_ids->master_bid_id;
					        				$start=strtotime($bid_rank_ids->start_date);
					        				$end_date=strtotime($bid_rank_ids->end_date);
					        				$today=strtotime(date('Y-m-d H:i:s'));
					        				$x++;
					        				?>
					        				<tr>
					        				<td><?=$x?></td>
					        				<td><?=$bid_rank_ids->bid_ref?></td>
					        				<td><?=$bid_rank_ids->start_date?></td>
					        				<td><?=$date=$bid_rank_ids->end_date?>
					        					<input type="hidden" name="date_end" id="date_end<?=$x?>" value="<?php echo ($date);?>"  readonly class="form-control-plaintext">
					        				</td>
					        				<td><p id="demo<?=$x?>"></p></td>
					        				<td><?php 
						        					if ($today > $start && $today < $end_date){
						        						if ($today < $end_date){
													  		?>
													  			<a href="<?=base_url()?>vendor-rank-bid-order/<?=$category?>/<?=$vendor_id_bid?>/<?=$master_bid_id?>/<?=$slno_approve?>" class="btn btn-info btn-sm">Go To Bid</a>
													  		<?php
						        						
													  	}else{
													  		echo "<p style='color:red'>Exipred1</p>";
													  	}
													}else{
														if($today > $end_date){
															echo "<p style='color:red'>Exipred</p>";
															
														}else{
															echo "<p style='color:green'>Not Started</p>";
														}  
													}
												?>
													
												</td>
					        				<?php
					        				# code...
					        			}
					        			?>
					        		</tr>
					        			<?php 


					        		}?>

					        	</tbody>
					        </table>
					    </div>
    				</div>
  				</div>
			</div>
		</div>

<script type="text/javascript">


	

// A $( document ).ready() block.
$( document ).ready(function() {
	for (var i=1;i<=<?=$x?>;i++) {
		 var fiveMinutes =$('#date_end'+i).val(),
	        display = document.querySelector('#demo'+i);
	    startTimer(fiveMinutes, display,i);
	    // alert(fiveMinutes);
	}
	

});
function startTimer(duration, display,id) {
	var countDownDate =  new Date(duration).getTime();
	// alert(duration);
    // Update the count down every 1 second
	var x = setInterval(function() {

	  // Get todays date and time
	  var now = new Date().getTime();

	  // Find the distance between now and the count down date
	  var distance = new Date(duration).getTime() - now;
	  // alert(distance);
	  // Time calculations for days, hours, minutes and seconds
	  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
	 	
	  // Display the result in the element with id="demo"
	  // document.getElementById("demo"+id).innerHTML = days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
	   display.textContent =days + " Days " + hours + " Hours " + minutes + " Min " + seconds + " Sec ";

	  // If the count down is finished, write some text
	  if (distance < 0) {

	    clearInterval(x);
	    document.getElementById("viewer_id"+id).style.display = "none"; 
	    document.getElementById("viewer_id"+id).removeAttribute("href");
	    // $("#viewer_id"+id)hide();
	    document.getElementById("demo"+id).innerHTML = "EXPIRED";
	    document.getElementById("demo"+id).style.color = "red"; 

	  }
	}, 1000);
}
	// Set the date we're counting down to

</script>