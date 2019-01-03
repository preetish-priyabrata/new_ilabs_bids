<?php 
$Vendor_email_id=$this->session->userdata('Vendor_email_id');
if(empty($Vendor_email_id)){
	
	redirect('vendor-logout-pass');
}

?>
</div>
	<!-- end page container -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<?=base_url()?>file_css_admin/assets/plugins/jquery/jquery-3.2.1.min.js"></script>
	<script src="<?=base_url()?>file_css_admin/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="<?=base_url()?>file_css_admin/assets/plugins/bootstrap/4.1.0/js/bootstrap.bundle.min.js"></script>
	<!--[if lt IE 9]>
		<script src="<?=base_url()?>file_css_admin/assets/crossbrowserjs/html5shiv.js"></script>
		<script src="<?=base_url()?>file_css_admin/assets/crossbrowserjs/respond.min.js"></script>
		<script src="<?=base_url()?>file_css_admin/assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="<?=base_url()?>file_css_admin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<?=base_url()?>file_css_admin/assets/plugins/js-cookie/js.cookie.js"></script>
	<script src="<?=base_url()?>file_css_admin/assets/js/theme/default.min.js"></script>
	<script src="<?=base_url()?>file_css_admin/assets/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->

	
<?=$script_js?>
<script>
		
		$(document).ready(function() {
			App.init();
			
		});
		var validateSession = setInterval(get_paid, 1000);
			function get_paid() {
				document.getElementById("Notification").innerHTML='';
				var not_fics='<?php echo $this->vendor_db_users->vendor_notification($Vendor_email_id)?>';
				document.getElementById("Notification").innerHTML= not_fics;
				console.log(not_fics); 
				// body...
			}

	</script>
</body>


</html>
