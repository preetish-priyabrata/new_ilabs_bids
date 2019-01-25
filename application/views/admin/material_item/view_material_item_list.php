<?php 
$email_id=$this->session->userdata('email_id');
if(empty($email_id)){
	
	redirect('admin-logout-by-pass');
}
?>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="user-admin-home">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Material Item</a></li>
				<li class="breadcrumb-item active">View Material Item List</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">View  Material Item List </h1>
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
			 // print_r($this->session->userdata());
			 ?>
			 <div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<!-- <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a> -->
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					
					<h4 class="panel-title">Material Item List</h4>
				</div>
				<div class="panel-body">
					
					<div class="pull-right">
						<a href="admin-add-Material-Item" class="btn btn-info fa fa-puzzle-piece " role="button" title="hre new Material Item is been created">  New Material Item</a>
					</div>
					<br>
					<br>
					<div class="table-responsive-sm">
						<table id="example" class="display" style="width:100%">
					        <thead>
					            <tr>
					                <th>SlNo.</th>
					                <th>Material Item Name</th>	
					                <th>Material Item Id</th>	
					                <th>Category Name</th>					                
					                <th>Status</th>					                
					                <th>Action</th>
					            </tr>
					        </thead>	
					        <tbody>
					        		<?php 
					        		$x=0;
					        		
					        		$table='master_items_material';
					        		$query=$this->db->get($table);
					        		foreach ($query->result() as $value) {
					        			// `Slno_item`, `Category_slno`, `item_name`, `item_id`, `item_detail`, `item_uom`, `status`, `date_entry`, `time_entry`, `category_id`, `category_name`
					        			$slno_id=$value->Slno_item;
					        			$keys_id="preetishwebitem";
					        			 $encript_id=($this->encrypt->encode($slno_id,$keys_id));   			 
					        			
										 $user_id = strtr($encript_id,array('+' => '.', '=' => '-', '/' => '~'));
					        			
					        								        		
					        			$x++;
					        			?>
					        			<tr>
							        		<td><?=$x?></td>
							                <td><?=$value->item_name?></td>
							                <td><?=$value->item_id?></td>
							                <td><?=$value->category_name?></td>
							               
							                <td><?php $Status=$value->status;
							                if($Status==1){
							                	echo "<a href='change-Material-Item-status/".$user_id."/".$slno_id."/1' class='btn btn-outline-primary btn-sm'>Active Material Item</a>";
							                }else if($Status==2){
							                	echo "<a href='change-Material-Item-status/".$user_id."/".$slno_id."/2' class='btn btn-outline-warning btn-sm'>In-active Material Item</a>";
							                }elseif ($Status==3) {
							                	echo "<a href='#' class='btn btn-danger btn-sm'>Deleted Material Item</a>";
							                }else{
							                	echo "--";
							                }

							                ?></td>
							               
							                <td>
							                	<?php  if($Status!=3){ ?>
							                	<div class="btn-group">
												  <a href="#" class="btn btn-purple btn-sm">Action</a>
												  <a href="#" class="btn btn-purple dropdown-toggle"
												    data-toggle="dropdown"></a>
												  <ul class="dropdown-menu pull-right">											  	
												  	<li><a   <?php echo "href='admin-view-Material-Item-info/".$user_id."/".$slno_id."'";?> >view & Edit </a></li>
												  	<li class="divider"></li>
												  	<li><a <?php echo "href='change-Material-Item-status/".$user_id."/".$slno_id."/3' ";?> onclick="return confirm('Are you sure you want to delete this Material Item?');">Delete</a></li>
												  </ul>
												</div>
												<?php }?>
							                	<!-- <a edit-Material-Item-infohref="user-admin-home" class="btn btn-xs btn-success fa fa-angle-left"   role="button"><i class=""></i> Reset Password</a> <br>
							                	<a href="user-admin-home" class="btn btn-xs btn-info fa fa-angle-left"   role="button"><i class=""></i> Edit Password</a> -->
							                </td>
					            		</tr>
					        			<?php 
					        		}
					        		?>
					        </tbody>				        
					    </table>
					</div>
					<br>
					<br>
					<a href="user-admin-home" class="btn btn-xs btn-success fa fa-angle-left"   role="button"><i class=""></i> Back</a>
				</div>
			</div>

		
		</div>
		<!-- end #content -->

		