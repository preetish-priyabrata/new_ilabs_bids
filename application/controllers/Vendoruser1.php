<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vendoruser extends CI_Controller {
    public function __construct(){
            parent::__construct();
            // Loading my model which will use
            $this->load->model('user_model', 'user');
            $this->load->model('approver_model', 'approver_user');
            $this->load->model('design_model', 'design_user');
            $this->load->model('procurement_model', 'procurement_user');
            $this->load->model('buyer_model','buyer_user');
            $this->load->model('vendor_model','vendor_db_users');
            // imedate database link
            $this->load->database();

            //Load session library
         $this->load->library('session');
         $this->load->library('user_agent');
         $this->load->library('encryption');
         $this->load->library('form_validation');
         $this->load->helper('string');


    }

    public function index($value=''){
        $this->load->library('session');
        // $this->load->view('welcome_message');
        $this->load->view('vendors_user/v_login/index');
    }
    public function vendor_login_process($value=''){
        // print_r($this->input->post());
        if(!empty($this->input->post('user_login')) && !empty($this->input->post('user_pass'))){
            $user_login=$this->input->post('user_login');
            $user_pass=$this->input->post('user_pass');
            $user_password=md5($user_pass);
            $data_vendor = array('Vendor_email_id' =>$user_login ,'Status'=>'1');
            $query_vendor=$this->db->get_where('master_vendor_detail',$data_vendor);
            if($query_vendor->num_rows()==1){
                $data_password = array('Vendor_email_id'=>$user_login,'Password_hash'=>$user_password,'Status'=>'1');
                $result_password = $this->user->check_present('master_vendor_detail',$data_password);
                    if($result_password==1){

                        // `Slno_vendor`, `Vendor_name`, `Vendor_email_id`, `Mobile_no`, `Organisation_name`, `Password`, `Password_hash`, `Status`, `Date_entry`, `Time_entry`, `Vendor_desc`, `Organisation_address`
                        $data_db=$query_vendor->result(); // here fetch information
                        $row = $data_db[0];
                        $role_id=$row->Slno_vendor;

                        $date=date('Y-m-d');
                        $time=date('H:i:s');
                        $data_brower['browser'] = $this->agent->browser();
                        $data_brower['browserVersion'] = $this->agent->version();
                        $data_brower['platform'] = $this->agent->platform();
                        $data_brower['full_user_agent_string'] = $_SERVER['HTTP_USER_AGENT'];
                        $ip = $this->input->ip_address();
                        session_regenerate_id();
                        $session_id=(session_id());
                        $date_nrowser_json=json_encode($data_brower);

                        $newdata = array('Vendors_name'=>$row->Vendor_name,'Vendor_email_id'=>$row->Vendor_email_id,'slno_role_id'=>$row->Slno_vendor,'logged_in' => TRUE,'session_id'=>$session_id);
                        $user_data = array('user_id'=>$row->Vendor_email_id, 'username'=>$row->Vendor_name, 'user_role'=>$row->Slno_vendor, 'browser_detail'=>$date_nrowser_json, 'ip'=>$ip, 'entry_date'=>$date, 'entry_time'=>$time, 'status'=>'1', 'session_id'=>$session_id);
                        $user_hstory_table="master_session_history_vendors";
                        $result_history = $this->user->common_insert($user_hstory_table,$user_data);

                        // common_insert
                        if($result_history==1){
                            $this->session->set_flashdata('success_message', 'Welcome To Vendor Portal Dashboard');
                            $this->session->set_userdata($newdata);
                            redirect('user-vendor-home');
                            exit();
                        }else{
                            // Set flash data
                            $this->session->set_flashdata('error_msg', 'Unable find user Please Try Again!!!');
                            // After that you need to used redirect function instead of load view such as
                            redirect("vendor");
                        }

                    }else{
                         // Set flash data
                        $this->session->set_flashdata('error_msg', 'Invalid User Please Try Again!!');
                        // After that you need to used redirect function instead of load view such as
                        redirect("vendor");
                    }
            }else{
               // Set flash data
                $this->session->set_flashdata('error_msg', 'Invalid User Please Try Again!');
                // After that you need to used redirect function instead of load view such as
                redirect("vendor");
            }
        }else{
            $this->session->set_flashdata('error_msg', 'Please Fill All field In login Page ');
                // After that you need to used redirect function instead of load view such as
            redirect("vendor");
        }

    }
    //  dashboard Of vendors
    public function vendor_dashboard($value=''){
        $scripts='';
        $data=array('title' =>"Vendor Dashboard",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'');
        $this->load->view('vendors_user/vendor_template/v_template_header',$data);
        $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
        $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);
        $this->load->view('vendors_user/dashboard/index',$data);

        $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);

    }

    public function vendor_new_technical($value=''){

        $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
            $data=array('title' =>"Vendor Dashboard",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'');
            $this->load->view('vendors_user/vendor_template/v_template_header',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);

            $this->load->view('vendors_user/New_Technical/New_bid',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);
    }
     public function vendor_new_commerical($value=''){

        $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
            $data=array('title' =>"Vendor Dashboard",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'');
            $this->load->view('vendors_user/vendor_template/v_template_header',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);

            $this->load->view('vendors_user/new_commerical/new_commerical_bid',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);
    }

    public function vendor_query_panel($value=''){

     $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
            $data=array('title' =>"Vendor Dashboard",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value);
            $this->load->view('vendors_user/vendor_template/v_template_header',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);

            $this->load->view('vendors_user/New_Technical/Query_panel',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);



    }
    public function vendor_query_panel_commerical($value=''){

     $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
            $data=array('title' =>"Vendor Dashboard",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value);
            $this->load->view('vendors_user/vendor_template/v_template_header',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);

            $this->load->view('vendors_user/new_commerical/Query_panel_commerical',$data);

            $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);



    }
    /**
     * [vendor_new_tech_view_details description]
     * @param  string $value  [slno_vendor]
     * @param  string $value1 [category]
     * @param  string $value2 [status_view]
     * @return [type]         [description]
     */
    public function vendor_new_tech_view_details($value='',$value1='',$value2=''){
      if($value2==5){
        $data_update=array('status_view'=>6);
        $data_id=array('slno_vendor'=>$value);
        $query=$this->db->update('master_bid_vendor',$data_update,$data_id);
      }
        switch ($value1) {
          case '1':
            $page="'vendors_user/New_Technical/view_details_technical_bid'";
            break;
          case '2':
              $page='vendors_user/New_Technical/view_details_technical_bid';
              break;
          case '3':
              $page='vendors_user/New_Technical/view_details_technical_bid_logistic' ;
                break;
          default:
            // code...
            break;
        }
     $scripts='';
            $data=array('title' =>"Vendor Dashboard",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value,'value1'=>$value1);

            $this->load->view('vendors_user/vendor_template/v_template_header',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);
            $this->load->view($page,$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);



    }  
     /**
      * [vendor_bid_view_commerical_details description]
      * @param  string $value  [slno_vendor]
      * @param  string $value1 [category]
      * @param  string $value2 [status_view]
      * @return [type]         [description]
      */
     public function vendor_bid_view_commerical_details($value='',$value1='',$value2=''){
      if($value2==5){
        $data_update=array('status_view'=>6);
        $data_id=array('slno_vendor'=>$value);
        $query=$this->db->update('master_bid_vendor_commerical',$data_update,$data_id);
      }
        switch ($value1) {
          case '1':
            $page="vendors_user/new_commerical/view_details_commerical";
            break;
          case '2':
              $page='vendors_user/new_commerical/view_details_commerical';
              break;
          case '3':
              $page='vendors_user/new_commerical/view_details_commerical_logistic' ;
                break;
          default:
            // code...
            break;
        }
     $scripts='';
            $data=array('title' =>"Vendor commerical Detail",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value,'value1'=>$value1,'value2'=>$value2);

            $this->load->view('vendors_user/vendor_template/v_template_header',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);            
            $this->load->view($page,$data);           
            $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);



    }
    /**
     * [vendor_bid_submission_commerical description]
     * @param  string $value  [vendor serial id regestra for apply]
     * @param  string $value1 [category]
     * @param  string $value2 [status ]
     * @param  string $value3 [type of bid close or open]
     * @return [type]         [description]
     */
    public function vendor_bid_submission_commerical($value='',$value1='',$value2='',$value3=''){
          $scripts='';
            $data=array('title' =>"Vendor commerical Detail",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value,'value1'=>$value1,'value2'=>$value2 ,'value3'=>$value3);
        $data_check=array('slno_vendor'=>$value);
        $query=$this->db->get_where('master_bid_vendor_commerical',$data_check);
        //  echo $this->db->last_query();
        // exit();
        if($query->num_rows()==1){
          $result=$query->result();
          // print_r($query->result());
          $status_active=$result[0]->status_active;
          $status_view=$result[0]->status_view;
          if($status_active==1){
            $date_end=$result[0]->date_end;
            $new_date_end=$date_end.' 19:00:00';       
            if(new DateTime() >= new DateTime($new_date_end)){
              if($status_view==8){
                switch ($value1) {
                  case '1':
                    $page="vendors_user/new_commerical/submission_commerical_page1";
                    break;
                  case '2':
                    $page="vendors_user/new_commerical/submission_commerical_page1";                
                    break;
                 case '3':
                    $page="vendors_user/new_commerical/submission_commerical_page2";     
                   break;
                 default:
                   # code...
                   break;
               }
              }else{
                $this->session->set_flashdata('error_message', 'Bid Is been Expired');
                // After that you need to used redirect function instead of load view such as
                redirect("user-vendor-home");
              }
             }else{
               if($status_view==7){
                  $this->session->set_flashdata('error_message', 'This id Is already send by you');
                    // After that you need to used redirect function instead of load view such as
                   redirect("user-vendor-home");
               }else{
                  switch ($value1) {
                    case '1':
                        $page="vendors_user/new_commerical/submission_commerical_page1";
                      break;
                    case '2':
                        $page="vendors_user/new_commerical/submission_commerical_page1";              
                      break;
                   case '3':
                      $page="vendors_user/new_commerical/submission_commerical_page2";     
                     break;
                   default:
                     # code...
                     break;
                 }
               }              
            }
          }else if ($status_active==2) {
             $this->session->set_flashdata('error_message', 'Bid Is been Closed For Now');
                // After that you need to used redirect function instead of load view such as
            redirect("user-vendor-home");
          }else{
            $this->session->set_flashdata('error_message', 'No Active Bid Now For You');
                // After that you need to used redirect function instead of load view such as
            redirect("user-vendor-home");
          }
        }else{
          $this->session->set_flashdata('error_message', 'There Is No Such Bid Is Present');
                // After that you need to used redirect function instead of load view such as
            redirect("user-vendor-home");
        }

        $this->load->view('vendors_user/vendor_template/v_template_header',$data);
        $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
        $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);            
        $this->load->view($page,$data);           
        $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);
    }


   





    public function vendor_bid_query_tech($value=''){
      $Vendor_email_id=$this->session->userdata('Vendor_email_id');
      if(empty($Vendor_email_id)){

      	redirect('vendor-logout-pass');
      }

      $query_slno=$this->input->post('query_slno');
      $bid_id=$this->input->post('bid_id');
      $query_details=$this->input->post('query_details');
      $date=date('Y-m-d');
      $data_query_bid = array('bid_slno'=>$bid_id, 'Vendor_id'=>$Vendor_email_id, 'query_details'=>$query_details, 'date_query'=>$date);
      $query_bid_store=$this->db->insert('master_bid_query',$data_query_bid);
      if($query_bid_store){
          $this->session->set_flashdata('success_message', 'successfully Query is Stored');
        redirect('user-vendor-query-panel/'.$query_slno);

      }else{
        $this->session->set_flashdata('error_message', 'Unable store Query for bid');
      	redirect('user-vendor-home');
      }
    }


    public function vendor_bid_query_commerical($value=''){
      $Vendor_email_id=$this->session->userdata('Vendor_email_id');
      if(empty($Vendor_email_id)){

        redirect('vendor-logout-pass');
      }

      $query_slno=$this->input->post('query_slno');
      $bid_id=$this->input->post('bid_id');
      $query_details=$this->input->post('query_details');
      $date=date('Y-m-d');
      $data_query_bid = array('bid_slno'=>$bid_id, 'Vendor_id'=>$Vendor_email_id, 'query_details'=>$query_details, 'date_query'=>$date);
      $query_bid_store=$this->db->insert('master_bid_query_commerical',$data_query_bid);
      if($query_bid_store){
          $this->session->set_flashdata('success_message', 'successfully Query is Stored');
        redirect('user-vendor-commerical-query-panel/'.$query_slno);
        
      }else{
        $this->session->set_flashdata('error_message', 'Unable store Query for bid');
        redirect('user-vendor-home');
      }
    }
    public function vendor_tech_bid_submission($value=''){
      $Vendor_email_id=$this->session->userdata('Vendor_email_id');
      if(empty($Vendor_email_id)){

      	redirect('vendor-logout-pass');
      }
      $date_created=date('Y-m-d');
      $result_title=$this->vendor_db_users->vendor_new_query_tech_title($value,$Vendor_email_id);
      $master_bid_id=$result_title['new_tech_list'][0]->master_bid_id;
      $token=random_string('alnum', 8);
      $data_token_insert = array('token_no'=>$token, 'bid_id_vendor'=>$value, 'master_bid_id'=>$master_bid_id, 'vendor_id'=>$Vendor_email_id, 'submitted_status'=>0, 'date_creation'=>$date_created);
      $query_insert_token_id=$this->db->insert('master_vendor_tech_token_bid',$data_token_insert);
      redirect('user-vendor-tech-bid-submission-tokens/'.$value.'/'.$token.'/'.$master_bid_id);
    }
   

    public function vendor_tech_bid_submission_tokens($value='',$value1='',$value2=''){
      $scripts='';
           $data=array('title' =>"Vendor Bid Submission",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value,'token'=>$value1,'master_bid_id'=>$value2);
           $this->load->view('vendors_user/vendor_template/v_template_header',$data);
           $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
           $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);
           $this->load->view('vendors_user/submission_tech_bid/submission_bid',$data);
           $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);
    }
    public function vendor_file_upload_data($value=''){


      $actions_file=$this->input->post('actions_file');
      $master_bid_id=$this->input->post('master_bid_id');
      $token=$this->input->post('value_keys');
      $value_slno=$this->input->post('value_slno');
      $Vendor_email_id=$this->input->post('Vendor_email_id');
// Array ( [master_bid_id] => 1 [token] => ELXxTyY4 [value_slno] => 2 [file_name] => test [actions_file] => files_uploaded_details [Vendor_email_id] => ven121@gmail.com )
      switch ($actions_file) {
        case 'files_uploaded_details':
          $file_names=$this->input->post('file_name');
          $date=date('Y-m-d');
           $time_entry=date('H:i:s');
                if (isset($_FILES['file']) && !empty($_FILES['file'])) {
                    // $no_files = count($_FILES["file"]['name']);
                    $file_name=$_FILES["file"]["name"];
                    $file_stored_name=date('Y-m-d')."-".$_FILES["file"]["name"];
                    // for ($i = 0; $i < $no_files; $i++) {
                    if ($_FILES["file"]["error"] > 0) {
                        echo "3";
                    } else {
                        if (file_exists('upload_files/vendor_file_tech/' . $_FILES["file"]["name"])) {
                            echo '2';
                        } else {
                            if(move_uploaded_file($_FILES["file"]["tmp_name"], 'upload_files/vendor_file_tech/' . $file_stored_name)){
                                $data_array = array('token_id'=>$token, 'master_bid_id'=>$master_bid_id, 'vendor_id'=>$Vendor_email_id, 'file_name'=>$file_names, 'file_attach'=>$file_stored_name, 'status'=>1, 'date_entry'=>$date, 'time_entry'=>$time_entry, 'bid_user_slno'=>$value_slno);
                                $query_files=$this->db->insert('master_vendor_file_token',$data_array);
                                echo '1' ;
                            }
                        }
                    }
                }
                break;
        case 'files_info_vendors':
              $data_array_check = array('token_id'=>$token, 'master_bid_id'=>$master_bid_id, 'vendor_id'=>$Vendor_email_id,  'bid_user_slno'=>$value_slno );
                $result_file=$this->vendor_db_users->get_vendors_tech_bid_file_list($data_array_check);
                if($result_file['no_file_vendor']==2){
                    echo "<p class='text-center' style='color:red'><b>No File Attachment is found for this MR Request no</b></p>";
                }else if($result_file['no_file_vendor']==1){
                    ?>
                      <table class="table table-bordered" cellpadding="10" cellspacing="1" width="100%">
                        <thead>
                            <tr>
                                <th><strong>File Name</strong></th>
                                <th><strong>Click View</strong></th>
                                <th><strong>Action</strong></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($result_file['file_vendors_list'] as $key_files){ ?>
                                <tr>
                                    <td><strong><?=$key_files->file_name?></strong></td>
                                    <td><strong><a target="_blank" href="<?=base_url()?>upload_files/vendor_file_tech/<?=$key_files->file_attach?>">Click View</a> </strong></td>
                                    <td><strong><span onclick="file_delete(<?=$key_files->slno_tech_file?>)" class="btn btn-sm btn-danger">Delete File</span></strong></td>
                                </tr>


                            <?php }?>

                        </tbody>
                    </table>
                    <?php

                }

                break;
            case 'files_info_delete':
                $file_id=$this->input->post('file_id');
                $this->db->where('slno_tech_file', $file_id);
                $query_result=$this->db->get('master_vendor_file_token');

                $data_result=$query_result->result();
                $data_details=$data_result[0];

                $path_to_file = 'upload_files/vendor_file_tech/'.$data_details->file_attach;
                if(unlink($path_to_file)) {
                    $this->db->where('slno_tech_file', $file_id);
                    $query=$this->db->delete('master_vendor_file_token');
                    if($query){
                        echo "1";
                    }else{
                        echo "2";
                    }
                     // echo 'deleted successfully';
                }else {
                     echo '2';
                }

                break;
        default:
          # code...
          break;
      }
    }
    public function vendor_tech_file_new_bid_submission($value=''){
      // print_r($this->input->post());
      $value_slno=$this->input->post('value_slno');
      $token=$this->input->post('key_values_slno');
      $master_bid_id=$this->input->post('master_bid_id');
      $Vendor_email_id=$this->input->post('Vendor_email_id');
      $data_array_check = array('token_id'=>$token, 'master_bid_id'=>$master_bid_id, 'vendor_id'=>$Vendor_email_id,  'bid_user_slno'=>$value_slno );
                $result_file=$this->vendor_db_users->get_vendors_tech_bid_file_list($data_array_check);
                if($result_file['no_file_vendor']==2){
                   $this->session->set_flashdata('error_message', 'No File is been Attached to Current bid submission please attach files');
                  redirect('user-vendor-tech-bid-submission-tokens/'.$value_slno.'/'.$token .'/'.$master_bid_id );
                }else if($result_file['no_file_vendor']==1){
                  $data_values = array('bid_id_vendor' =>$value_slno , 'master_bid_id'=>$master_bid_id,'vendor_id'=>$Vendor_email_id,'submitted_status'=>1);
                  $check_file_submitted=$this->db->get_where('master_vendor_tech_token_bid',$data_values);
                  if($check_file_submitted->num_rows()==0){
                    $data_valuea ['token_no']= $token;
                    $data_updates = array('submitted_status' => 1);
                    $update_query=$this->db->update('master_vendor_tech_token_bid',$data_updates,$data_valuea);
                    // echo $this->db->last_query();
                    // exit();
                    if($update_query){
                      $data_values_vendor = array('slno_vendor' => $value_slno);
                      $vendor_sub = array('submission_status' => 1,'status_view'=>7);
                      $update_query_vendor=$this->db->update('master_bid_vendor',$vendor_sub,$data_values_vendor);
                      $this->session->set_flashdata('success_message', 'successfully Bid is submitted');
                      redirect('user-vendor-home');
                    }else{
                         $this->session->set_flashdata('error_message', 'Some thing Went wrong');
                          redirect('user-vendor-tech-bid-submission-tokens/'.$value_slno.'/'.$token .'/'.$master_bid_id );
                    }
                  }else{
                    foreach ($check_file_submitted->result() as $key_datavalue) {
                     $data_update_id = array('Slno_token' => $key_datavalue->Slno_token );
                      $data_update = array('submitted_status' => 5);
                       $update_querys=$this->db->update('master_vendor_tech_token_bid',$data_update,$data_update_id);
                    }

                    $data_valuea ['token_no']= $token;
                    $data_updates = array('submitted_status' => 1);
                    $update_query=$this->db->update('master_vendor_tech_token_bid',$data_updates,$data_valuea);
                    // echo $this->db->last_query();
                    // exit();
                    if($update_query){
                      $data_values_vendor = array('slno_vendor' => $value_slno);
                      $vendor_sub = array('submission_status' => 1,'status_view'=>7);
                      $update_query_vendor=$this->db->update('master_bid_vendor',$vendor_sub,$data_values_vendor);
                      $this->session->set_flashdata('success_message', 'successfully Bid is submitted');
                      redirect('user-vendor-home');
                    }else{
                         $this->session->set_flashdata('error_message', 'Some thing Went wrong');
                          redirect('user-vendor-tech-bid-submission-tokens/'.$value_slno.'/'.$token .'/'.$master_bid_id );
                    }



                  }

                }else{
                    $this->session->set_flashdata('error_message', 'No File is been Attached to Current bid submission please attach files');
                  redirect('user-vendor-tech-bid-submission-tokens/'.$value_slno.'/'.$token .'/'.$master_bid_id );
                }
      // Array ( [value_slno] => 2 [key_values_slno] => Jlj41WUg [master_bid_id] => 1 [Vendor_email_id] => ven121@gmail.com [file_name] => [new_file] => )
      # code...
    }
    public function vendor_bid_submission_commerical_save_s_C($value=''){
      print_r($this->input->post());

      $mode_bid_id=$this->input->post('mode_bid_id');
      $Category=$this->input->post('Category');

      $master_bid_id=$this->input->post('master_bid_id');
      $vendor_bid_id=$this->input->post('vendor_bid_id');
      $vendor_id=$this->input->post('vendor_id');
      $mode_bid=$this->input->post('mode_bid');

      $sub_total=$this->input->post('sub_total');
      $total_tax=$this->input->post('total_tax');
      $total_landed=$this->input->post('total_landed');
      $user_assumption=$this->input->post('user_assumption');
      
      $delivery_basis=$this->input->post('delivery_basis');
      $gaurantee_warranty=$this->input->post('gaurantee_warranty');
      $delivery_schedule=$this->input->post('delivery_schedule');
      $payment_terms=$this->input->post('payment_terms');
      $validity_of_offer=$this->input->post('validity_of_offer');
      $security_BG=$this->input->post('security_BG');
      $liquidity_damage=$this->input->post('liquidity_damage');
      $remarks=$this->input->post('remarks');
     
      $bid_ref=$this->input->post('bid_ref');
      
      $merage_id=$mode_bid_id.$Category; // 1->mode  2->category

        switch ($merage_id) {
          case '11': // open bid with sci

            $slno_mat=$this->input->post('slno_mat');
            $item_name=$this->input->post('item_name');
            $item_id=$this->input->post('item_id');
            $item_qnt=$this->input->post('item_qnt');
            $item_uom=$this->input->post('item_uom');
            $cost=$this->input->post('cost');
            $price=$this->input->post('price');


            # code...
            break;
           case '21': //closed bid with sci

            $basic_insert = array('Bid_master_id_comm'=>$master_bid_id, 'Bid_ref_no'=>$bid_ref, 'Bid_vendor_id'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id, 'type_of_bid'=>$mode_bid, 'category_id'=>$Category, 'type_bid_id'=>$mode_bid_id);
            $query_insert=$this->db->insert('master_closed_bid',$basic_insert);
            $last_bid_insert=$this->db->last_query();



            $slno_mat=$this->input->post('slno_mat');
            $item_name=$this->input->post('item_name');
            $item_id=$this->input->post('item_id');
            $item_qnt=$this->input->post('item_qnt');
            $item_uom=$this->input->post('item_uom');
            $cost=$this->input->post('cost');
            $price=$this->input->post('price');

            break;
          case '12': // opne bid with moi
           
            $slno_mat=$this->input->post('slno_mat');
            $item_name=$this->input->post('item_name');
            $item_id=$this->input->post('item_id');
            $item_qnt=$this->input->post('item_qnt');
            $item_uom=$this->input->post('item_uom');
            $cost=$this->input->post('cost');
            $price=$this->input->post('price');

            break;
          case '22': // closed bid with moi
             $basic_insert = array('Bid_master_id_comm'=>$master_bid_id, 'Bid_ref_no'=>$bid_ref, 'Bid_vendor_id'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id, 'type_of_bid'=>$mode_bid, 'category_id'=>$Category, 'type_bid_id'=>$mode_bid_id);
            $query_insert=$this->db->insert('master_closed_bid',$basic_insert);
            $last_bid_insert=$this->db->last_query();

            $slno_mat=$this->input->post('slno_mat');
            $item_name=$this->input->post('item_name');
            $item_id=$this->input->post('item_id');
            $item_qnt=$this->input->post('item_qnt');
            $item_uom=$this->input->post('item_uom');
            $cost=$this->input->post('cost');
            $price=$this->input->post('price');

            break;
          case '13': //open bid with logistic
              
            
              $Slno_logic_comm=$this->input->post('Slno_logic_comm');
              $vehicle_name=$this->input->post('vehicle_name');
              $vehicle_capacity=$this->input->post('vehicle_capacity');
              $vehicle_details=$this->input->post('vehicle_details');
              $vehicle_nos=$this->input->post('vehicle_nos');
              $from_location=$this->input->post('from_location');
              $to_location=$this->input->post('to_location');
              $cost=$this->input->post('cost');
              $price=$this->input->post('price');             

            break;
          case '23': // closed bid with logistic

             $basic_insert = array('Bid_master_id_comm'=>$master_bid_id, 'Bid_ref_no'=>$bid_ref, 'Bid_vendor_id'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id, 'type_of_bid'=>$mode_bid, 'category_id'=>$Category, 'type_bid_id'=>$mode_bid_id);
              $query_insert=$this->db->insert('master_closed_bid',$basic_insert);
             $last_bid_insert=$this->db->last_query();

              $Slno_logic_comm=$this->input->post('Slno_logic_comm');
              $vehicle_name=$this->input->post('vehicle_name');
              $vehicle_capacity=$this->input->post('vehicle_capacity');
              $vehicle_details=$this->input->post('vehicle_details');
              $vehicle_nos=$this->input->post('vehicle_nos');
              $from_location=$this->input->post('from_location');
              $to_location=$this->input->post('to_location');
              $cost=$this->input->post('cost');
              $price=$this->input->post('price');   

              foreach ($Slno_logic_comm as $key_id => $value_ids) {
                $Slno_logic_comm_single=$Slno_logic_comm[$key_id];
                $vehicle_name_single=$vehicle_name[$key_id];
                $vehicle_capacity_single=$vehicle_capacity[$key_id];
                $vehicle_details_single=$vehicle_details[$key_id];
                $vehicle_nos_single=$vehicle_nos[$key_id];
                $from_location_single=$from_location[$key_id];
                $to_location_single=$to_location[$key_id];
                $cost_single=$cost[$key_id];
                $price_single=$price[$key_id];

                $vechile_insert = array('closed_id_slno'=>$last_bid_insert, 'bid_master_id_com'=>$master_bid_id, 'vehicle_type'=>$vehicle_name_single, 'capacity'=>$vehicle_capacity_single, 'detail'=>$vehicle_details_single, 'no'=>$vehicle_nos_single, 'from_location'=>$from_location_single, 'to_location'=>$to_location_single, 'unit_price'=>$cost_single, 'total_unit_price'=>$price_single,  'comm_item_slno'=>$Slno_logic_comm_single,  'vendor_bid_slno'=>$vendor_bid_id, 'vendor_id'=>$vendor_id);
                  $query_vendor_insert=$this->db->insert('master_closed_bid_logistics',$vechile_insert);
                # code...
              }

              $misc_insert []= array('master_bid_id_com'=>$master_bid_id, 'closed_id_slno_misc'=>$last_bid_insert, 'Bid_slno'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id,'field_name'=>'delivery basis','field_value'=>$delivery_basis);
              $misc_insert[] = array('master_bid_id_com'=>$master_bid_id, 'closed_id_slno_misc'=>$last_bid_insert, 'Bid_slno'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id,'field name'=>'gaurantee warranty','field_value'=>$gaurantee_warranty);
              $misc_insert[] = array('master_bid_id_com'=>$master_bid_id, 'closed_id_slno_misc'=>$last_bid_insert, 'Bid_slno'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id,'field_name'=>'delivery schedule','field_value'=>$delivery_schedule);
              $misc_insert[] = array('master_bid_id_com'=>$master_bid_id, 'closed_id_slno_misc'=>$last_bid_insert, 'Bid_slno'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id,'field_name'=>'payment terms','field_value'=>$payment_terms);
              $misc_insert[] = array('master_bid_id_com'=>$master_bid_id, 'closed_id_slno_misc'=>$last_bid_insert, 'Bid_slno'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id,'field_name'=>'validity of offer','field_value'=>$validity_of_offer);
              $misc_insert[] = array('master_bid_id_com'=>$master_bid_id, 'closed_id_slno_misc'=>$last_bid_insert, 'Bid_slno'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id,'field_name'=>'security BG','field_value'=>$security_BG);
              $misc_insert[] = array('master_bid_id_com'=>$master_bid_id, 'closed_id_slno_misc'=>$last_bid_insert, 'Bid_slno'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id,'field_name'=>'liquidity damage','field_value'=>$liquidity_damage);
              $misc_insert[] = array('master_bid_id_com'=>$master_bid_id, 'closed_id_slno_misc'=>$last_bid_insert, 'Bid_slno'=>$vendor_bid_id, 'Vendor_id'=>$vendor_id,'field_name'=>'remarks','field_value'=>$remarks);
              // $query_vendor_insert=$this->db->insert('master_closed_bid_logistics',$vechile_insert);
               $query_vendor_insert=$this->db->insert_batch('master_closed_bid_item_misc',$vechile_insert);

               // $

            break;
          default:
            # code...
            break;
        }

      

     
    }
   //Array ( [master_bid_id] => 2 [vendor_bid_id] => 8 [vendor_id] => ven121@gmail.com [mode_bid] => Closed Bid [mode_bid_id] => 2 [Category] => 3 [bid_ref] => 559 [Slno_logic_comm] => Array ( [7] => 7 [8] => 8 [9] => 9 [10] => 10 ) [vehicle_name] => Array ( [7] => 504ponds [8] => vehicle10 [9] => vehicle10 [10] => vehicle12 ) [vehicle_capacity] => Array ( [7] => 5ponds [8] => 8000ponds [9] => 5ponds [10] => 60000ponds ) [vehicle_details] => Array ( [7] => tyyy [8] => XYZ [9] => 2345 [10] => abc ) [vehicle_nos] => Array ( [7] => 1 [8] => 1 [9] => 1 [10] => 1 ) [from_location] => Array ( [7] => bhu [8] => sailahree vihar [9] => sailahree vihar [10] => irc ) [to_location] => Array ( [7] => bhu [8] => sailahree vihar [9] => sailahree vihar [10] => irc ) [cost] => Array ( [7] => 3445 [8] => 7543 [9] => 676 [10] => 734 ) [price] => Array ( [7] => 3445.00 [8] => 7543.00 [9] => 676.00 [10] => 734.00 ) [sub_total] => 12398.00 [total_tax] => 044.00 [total_landed] => 12442.00 [user_assumption] => 0.00 [delivery_basis] => hfyty [gaurantee_warranty] => uytr [delivery_schedule] => ubv [payment_terms] => ffgf [validity_of_offer] => uihggf [security_BG] => gfg [liquidity_damage] => fgt [remarks] => dfggf )
   //
  //Array ( [master_bid_id] => 4 [vendor_bid_id] => 20 [vendor_id] => ven121@gmail.com [mode_bid] => Simple Bid [mode_bid_id] => 1 [Category] => 2 [bid_ref] => qq  [slno_mat] => Array ( [1] => 1 [2] => 2 [3] => 3 ) [item_name] => Array ( [1] => Progressing cavity pump. [2] => Pump [3] => Rotary lobe pump ) [item_id] => Array ( [1] => Mat003 [2] => Mat001 [3] => Mat002 ) [item_qnt] => Array ( [1] => 10 [2] => 11 [3] => 15 ) [item_uom] => Array ( [1] => Capacity [2] => Horse Power [3] => Max Pump volume ) [cost] => Array ( [1] => 7656 [2] => 7898 [3] => 43w56 ) [price] => Array ( [1] => 76560.00 [2] => 86878.00 [3] => 645.00 ) [sub_total] => 164083.00 [total_tax] => 5656 [total_landed] => 169739.00 [user_assumption] => [delivery_basis] => tyrtf [gaurantee_warranty] => uyhg [delivery_schedule] => xfddfd [payment_terms] => gvb [validity_of_offer] => vhtfr [security_BG] => ghvfg [liquidity_damage] => gyfg [remarks] => jhbnhh )






    //
     public function vendor_logout($value=''){
         $session_id=session_id();
                // print_r($this->session->userdata());
                $created_session_id=$this->session->userdata('session_id');
                $date=date('Y-m-d');
                $time=date('H:i:s');
                if($session_id==$created_session_id){
                        $user_data = array('logout_date'=>$date, 'logout_time'=>$time, 'status'=>'2');
                        $id=array('session_id'=>$session_id);
                        $user_hstory_table="master_session_history_vendors";
                        $result_history = $this->user->common_update($user_hstory_table,$user_data,$id);
                        session_destroy();
                        session_start();
                        $this->session->set_flashdata('success_message', 'Signout from Vendor User Portal');
                        redirect('vendor');

                }else{

                        $user_data = array('logout_date'=>$date, 'logout_time'=>$time, 'status'=>'2');
                        $id=array('session_id'=>$session_id);
                        $user_hstory_table="master_session_history_vendors";
                        $result_history = $this->user->common_update($user_hstory_table,$user_data,$id);
                        session_destroy();
                        session_start();
                        $this->session->set_flashdata('success_message', 'Sign-out from Vendor User Portal');
                        redirect('vendor');
                }
        # code...
    }
    public function vendor_logout_bypass(){
        $this->session->set_flashdata('error_msg', 'Invalid entry to Vendor User Portal');
        redirect('vendor');

    }


}
