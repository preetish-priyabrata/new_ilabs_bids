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
        $commerical_email_id=$this->session->userdata('commerical_email_id');
         if(empty($commerical_email_id)){
            
            redirect('comm-evalutor-logout-by-pass');
        }
      $scripts='';
            $data=array('title' =>"Commerical Evalutor User Dashboard",'script_js'=>$scripts,'menu_status'=>'','sub_menu'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'');
            $this->load->view('template/template_header',$data);
            $this->load->view('comm_evalutor_user/template/template_top_head');
            $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
            $this->load->view('comm_evalutor_user/user_dashboard');
            $this->load->view('template/template_footer',$data);
    }

  
   public function commerical_evaluator_bid_new_list($value=''){
        $commerical_email_id=$this->session->userdata('commerical_email_id');
         if(empty($commerical_email_id)){
            
            redirect('comm-evalutor-logout-by-pass');
        }
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
         if(empty($commerical_email_id)){
            
            redirect('comm-evalutor-logout-by-pass');
        }
        $this->load->helper('string');
        $otp=date('Y-m-d')."-".random_string('alnum', 5);
       if(!empty($value) && !empty($value1) && !empty($value2) && !empty($value3)){
         $value3 = urldecode($value3);        
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
                        $this->load->view('comm_evalutor_user/otp_commerical/otp_check',$data);
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
                        $this->load->view('comm_evalutor_user/otp_commerical/otp_check',$data);
                        $this->load->view('template/template_footer',$data);
                    }else{

                    }

                }else{
                    $this->session->set_flashdata('error_message', 'Invalid Access!!');
                    redirect('user-buyer-home');
                }
                break;
            case 'Rank Order Bid':
                if($value==3){
                    $bid_serial_insert = array('master_bid_id'=>$value1, 'bid_slno'=>$value4, 'type_bid'=>$value, 'category_bid'=>$value2, 'otp'=>$otp, 'bid_name'=>$value3, 'user_id_process'=>$commerical_email_id, 'status'=>1, 'match_status'=>2);
                    $query_otp_insert=$this->db->insert('master_bid_otp_commerical',$bid_serial_insert);
                    $last_insert_id=$this->db->insert_id();
                    if($query_otp_insert){
                        $scripts='<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script><script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script><script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script> <script src="'.base_url().'file_css_admin/own_js.js"></script>';
                        $data=array('title' =>"New Bid List",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','type_bid'=>$value,'master_bid_id'=>$value1,'category_id'=>$value2,'bid_name'=>$value3,'buyer_bid'=>$value4,'last_otp_id'=>$last_insert_id);

                        $this->load->view('template/template_header',$data);
                        $this->load->view('comm_evalutor_user/template/template_top_head');
                        $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
                        $this->load->view('comm_evalutor_user/otp_commerical/otp_check',$data);
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
            $this->session->set_flashdata('error_message', 'Try to access bid ');
            redirect('user-buyer-home');
       }
    }
    /**
     * [technical_evaluator_view_details_technical_bid_new description]
     * @param  string $value [Slno_bid it contain bid master id which will leaD OTHER WORK]
     * @return [type]        [description]
     */
    public function commerical_evaluator_view_details_commerical_bid_new($value='',$value1=''){
        $commerical_email_id=$this->session->userdata('commerical_email_id');
         if(empty($commerical_email_id)){
            
            redirect('comm-evalutor-logout-by-pass');
        }
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
     * [commerical_otp_verification description]here otp is check and rewdreict to specfic folder for working
     * @return [type] [description]
     */
    public function commerical_otp_verification(){
        $commerical_email_id=$this->session->userdata('commerical_email_id');
        if(empty($commerical_email_id)){
            
            redirect('comm-evalutor-logout-by-pass');
        }
        // print_r($this->input->post());
        // Array ( [type_bid] => 2 [master_bid_id] => 1 [category_id] => 1 [bid_name] => Closed Bid [buyer_bid] => 2 [last_otp_id] => 1 [OTP] => 2019-01-11-3EXf ) 
        $type_bid=$this->input->post('type_bid');
        $master_bid_id=$this->input->post('master_bid_id');
        $category_id=$this->input->post('category_id');
        $bid_name=$this->input->post('bid_name');
        $buyer_bid=$this->input->post('buyer_bid');
        $last_otp_id=$this->input->post('last_otp_id');
        $OTP=$this->input->post('OTP');

        $get_check = array('slno_comm' =>$last_otp_id,'status'=>1,'match_status'=>2);
        $query_check=$this->db->get_where('master_bid_otp_commerical',$get_check);
        if($query_check->num_rows() == 0){
            $this->session->set_flashdata('error_message',  'Something went wrong Try Again!!!!');
            redirect('user-commerical-evalutor-home');
           # code...
        }else{
            $fetch_data=$query_check->result();
            $db_otp=$fetch_data[0]->otp;
            if($db_otp==$OTP){
                $update_status = array('match_status' => 1 ,'match_bid_id_user'=>$commerical_email_id);
                $data_update_id= array('slno_comm' =>$last_otp_id);
                $query_update_otp=$this->db->update('master_bid_otp_commerical',$update_status,$data_update_id);
                if($query_update_otp){
                     $this->session->set_flashdata('success_message',  'Entered Otp Is not matching some portion of otp is missing ');
                    redirect('commerical-otp-verification-success/'.$type_bid.'/'.$master_bid_id.'/'.$category_id.'/'.$bid_name.'/'.$buyer_bid.'/'.$last_otp_id);
                }else{
                     $this->session->set_flashdata('error_message',  'Something went worng');
                    redirect('commerical-otp-verification-fail/'.$type_bid.'/'.$master_bid_id.'/'.$category_id.'/'.$bid_name.'/'.$buyer_bid.'/'.$last_otp_id);
                }
            }else{
                $this->session->set_flashdata('error_message',  'Entered Otp Is not matching some portion of otp is missing ');
                redirect('commerical-otp-verification-fail/'.$type_bid.'/'.$master_bid_id.'/'.$category_id.'/'.$bid_name.'/'.$buyer_bid.'/'.$last_otp_id);
            }
        }
    }
    /**
     * [commerical_otp_verification_fail description here if otp is faild will be again have right for re-entering of otp]
     * @param  string $value  [type of bid ie 2=> close bid 1=>simple bid 3=>rankorder bid]
     * @param  string $value1 [master bid serial no]
     * @param  string $value2 [category -id 1=>sci 2=>moi 3=>logistics]
     * @param  string $value3 [bid information]
     * @param [type] $value4 [buyer_slno]
     * @param  [type] $value5 [here last insert id For validing otp]
     * @return [type]         [description]
     */
    public function commerical_otp_verification_fail($value='',$value1='',$value2="",$value3="",$value4="",$value5=""){
        $commerical_email_id=$this->session->userdata('commerical_email_id');
         if(empty($commerical_email_id)){
            
            redirect('comm-evalutor-logout-by-pass');
        }
        if (!empty($value) &&!empty($value1) && !empty($value2) && !empty($value3) && !empty($value4) && !empty($value5)) {
                 $scripts='';
                        $data=array('title' =>"Here otp is been verified",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','type_bid'=>$value,'master_bid_id'=>$value1,'category_id'=>$value2,'bid_name'=>$value3,'buyer_bid'=>$value4,'last_otp_id'=>$value5);

                        $this->load->view('template/template_header',$data);
                        $this->load->view('comm_evalutor_user/template/template_top_head');
                        $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
                        $this->load->view('comm_evalutor_user/otp_commerical/otp_check',$data);
                        $this->load->view('template/template_footer',$data);
            }else{
                $this->session->set_flashdata('error_message',  'Fore full accessing system please contact andmin for it');
                redirect('user-commerical-evalutor-home');
            }
    }
    /**
     * [commerical_otp_verification_success  here if otp is matcher here view of all user who has fill bid information as per bid supose user biding for simple bid with logistic or moi or sci like that closed bid ,rank order bid )
     * @param  string $value  [type of bid ie 2=> close bid 1=>simple bid 3=>rankorder bid]
     * @param  string $value1 [master bid serial no]
     * @param  string $value2 [category -id 1=>sci 2=>moi 3=>logistics]
     * @param  string $value3 [bid information]
     * @param [type] $value4 [buyer_slno]
     * @param  [type] $value5 [here last insert id For validing otp]
     * @return [type]         [description]
     */
    public function commerical_otp_verification_success($value='',$value1='',$value2="",$value3="",$value4="",$value5=""){
        $commerical_email_id=$this->session->userdata('commerical_email_id');
         if(empty($commerical_email_id)){
            
            redirect('comm-evalutor-logout-by-pass');
        }
        if (!empty($value) &&!empty($value1) && !empty($value2) && !empty($value3) && !empty($value4) && !empty($value5)) {
            $bid_type=$value.$value2;
            // echo "wait here for processing";
                switch ($bid_type) {
                    case '11': //Simple bid sci
                        # code...
                        break;
                    case '12': //Simple bid Moi
                        # code...
                        break;
                    case '13': //Simple bid close
                        # code...
                        break;
                    case '21': //Closed bid Sci
                        $scripts='';
                        $data=array('title' =>"Here otp is been verified",'script_js'=>$scripts,'menu_status'=>'2','sub_menu'=>'2','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','sub_menu_1'=>'','sub_menu_2'=>'','sub_menu_3'=>'','type_bid'=>$value,'master_bid_id'=>$value1,'category_id'=>$value2,'bid_name'=>$value3,'buyer_bid'=>$value4,'last_otp_id'=>$value5);

                        $this->load->view('template/template_header',$data);
                        $this->load->view('comm_evalutor_user/template/template_top_head');
                        $this->load->view('comm_evalutor_user/template/template_side_bar',$data);
                        $this->load->view('comm_evalutor_user/commerical_bid_statement/commerical_get_list_vendor_moi_sci_c_o',$data);
                        $this->load->view('template/template_footer',$data);
                        break;
                    case '22': // closed  Moi
                        # code...
                        break;
                    case '23': // closed Logistic
                        # code...
                        break;
                    case '31': //  rank order Sci
                        # code...
                        break;
                    case '32': // rank bid  MOI
                        # code...
                        break;
                    case '33': //rank bid logistics
                        # code...
                        break;
                    
                    default:
                        # code...
                        break;
                }
            }else{
                $this->session->set_flashdata('error_message',  'Fore full accessing system please contact andmin for it');
                redirect('user-commerical-evalutor-home');
            }
    }






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
