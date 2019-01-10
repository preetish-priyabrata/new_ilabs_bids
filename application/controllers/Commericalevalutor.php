<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Commericalevalutor extends CI_Controller {
    public function __construct(){
            parent::__construct();
            // Loading my model which will use
            $this->load->model('user_model', 'user');
            $this->load->model('approver_model', 'approver_user');
            $this->load->model('design_model', 'design_user');
            $this->load->model('procurement_model', 'procurement_user');
            $this->load->model('buyer_model','buyer_user');
            $this->load->model('vendor_model','vendor_db_users');
            $this->load->model('technicalevalutor_model','tech_eva_db');
            $this->load->model('commericalevaluator_model','comm_eva_db');
            // imedate database link
            $this->load->database();

            //Load session library
         $this->load->library('session');
         $this->load->library('user_agent');
         $this->load->library('encryption');
         $this->load->library('form_validation');


    }
    public function comm_evalutor_home($value=''){
      $scripts='';
            $data=array('title' =>"Commerical Evalutor User Dashboard",'script_js'=>$scripts,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'');
            $this->load->view('template/template_header',$data);
            $this->load->view('comm_evalutor_user/template/template_top_head');
            $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
            $this->load->view('comm_evalutor_user/user_dashboard');
            $this->load->view('template/template_footer',$data);
    }

  
   public function commerical_evaluator_bid_new_list($value=''){
      $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
          $data=array('title' =>"New Bid List",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'');

            $this->load->view('template/template_header',$data);
            $this->load->view('comm_evalutor_user/template/template_top_head');
            $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
            $this->load->view('comm_evalutor_user/comm_bid_new/commerical_bid_new_list',$data);
            $this->load->view('template/template_footer',$data);
    }
    /**
     * [commerical_generate_otp_bid_referecnce description] here otp is generated
     * @param  string $value  [type of bid ie 2=> close bid 1=>simple bid 3=>rankorder bid]
     * @param  string $value1 [master bid serial no]
     * @param  string $value2 [category -id 1=>sci 2=>moi 3=>logistics]
     * @param  string $value3 [bid information]
     * @param [type] $value4 [buyer_slno]
     * @return [type]         [description]
     */
    public function commerical_generate_otp_bid_referecnce($value='',$value1='',$value2="",$value3="",$value4){
        $commerical_email_id=$this->session->userdata('commerical_email_id');
        $this->load->helper('string');
        $otp=date('Y-m-d')."-".random_string('alnum', 16);
       if(!empty($value) && !empty($value1) && !empty($value2) && !empty($value3)){
        switch ($value3) {
            case 'Closed Bid':
                if($value==2){
                    $bid_serial_insert = array('master_bid_id'=>$value1, 'bid_slno'=>$value4, 'type_bid'=>$value, 'category_bid'=>$value2, 'otp'=>$otp, 'bid_name'=>$value3, 'user_id_process'=>$commerical_email_id, 'status'=>1, 'match_status'=>2);
                    $query_otp_insert=$this->db->insert('master_bid_otp_commerical',$bid_serial_insert);
                    $last_insert_id=$this->db->insert_id();
                    if($query_otp_insert){
                        $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
                        $data=array('title' =>"New Bid List",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','type_bid'=>$value,'master_bid_id'=>$value1,'category_id'=>$value2,'bid_name'=>$value3,'buyer_bid'=>$value4,'last_otp_id'=>$last_insert_id);

                        $this->load->view('template/template_header',$data);
                        $this->load->view('comm_evalutor_user/template/template_top_head');
                        $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
                        $this->load->view('comm_evalutor_user/otp_commerical/otp_check.php',$data);
                        $this->load->view('template/template_footer',$data);
                    }else{

                    }

                }else{
                    $this->session->set_flashdata('error_message', 'Invalid Access!');
                    redirect('user-buyer-home');
                }
                break;
            case 'Simple Bid':
                if($value==1){
                    $bid_serial_insert = array('master_bid_id'=>$value1, 'bid_slno'=>$value4, 'type_bid'=>$value, 'category_bid'=>$value2, 'otp'=>$otp, 'bid_name'=>$value3, 'user_id_process'=>$commerical_email_id, 'status'=>1, 'match_status'=>2);
                    $query_otp_insert=$this->db->insert('master_bid_otp_commerical',$bid_serial_insert);
                    $last_insert_id=$this->db->insert_id();
                    if($query_otp_insert){
                        $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
                        $data=array('title' =>"New Bid List",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','type_bid'=>$value,'master_bid_id'=>$value1,'category_id'=>$value2,'bid_name'=>$value3,'buyer_bid'=>$value4,'last_otp_id'=>$last_insert_id);

                        $this->load->view('template/template_header',$data);
                        $this->load->view('comm_evalutor_user/template/template_top_head');
                        $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
                        $this->load->view('comm_evalutor_user/otp_commerical/otp_check.php',$data);
                        $this->load->view('template/template_footer',$data);
                    }else{

                    }

                }else{
                    $this->session->set_flashdata('error_message', 'Invalid Access!!');
                    redirect('user-buyer-home');
                }
                break;
            case 'Rank Order Bid':
                if($value==1){
                    $bid_serial_insert = array('master_bid_id'=>$value1, 'bid_slno'=>$value4, 'type_bid'=>$value, 'category_bid'=>$value2, 'otp'=>$otp, 'bid_name'=>$value3, 'user_id_process'=>$commerical_email_id, 'status'=>1, 'match_status'=>2);
                    $query_otp_insert=$this->db->insert('master_bid_otp_commerical',$bid_serial_insert);
                    $last_insert_id=$this->db->insert_id();
                    if($query_otp_insert){
                        $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
                        $data=array('title' =>"New Bid List",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','type_bid'=>$value,'master_bid_id'=>$value1,'category_id'=>$value2,'bid_name'=>$value3,'buyer_bid'=>$value4,'last_otp_id'=>$last_insert_id);

                        $this->load->view('template/template_header',$data);
                        $this->load->view('comm_evalutor_user/template/template_top_head');
                        $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
                        $this->load->view('comm_evalutor_user/otp_commerical/otp_check.php',$data);
                        $this->load->view('template/template_footer',$data);
                    }else{

                    }

                }else{
                    $this->session->set_flashdata('error_message', 'Invalid Access!!!');
                    redirect('user-buyer-home');
                }
                break;

            default:
                $this->session->set_flashdata('error_message', 'The Information Trying access is invalid');
                redirect('user-buyer-home');
            break;
        }
       }else{
            $this->session->set_flashdata('error_message', 'Try to access tbid ');
            redirect('user-buyer-home');
       }
    }
    /**
     * [technical_evaluator_view_details_technical_bid_new description]
     * @param  string $value [Slno_bid it contain bid master id which will leaD OTHER WORK]
     * @return [type]        [description]
     */
    public function commerical_evaluator_view_details_commerical_bid_new($value='',$value1=''){
        $scripts='';
    //   $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
          $data=array('title' =>"Detail Information Of bid",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','value'=>$value,'value1'=>$value1);
            $this->load->view('template/template_header',$data);
            $this->load->view('comm_evalutor_user/template/template_top_head');
            $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
            if($value1==3){
                 $this->load->view('comm_evalutor_user/comm_bid_view_details/view_commerical_bid_logistic_detail',$data);
            }else if(($value1==2) || ($value1==1)){
                $this->load->view('comm_evalutor_user/comm_bid_view_details/View_commerical_bid_detail',$data);
                 
            }else{
                $this->session->set_flashdata('error_message',  'Something went wrong Try Again!!!!');
                redirect('user-commerical-evalutor-home');
            }
           
            $this->load->view('template/template_footer',$data);
    }
    /**
     * [technical_evalutor_get_approved_reject description]
     * @param  string $value  [slno_vendor]
     * @param  string $value1 [master_bid_id / serial no]
     * @param  string $value2 [category ]
     * @return [type]         [description]
     */
 // }






    //
     public function comm_evalutor_logout($value=''){
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
                        $this->session->set_flashdata('success_message', 'Signout from Commerical Evalutors User Portal');
                        redirect('home');

                }else{

                        $user_data = array('logout_date'=>$date, 'logout_time'=>$time, 'status'=>'2');
                        $id=array('session_id'=>$session_id);
                        $user_hstory_table="master_session_history_vendors";
                        $result_history = $this->user->common_update($user_hstory_table,$user_data,$id);
                        session_destroy();
                        session_start();
                        $this->session->set_flashdata('success_message', 'Sign-out from Commerical Evalutors User Portal');
                        redirect('home');
                }
        # code...
    }
    public function comm_evalutor_logout_bypass(){
        $this->session->set_flashdata('error_msg', 'Invalid entry to Commerical Evalutors User Portal');
        redirect('home');

    }


}
