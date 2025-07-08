<?php

namespace App\Controllers;
use App\Models\VehicleModel;
use App\Models\SubscriptionModel;
use App\Models\TestimonialModel;

use samdark\sitemap\Sitemap;
use samdark\sitemap\Index;

class Home extends BaseController
{

    protected $vehiclemodel;     
    protected $testimonialmodel;     
    protected $db;
    protected $SubscriptionMdl;

    public function __construct()
    {

        $this->db = \Config\Database::connect();
        $this->vehiclemodel = new VehicleModel();
        $this->SubscriptionMdl = new SubscriptionModel();
        $this->testimonialmodel = new TestimonialModel();

    }

    public function index(): string
    {   
        
        //drop down filters  
        $data['makes'] = $this->vehiclemodel->distinct()->where('make<>','')->orderBy('make','ASC')->findColumn('make');
        $data['body_types'] = $this->vehiclemodel->where('body_type<>','')->distinct()->orderBy('body_type','ASC')->findColumn('body_type');        
        $data['transmissions'] = $this->vehiclemodel->where('transmission<>','')->distinct()->orderBy('transmission','ASC')->findColumn('transmission');        
        $data['fuels'] = $this->vehiclemodel->where('fuel<>','')->distinct()->orderBy('fuel','ASC')->findColumn('fuel');        
        $data['colors'] = $this->vehiclemodel->where('exterior_color<>','')->distinct()->orderBy('exterior_color','ASC')->findColumn('exterior_color');        
        $data['veh_condition'] = ['New', 'Used'];
        $new_arrivals = $this->vehiclemodel->where('display_website',1)
            ->orderBy('featured_image', 'DESC')
            ->orderBy('veh_id','DESC')
            ->findAll(8,0);
        if($new_arrivals){
            $new_arrivals_veh_data = array();
            foreach ($new_arrivals as $item) 
            {
                $updated_item = $item;
                $updated_item['slug'] = strtolower(str_replace(" ", "-", $item['make']."-".$item['model']."-".$item['year']."-".$item['veh_id']));
                $updated_item['featured_image'] = $this->get_pic_link($item['featured_image']);
                $updated_item['fob_price'] = 'ASK';
                $new_arrivals_veh_data[] = $updated_item;
            }
            $data['new_arrivals'] = $new_arrivals_veh_data;
        }else{
            $data['new_arrivals'] = '';
        }

        // drive type 4WD
        $four_wheel_drive = $this->vehiclemodel->where('display_website', 1)
            ->where('traction', '4WD')
            ->orderBy('featured_image', 'DESC')
            ->orderBy('veh_id', 'DESC')
            ->findAll(8, 0);

        if ($four_wheel_drive) {
            $four_wheel_drive_veh_data = array();
            foreach ($four_wheel_drive as $item) {
                $updated_item = $item;
                $updated_item['slug'] = strtolower(str_replace(" ", "-", $item['make'] . "-" . $item['model'] . "-" . $item['year'] . "-" . $item['veh_id']));
                $updated_item['featured_image'] = $this->get_pic_link($item['featured_image']);
                $updated_item['fob_price'] = 'ASK';
                $four_wheel_drive_veh_data[] = $updated_item;
            }
            $data['four_wheel_drive'] = $four_wheel_drive_veh_data;
        } else {
            $data['four_wheel_drive'] = '';
        }

        // body type SUV
        $suvs = $this->vehiclemodel->where('display_website', 1)
            ->where('body_type', 'SUV')
            ->orderBy('featured_image', 'DESC')
            ->orderBy('veh_id', 'DESC')
            ->findAll(8, 0);

        if ($suvs) {
            $suvs_veh_data = array();
            foreach ($suvs as $item) {
                $updated_item = $item;
                $updated_item['slug'] = strtolower(str_replace(" ", "-", $item['make'] . "-" . $item['model'] . "-" . $item['year'] . "-" . $item['veh_id']));
                $updated_item['featured_image'] = $this->get_pic_link($item['featured_image']);
                $updated_item['fob_price'] = 'ASK';
                $suvs_veh_data[] = $updated_item;
            }
            $data['suvs'] = $suvs_veh_data;
        } else {
            $data['suvs'] = '';
        }

        // fuel type Diesel
        $diesel_vehicles = $this->vehiclemodel->where('display_website', 1)
            ->where('fuel', 'Diesel')
            ->orderBy('featured_image', 'DESC')
            ->orderBy('veh_id', 'DESC')
            ->findAll(8, 0);

        if ($diesel_vehicles) {
            $diesel_vehicles_data = array();
            foreach ($diesel_vehicles as $item) {
                $updated_item = $item;
                $updated_item['slug'] = strtolower(str_replace(" ", "-", $item['make'] . "-" . $item['model'] . "-" . $item['year'] . "-" . $item['veh_id']));
                $updated_item['featured_image'] = $this->get_pic_link($item['featured_image']);
                $updated_item['fob_price'] = 'ASK';
                $diesel_vehicles_data[] = $updated_item;
            }
            $data['diesel_vehicles'] = $diesel_vehicles_data;
        } else {
            $data['diesel_vehicles'] = '';
        }

        // testimonials
        $data['testimonials'] = $this->testimonialmodel->where('testimonial_visibility','Show')->orderBy('testimonial_id','DESC')->findAll();
        $data['request'] = $this->request;
        

        $data['page_title'] = 'Autocraft QLD | Trusted Vehicle Importer/Exporter in QLD';
        $data['meta'] = home_meta();

        return view('home', $data);
    }




    public function getModels(){

        $model_where = ['make'=>$this->request->getVar('make'), 'model<>'=>''];
        $result = $this->vehiclemodel->distinct()->where($model_where)->orderBy('model','ASC')->findColumn('model');
            
            if($result){
                foreach($result as $row)
                {   
                    $output[] = $row;
                }
                $return_data = implode(",", $output);              
            }
            else{
                $return_data = "";
            }

            echo $return_data;
       
        }
        




    public function subscription(){

            if($this->request->getVar('email_id') AND $this->request->getPost('recaptcha_token'))
            {           

                $token = $this->request->getPost('recaptcha_token');
                $secret_key = '6LenXaYqAAAAAKbuGJoO7UFoIKieHojgJZYPaCro';
                $response = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret='.$secret_key.'&response='.$token);
                $response_data = json_decode($response);
                if($response_data->success AND $response_data->score >= 0.5 AND $response_data->action == 'submit')
                {       
                        //echo '<pre>'; print_r($response_data);
                        $email_id = $this->request->getVar('email_id');
                        $res = $this->SubscriptionMdl->where(['email' => $email_id])->first();
                        if (is_array($res)) 
                        {
                            $data = array(
                                    'error' => true,    
                                    'error_message'  => 'You have already subscribed'
                                );
                        
                        }else{

                            $data = [
                                'email' => $email_id,
                                'rec_date' => date('Y-m-d H:i:s')
                            ];
                            $res = $this->SubscriptionMdl->insert($data);
                            if($res){
                                    $data = array(
                                    'success' => true,    
                                    'success_message'  => 'You have subscribed successfully'
                            );
                    
                            }else{
                                    $data = array(
                                    'error' => true,    
                                    'error_message'  => 'Query Error'
                                );
                            }  
                        }

                }else{

                    $data = array(
                            'error' => true,    
                            'error_message'  => 'Recaptcha Validation Failed.'
                            );
                    }
                
                echo json_encode($data);     
                       
            }
        }


}
