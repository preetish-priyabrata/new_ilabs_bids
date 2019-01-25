<?php 
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){
	
	redirect('vendor-logout-pass');
}
?>
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
					<h4 class="panel-title">Notification</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="display table vendor_example" style="width:100%">
					        <thead>
					            <tr>
					                <th>Slno .</th>
					                <th>Date Of Notfication</th>
					                <th>View Status</th>									
					              	<th>Action</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<?php
					        	$x=0; 
					        		$data_get_id = array('vendor_id' => $Vendor_email_id );
					        		$this->db->order_by('date_entry', "desc");
					        		$query=$this->db->get_where('master_vendor_notifications',$data_get_id);
					        		foreach ($query->result() as $key => $value) {
					        		$x++;
					        		$view_status=$value->view_status;
					        	?>
					        	<tr>
					        		<td><?=$x?></td>
					        		<td><a href="<?=base_url()?>vendor-view-detail-noticfaction/<?=$value->slno_approve?>/<?=$view_status?>"><?=$value->date_entry?></a></td>
					        		<td><?php 
					        		if($view_status==0){
					        			echo "<p style='color:red'>Not viewed</p>";
					        		}else{
					        			echo "Viewed";
					        		}
					        		?></td>
					        		<td><a href="<?=base_url()?>vendor-view-detail-noticfaction/<?=$value->slno_approve?>/<?=$view_status?>">View Details</a></td>
					        	</tr>
					        	<?php 
					        		}
					        	?>
					        </tbody>
					    </table>
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->