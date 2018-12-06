
<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="utf-8" />
	<title>Color Admin | Page with Top Menu</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="../../../../fonts.googleapis.com/cssff98.css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/plugins/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/css/default/style.min.css" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/css/default/style-responsive.min.css" rel="stylesheet" />
	<link href="<?=base_url()?>file_css_admin/assets/css/default/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<?=base_url()?>file_css_admin/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="page-container fade page-without-sidebar page-header-fixed page-with-top-menu">
		<!-- begin #header -->
		<div id="header" class="header navbar-default">
			<!-- begin navbar-header -->
			<div class="navbar-header">
				<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span> <b>Color</b> Admin</a>
				<button type="button" class="navbar-toggle" data-click="top-menu-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- end navbar-header -->
				
			<!-- begin header navigation right -->
			<ul class="navbar-nav navbar-right">
				<li>
					<form class="navbar-form full-width">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Enter keyword" />
							<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
						</div>
					</form>
				</li>
				<li class="dropdown">
					<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
						<i class="fa fa-bell"></i>
						<span class="label">5</span>
					</a>
					<ul class="dropdown-menu media-list pull-right">
						<li class="dropdown-header">NOTIFICATIONS (5)</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<i class="fa fa-bug media-object bg-silver-darker"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading">Server Error Reports <i class="fa fa-exclamation-circle text-danger"></i></h6>
									<div class="text-muted f-s-11">3 minutes ago</div>
								</div>
							</a>
						</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<img src="<?=base_url()?>file_css_admin/assets/img/user/user-1.jpg" class="media-object" alt="" />
									<i class="fab fa-facebook-messenger text-primary media-object-icon"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading">John Smith</h6>
									<p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
									<div class="text-muted f-s-11">25 minutes ago</div>
								</div>
							</a>
						</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<img src="<?=base_url()?>file_css_admin/assets/img/user/user-2.jpg" class="media-object" alt="" />
									<i class="fab fa-facebook-messenger text-primary media-object-icon"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading">Olivia</h6>
									<p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
									<div class="text-muted f-s-11">35 minutes ago</div>
								</div>
							</a>
						</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<i class="fa fa-plus media-object bg-silver-darker"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading"> New User Registered</h6>
									<div class="text-muted f-s-11">1 hour ago</div>
								</div>
							</a>
						</li>
						<li class="media">
							<a href="javascript:;">
								<div class="media-left">
									<i class="fa fa-envelope media-object bg-silver-darker"></i>
									<i class="fab fa-google text-warning media-object-icon f-s-14"></i>
								</div>
								<div class="media-body">
									<h6 class="media-heading"> New Email From John</h6>
									<div class="text-muted f-s-11">2 hour ago</div>
								</div>
							</a>
						</li>
						<li class="dropdown-footer text-center">
							<a href="javascript:;">View more</a>
						</li>
					</ul>
				</li>
				<li class="dropdown navbar-user">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<img src="<?=base_url()?>file_css_admin/assets/img/user/user-13.jpg" alt="" /> 
						<span class="hidden-xs">Adam Schwartz</span> <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li class="arrow"></li>
						<li><a href="javascript:;">Edit Profile</a></li>
						<li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
						<li><a href="javascript:;">Calendar</a></li>
						<li><a href="javascript:;">Setting</a></li>
						<li class="divider"></li>
						<li><a href="javascript:;">Log Out</a></li>
					</ul>
				</li>
			</ul>
			<!-- end header navigation right -->
		</div>
		<!-- end #header -->
		
		<!-- begin #top-menu -->
		<div id="top-menu" class="top-menu" >
            <!-- begin top-menu nav -->
			<ul class="nav">
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-th-large"></i>
						<span>Dashboard</span>
					</a>
					<ul class="sub-menu">
						<li><a href="index.html">Dashboard v1</a></li>
						<li><a href="index_v2.html">Dashboard v2</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<span class="badge pull-right">10</span>
						<i class="fa fa-hdd"></i> 
						<span>Email</span>
					</a>
					<ul class="sub-menu">
						<li><a href="email_inbox.html">Inbox</a></li>
						<li><a href="email_compose.html">Compose</a></li>
						<li><a href="email_detail.html">Detail</a></li>
					</ul>
				</li>
				<li>
					<a href="widget.html">
						<i class="fab fa-simplybuilt"></i> 
						<span>Widgets <span class="label label-theme m-l-5">NEW</span></span> 
					</a>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-gem"></i>
						<span>UI Elements <span class="label label-theme m-l-5">NEW</span></span> 
					</a>
					<ul class="sub-menu">
						<li><a href="ui_general.html">General <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="ui_typography.html">Typography</a></li>
						<li><a href="ui_tabs_accordions.html">Tabs & Accordions</a></li>
						<li><a href="ui_unlimited_tabs.html">Unlimited Nav Tabs</a></li>
						<li><a href="ui_modal_notification.html">Modal & Notification <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="ui_widget_boxes.html">Widget Boxes</a></li>
						<li><a href="ui_media_object.html">Media Object</a></li>
						<li><a href="ui_buttons.html">Buttons  <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="ui_icons.html">Icons</a></li>
						<li><a href="ui_simple_line_icons.html">Simple Line Icons</a></li>
						<li><a href="ui_ionicons.html">Ionicons</a></li>
						<li><a href="ui_tree.html">Tree View</a></li>
						<li><a href="ui_language_bar_icon.html">Language Bar & Icon</a></li>
						<li><a href="ui_social_buttons.html">Social Buttons</a></li>
						<li><a href="ui_tour.html">Intro JS</a></li>
					</ul>
				</li>
				<li>
					<a href="bootstrap_4.html">
						<div class="icon-img">
							<img src="<?=base_url()?>file_css_admin/assets/img/logo/logo-bs4.png" alt="" />
						</div>
						<span>Bootstrap 4 <span class="label label-theme m-l-5">NEW</span></span> 
					</a>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-list-ol"></i>
						<span>Form Stuff <span class="label label-theme m-l-5">NEW</span></span> 
					</a>
					<ul class="sub-menu">
						<li><a href="form_elements.html">Form Elements <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="form_plugins.html">Form Plugins <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="form_slider_switcher.html">Form Slider + Switcher</a></li>
						<li><a href="form_validation.html">Form Validation</a></li>
						<li><a href="form_wizards.html">Wizards</a></li>
						<li><a href="form_wizards_validation.html">Wizards + Validation</a></li>
						<li><a href="form_wysiwyg.html">WYSIWYG</a></li>
						<li><a href="form_editable.html">X-Editable</a></li>
						<li><a href="form_multiple_upload.html">Multiple File Upload</a></li>
						<li><a href="form_summernote.html">Summernote</a></li>
						<li><a href="form_dropzone.html">Dropzone</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-table"></i>
						<span>Tables</span>
					</a>
					<ul class="sub-menu">
						<li><a href="table_basic.html">Basic Tables</a></li>
						<li class="has-sub">
							<a href="javascript:;"><b class="caret pull-right"></b> Managed Tables</a>
							<ul class="sub-menu">
								<li><a href="table_manage.html">Default</a></li>
								<li><a href="table_manage_autofill.html">Autofill</a></li>
								<li><a href="table_manage_buttons.html">Buttons</a></li>
								<li><a href="table_manage_colreorder.html">ColReorder</a></li>
								<li><a href="table_manage_fixed_columns.html">Fixed Column</a></li>
								<li><a href="table_manage_fixed_header.html">Fixed Header</a></li>
								<li><a href="table_manage_keytable.html">KeyTable</a></li>
								<li><a href="table_manage_responsive.html">Responsive</a></li>
								<li><a href="table_manage_rowreorder.html">RowReorder</a></li>
								<li><a href="table_manage_scroller.html">Scroller</a></li>
								<li><a href="table_manage_select.html">Select</a></li>
								<li><a href="table_manage_combine.html">Extension Combination</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-star"></i> 
						<span>Front End</span>
					</a>
					<ul class="sub-menu">
						<li><a href="https://seantheme.com/color-admin-v4.1/frontend/one-page-parallax/template_content_html/index.html" target="_blank">One Page Parallax</a></li>
						<li><a href="https://seantheme.com/color-admin-v4.1/frontend/blog/template_content_html/index.html" target="_blank">Blog</a></li>
						<li><a href="https://seantheme.com/color-admin-v4.1/frontend/forum/template_content_html/index.html" target="_blank">Forum</a></li>
						<li><a href="https://seantheme.com/color-admin-v4.1/frontend/e-commerce/template_content_html/index.html" target="_blank">E-Commerce</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-envelope"></i>
						<span>Email Template</span>
					</a>
					<ul class="sub-menu">
						<li><a href="email_system.html">System Template</a></li>
						<li><a href="email_newsletter.html">Newsletter Template</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-chart-pie"></i>
						<span>Chart</span>
					</a>
					<ul class="sub-menu">
						<li><a href="chart-flot.html">Flot Chart</a></li>
						<li><a href="chart-morris.html">Morris Chart</a></li>
						<li><a href="chart-js.html">Chart JS</a></li>
						<li><a href="chart-d3.html">d3 Chart</a></li>
					</ul>
				</li>
				<li><a href="calendar.html"><i class="fa fa-calendar"></i> <span>Calendar</span></a></li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-map"></i>
						<span>Map</span>
					</a>
					<ul class="sub-menu">
						<li><a href="map_vector.html">Vector Map</a></li>
						<li><a href="map_google.html">Google Map</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-image"></i>
						<span>Gallery</span>
					</a>
					<ul class="sub-menu">
						<li><a href="gallery.html">Gallery v1</a></li>
						<li><a href="gallery_v2.html">Gallery v2</a></li>
					</ul>
				</li>
				<li class="has-sub active">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-cogs"></i>
						<span>Page Options</span>
					</a>
					<ul class="sub-menu">
						<li><a href="page_blank.html">Blank Page</a></li>
						<li><a href="page_with_footer.html">Page with Footer</a></li>
						<li><a href="page_without_sidebar.html">Page without Sidebar</a></li>
						<li><a href="page_with_right_sidebar.html">Page with Right Sidebar</a></li>
						<li><a href="page_with_minified_sidebar.html">Page with Minified Sidebar</a></li>
						<li><a href="page_with_two_sidebar.html">Page with Two Sidebar</a></li>
						<li><a href="page_with_line_icons.html">Page with Line Icons</a></li>
						<li><a href="page_with_ionicons.html">Page with Ionicons</a></li>
						<li><a href="page_full_height.html">Full Height Content</a></li>
						<li><a href="page_with_wide_sidebar.html">Page with Wide Sidebar</a></li>
						<li><a href="page_with_light_sidebar.html">Page with Light Sidebar</a></li>
						<li><a href="page_with_mega_menu.html">Page with Mega Menu</a></li>
						<li class="active"><a href="page_with_top_menu.html">Page with Top Menu</a></li>
						<li><a href="page_with_boxed_layout.html">Page with Boxed Layout</a></li>
						<li><a href="page_with_mixed_menu.html">Page with Mixed Menu</a></li>
						<li><a href="page_boxed_layout_with_mixed_menu.html">Boxed Layout with Mixed Menu</a></li>
						<li><a href="page_with_transparent_sidebar.html">Page with Transparent Sidebar</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-gift"></i>
						<span>Extra</span>
					</a>
					<ul class="sub-menu">
						<li><a href="extra_timeline.html">Timeline</a></li>
						<li><a href="extra_coming_soon.html">Coming Soon Page</a></li>
						<li><a href="extra_search_results.html">Search Results</a></li>
						<li><a href="extra_invoice.html">Invoice</a></li>
						<li><a href="extra_404_error.html">404 Error Page</a></li>
						<li><a href="extra_profile.html">Profile Page</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-key"></i>
						<span>Login & Register</span>
					</a>
					<ul class="sub-menu">
						<li><a href="login.html">Login</a></li>
						<li><a href="login_v2.html">Login v2</a></li>
						<li><a href="login_v3.html">Login v3</a></li>
						<li><a href="register_v3.html">Register v3</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-cubes"></i>
						<span>Version <span class="label label-theme m-l-5">NEW</span></span>
					</a>
					<ul class="sub-menu">
						<li><a href="javascript:;">HTML</a></li>
						<li><a href="https://seantheme.com/color-admin-v4.1/admin/ajax/index.html">AJAX</a></li>
						<li><a href="https://seantheme.com/color-admin-v4.1/admin/angularjs/index.html">ANGULAR JS</a></li>
						<li><a href="https://seantheme.com/color-admin-v4.1/admin/angularjs4/index.html">ANGULAR JS 4 <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
						<li><a href="https://seantheme.com/color-admin-v4.1/admin/material/index.html">MATERIAL DESIGN</a></li>
						<li><a href="https://seantheme.com/color-admin-v4.1/admin/apple/index.html">APPLE DESIGN <i class="fa fa-paper-plane text-theme m-l-5"></i></a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-medkit"></i>
						<span>Helper</span>
					</a>
					<ul class="sub-menu">
						<li><a href="helper_css.html">Predefined CSS Classes</a></li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;">
						<b class="caret"></b>
						<i class="fa fa-align-left"></i> 
						<span>Menu Level</span>
					</a>
					<ul class="sub-menu">
						<li class="has-sub">
							<a href="javascript:;">
								<b class="caret"></b>
								Menu 1.1
							</a>
							<ul class="sub-menu">
								<li class="has-sub">
									<a href="javascript:;">
										<b class="caret"></b>
										Menu 2.1
									</a>
									<ul class="sub-menu">
										<li><a href="javascript:;">Menu 3.1</a></li>
										<li><a href="javascript:;">Menu 3.2</a></li>
									</ul>
								</li>
								<li><a href="javascript:;">Menu 2.2</a></li>
								<li><a href="javascript:;">Menu 2.3</a></li>
							</ul>
						</li>
						<li><a href="javascript:;">Menu 1.2</a></li>
						<li><a href="javascript:;">Menu 1.3</a></li>
					</ul>
				</li>
                <li class="menu-control menu-control-left">
                    <a href="javascript:;" data-click="prev-menu"><i class="fa fa-angle-left"></i></a>
                </li>
                <li class="menu-control menu-control-right">
                    <a href="javascript:;" data-click="next-menu"><i class="fa fa-angle-right"></i></a>
                </li>
            </ul>
            <!-- end top-menu nav -->
        </div>
		<!-- end #top-menu -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
				<li class="breadcrumb-item active">Page with Top Menu</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Page with Top Menu <small>header small text goes here...</small></h1>
			<!-- end page-header -->
			
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">Panel Title here</h4>
				</div>
				<div class="panel-body">
					Panel Content Here
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->
		
        <!-- begin theme-panel -->
        <div class="theme-panel theme-panel-lg">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/red.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-pink" data-theme="pink" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/pink.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Pink">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/orange.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-yellow" data-theme="yellow" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/yellow.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Yellow">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-lime" data-theme="lime" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/lime.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Lime">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-green" data-theme="green" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/green.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Green">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-teal" data-theme="default" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/default.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-aqua" data-theme="aqua" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/aqua.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Aqua">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/blue.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/purple.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-indigo" data-theme="indigo" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/indigo.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Indigo">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-theme-file="<?=base_url()?>file_css_admin/assets/css/default/theme/black.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
                </ul>
                <div class="divider"></div>
                <div class="row m-t-10">
                    <div class="col-md-6 control-label text-inverse f-w-600">Header Styling</div>
                    <div class="col-md-6">
                        <select name="header-styling" class="form-control form-control-sm">
                            <option value="1">default</option>
                            <option value="2">inverse</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-6 control-label text-inverse f-w-600">Header</div>
                    <div class="col-md-6">
                        <select name="header-fixed" class="form-control form-control-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-6 control-label text-inverse f-w-600">Sidebar Styling</div>
                    <div class="col-md-6">
                        <select name="sidebar-styling" class="form-control form-control-sm">
                            <option value="1">default</option>
                            <option value="2">grid</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-6 control-label text-inverse f-w-600">Sidebar</div>
                    <div class="col-md-6">
                        <select name="sidebar-fixed" class="form-control form-control-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-6 control-label text-inverse f-w-600">Sidebar Gradient</div>
                    <div class="col-md-6">
                        <select name="content-gradient" class="form-control form-control-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-6 control-label text-inverse f-w-600">Content Styling</div>
                    <div class="col-md-6">
                        <select name="content-styling" class="form-control form-control-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-6 control-label text-inverse f-w-600">Direction</div>
                    <div class="col-md-6">
                        <select name="direction" class="form-control form-control-sm">
                            <option value="1">LTR</option>
                            <option value="2">RTL</option>
                        </select>
                    </div>
                </div>
                <div class="divider"></div>
                <h5>THEME VERSION</h5>
                <div class="theme-version">
                	<a href="index_v2.html" class="active">
                		<span style="background-image: url(<?=base_url()?>file_css_admin/assets/img/theme/default.jpg);"></span>
                	</a>
                	<a href="https://seantheme.com/color-admin-v4.1/admin/transparent/index_v2.html">
                		<span style="background-image: url(<?=base_url()?>file_css_admin/assets/img/theme/transparent.jpg);"></span>
                	</a>
                </div>
                <div class="theme-version">
                	<a href="https://seantheme.com/color-admin-v4.1/admin/apple/index_v2.html">
                		<span style="background-image: url(<?=base_url()?>file_css_admin/assets/img/theme/apple.jpg);"></span>
                	</a>
                	<a href="https://seantheme.com/color-admin-v4.1/admin/material/index_v2.html">
                		<span style="background-image: url(<?=base_url()?>file_css_admin/assets/img/theme/material.jpg);"></span>
                	</a>
                </div>
                <div class="divider"></div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="javascript:;" class="btn btn-inverse btn-block btn-rounded" data-click="reset-local-storage"><b>Reset Local Storage</b></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
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
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-53034621-1', 'auto');
	  ga('send', 'pageview');

	</script>
</body>

<!-- Mirrored from seantheme.com/color-admin-v4.1/admin/html/page_with_top_menu.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 30 Aug 2018 09:50:04 GMT -->
</html>

