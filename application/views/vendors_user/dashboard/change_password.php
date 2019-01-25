<?php 
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){
	
	redirect('vendor-logout-pass');
}
?>
<style type="text/css">
	.separator {
    border-right: 1px solid #dfdfe0; 
}
.icon-btn-save {
    padding-top: 0;
    padding-bottom: 0;
}
.input-group {
    margin-bottom:10px; 
}
.btn-save-label {
    position: relative;
    left: -12px;
    display: inline-block;
    padding: 6px 12px;
    background: rgba(0,0,0,0.15);
    border-radius: 3px 0 0 3px;
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
            <?php 
                if(!empty($this->session->flashdata('success_message'))){?>
                    <div class="alert alert-success fade show">
                        <span class="close" data-dismiss="alert">×</span>
                        <strong>Success!</strong><?=$this->session->flashdata('success_message')?> <!-- <a href="#" class="alert-link">an example link</a>.  -->
                    </div>
			<?php 
			    } if(!empty($this->session->flashdata('error_message'))){?>
                    <div class="alert alert-danger fade show">
                        <span class="close" data-dismiss="alert">×</span>
                        <strong>Error !</strong> <?=$this->session->flashdata('error_message')?><!-- <a href="#" class="alert-link">an example link</a>.  -->
                    </div>
			<?php 
                }
            ?>
			

<div class="container">
    <div class="row">
        <div class="col align-self-center">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">                    
                        <span class="fas fa-th"></span>
                        Change password   
                    </h3>
                </div>
                <form action="<?=base_url()?>vendor-change-password-save" method="POST">
	                <div class="panel-body">
	                    <div class="row">
	                        <div class="col-xs-6 col-sm-6 col-md-4 separator social-login-box"> <br>
	                            <img alt="" class="img-thumbnail" src="https://bootdey.com/img/Content/avatar/avatar1.png">                        
	                        </div>
	                        <div style="margin-top:80px;" class="col-xs-6 col-sm-6 col-md-8 login-box">
	                            <div class="form-group">
	                                <div class="input-group">
	                                    <div class="input-group-addon"><span class="fas fa-lock"></span></div>
	                                    <input class="form-control" type="password" name="current_password" placeholder="Current Password"  required="">
	                                </div>
	                          </div>
	                          <div class="form-group">
	                            <div class="input-group">
	                              <div class="input-group-addon"><span class="fas fa-user-lock"></span></div>
	                              <input class="form-control" type="password" name="new_password" placeholder="New Password" required="" >
	                            </div>
	                          </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="panel-footer">
	                    <div class="row">
	                        <div class="col-xs-6 col-sm-6 col-md-6"></div>
	                        <div class="col-xs-6 col-sm-6 col-md-6">
	                            <button class="btn icon-btn-save btn-success" type="submit">
	                            <span class="btn-save-label"><i class="far fa-save"></i></span>save</button>
	                        </div>
	                    </div>
	                </div>
	            </form>
            </div>
        </div>
    </div>
</div>
		</div>
		<!-- end #content -->