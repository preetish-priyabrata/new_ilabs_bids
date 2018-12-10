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
    public function vendor_query_panel($value=''){

     $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
            $data=array('title' =>"Vendor Dashboard",'script_js'=>$scripts ,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value);
            $this->load->view('vendors_user/vendor_template/v_template_header',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_head',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_menu',$data);

            $this->load->view('vendors_user/New_Technical/Query_panel',$data);
            $this->load->view('vendors_user/vendor_template/v_template_top_footer',$data);



    }
    public function vendor_new_tech_view_details($value='',$value1=''){
      $data_update=array('status_view'=>6);
      $data_id=array('slno_vendor'=>$value);
      $query=$this->db->update('master_bid_vendor',$data_update,$data_id);
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
    /**
     * [vendor_tech_bid_submission_token description]
     * @param  [type] $value  [bidder is]
     * @param  [type] $value1 [token id]
     * @param  [type] $value2 [master bid id slno]
     * @return [type]         [description]
     */

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
      print_r($this->input->post());
      exit;
      
      $actions_file=$this->input->post('actions_file');
      $master_bid_id=$this->input->post('master_bid_id');
      $token=$this->input->post('token');
      $value_slno=$this->input->post('value_slno');

//       Array
// (
//     [master_bid_id] => 1
//     [token] => ELXxTyY4
//     [value_slno] => 2
//     [file_name] => test
//     [actions_file] => files_uploaded_details
// )
      switch ($actions_file) {
        case 'files_uploaded_details':
          $file_name=$this->input->post('value_slno');
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
                                $data_array = array('mr_no_id'=>$Mr_no, 'slno_mr_id'=>$slno_Mr_no, 'attach_name'=>$file_stored_name, 'file_name_actucal'=>$file_name);
                                $query_files=$this->db->insert('master_mr_file_upload',$data_array);
                                echo '1' ;  
                            }
                        }                
                    }            
                } 
                break;
        case 'files_info':
                $result_file=$this->design_user->get_design_mr_file_list($slno_Mr_no,$Mr_no);
                if($result_file['no_files']==2){
                    echo "<p class='text-center' style='color:red'><b>No File Attachment is found for this MR Request no</b></p>";
                }else if($result_file['no_files']==1){
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
                            <?php foreach($result_file['files_list'] as $key_files){ ?>
                                <tr>
                                    <td><strong><?=$key_files->file_name_actucal?></strong></td>
                                    <td><strong><a target="_blank" href="<?=base_url()?>upload_files/vendor_file_tech/<?=$key_files->attach_name?>">Click View</a> </strong></td>                                
                                    <td><strong><span onclick="file_delete(<?=$key_files->slno_file?>)" class="btn btn-sm btn-danger">Delete File</span></strong></td>
                                </tr> 


                            <?php }?>

                        </tbody>
                    </table>
                    <?php

                }

                break;
            case 'files_info_delete':
                $file_id=$this->input->post('file_id');
                $this->db->where('slno_file', $file_id);
                $query_result=$this->db->get('master_mr_file_upload');

                $data_result=$query_result->result();
                $data_details=$data_result[0];

                $path_to_file = 'upload_files/vendor_file_tech/'.$data_details->attach_name;
                if(unlink($path_to_file)) {
                    $this->db->where('slno_file', $file_id);
                    $query=$this->db->delete('master_mr_file_upload');
                    if($query){
                        echo "1";
                    }else{
                        echo "2";
                    }
                     // echo 'deleted successfully';
                }
                else {
                     echo '2';
                }                

                break;
        default:
          # code...
          break;
      }
    }










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
