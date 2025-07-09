<?php

function home_meta(){

    $title = 'Autocraft QLD | Trusted Vehicle Importer/Exporter in QLD';
    $meta_description = 'Autocraft QLD is your reliable partner for Importin and exporting high-quality QLDn vehicles. Explore our extensive stock of new and used cars.';
    $keywords = 'Autocraft QLD, QLDn vehicle exporter, used cars QLD, new cars QLD, QLDn car export, high-quality vehicles';

    return meta_tags($title, $meta_description, $keywords);
}

function about_meta(){

	$title = "About Autocraft QLD | Trusted Experts in Vehicle Export/Import";
	$meta_description = 'Learn about Autocraft QLD, a leading exporter and importer of QLDn vehicles. Discover our mission, values, and commitment to quality and customer satisfaction.';
    $keywords = 'Autocraft QLD, about us, QLDn vehicle exporter, vehicle trading experts, quality QLDn cars';

	return meta_tags($title, $meta_description, $keywords);
}

function contact_meta(){

	$title = "Contact Autocraft QLD | Get in Touch for Vehicle Exports/Imports";
	$meta_description = 'Reach out to Autocraft QLD for inquiries about exporting or Importing QLDn vehicles. We’re here to assist you with high-quality service and expert advice.';
    $keywords = 'Contact Autocraft QLD, QLDn vehicle exporter contact, export inquiries, customer support, export service assistance';

	return meta_tags($title, $meta_description, $keywords);
}

function testimonials_meta(){

	$title = "Customer Testimonials | Why Clients Trust Autocraft QLD";
	$meta_description = "Read what our satisfied clients say about Autocraft QLD. Discover why businesses worldwide trust us for high-quality QLDn vehicle.";
	$keywords = 'Autocraft QLD reviews, customer testimonials, trusted QLDn exporter, client feedback, quality vehicle export services';

	return meta_tags($title, $meta_description, $keywords);
}

function car_detail_meta($car){

    $title = $car.' - Autocraft QLD';
    $meta_description = 'Autocraft QLD is a car dealer which provides '.$car.' for sale and other models too.';
    $keywords = 'Autocraft QLD, used cars QLD, new cars QLD, quality vehicles, trusted car dealer, car dealership QLD, best used cars, car delivery QLD';

    return meta_tags($title, $meta_description, $keywords);
}

function stock_meta_default(){
	
    $title = 'Explore Our Stock | High-Quality QLDn Vehicles for Import/Export';
    $meta_description = 'Browse our wide range of QLDn vehicles, including sedans, SUVs, and commercial vehicles. We provide high-quality and competitively priced options.';
    $keywords = 'QLDn vehicles, cars for export, used cars stock, new QLDn cars, SUVs for Import, QLDn commercial vehicles';

    return meta_tags($title, $meta_description, $keywords);
	//return $data;
}

function stock_meta_make($make){
	
    $title = ''.ucwords(strtolower($make)).' Cars For Sale In QLD At Best Price - Autocraft QLD';
    $meta_description = 'Find your dream '.ucwords(strtolower($make)).' cars for sale in QLD with Autocraft QLD! We offer competitive prices and excellent customer service to help you find the perfect vehicle at a great price.';
    $keywords = 'Autocraft QLD stock, used cars for sale, new cars for sale, car inventory QLD, vehicle selection, car stock QLD, buy used cars, buy new cars, car delivery';

	return meta_tags($title, $meta_description, $keywords);
}

function stock_meta_make_model($make, $model){

    $title = ''.ucwords(strtolower($make)).' '.ucwords(strtolower($model)).' For Sale In QLD At Best Price - Autocraft QLD';
    $meta_description = 'Find your dream '.ucwords(strtolower($make)).' '.ucwords(strtolower($model)).' for sale in QLD with Autocraft QLD! We offer competitive prices and excellent customer service to help you find the perfect vehicle at a great price.';
    $keywords = 'Autocraft QLD stock, used cars for sale, new cars for sale, car inventory QLD, vehicle selection, car stock QLD, buy used cars, buy new cars, car delivery';
    return meta_tags($title, $meta_description, $keywords);
}

function stock_meta_condition($veh_condition){

    $title = 'Buy '.$veh_condition.' Cars For Sale In QLD - Autocraft QLD';
    $meta_description = 'Find your dream '.strtolower($veh_condition).' cars for sale in QLD with Autocraft QLD! We offer competitive prices and excellent customer service to help you find the perfect '.strtolower($veh_condition).' vehicles at a great price.';
    $keywords = 'Autocraft QLD stock, used cars for sale, new cars for sale, car inventory QLD, vehicle selection, car stock QLD, buy used cars, buy new cars, car delivery';

    return meta_tags($title, $meta_description, $keywords);
}

function stock_meta_drive($drive){

	if($drive == 'RHD'){$meta_drive='Right';}else{$meta_drive='Left';}
        $h1 = '<h1 class="h4 font-weight-bold">'.$meta_drive.' Hand Drive Cars For Sale In QLD</h1>';
        $title = ''.$meta_drive.' Hand Drive Cars For Sale In QLD - Autocraft QLD';
        $meta_description = 'Find your dream '.strtolower($meta_drive).' hand drive car at Autocraft QLD. We offer a wide selection of '.strtolower($meta_drive).' hand drive cars for sale in QLD at a great price.';
        $keywords = 'Autocraft QLD stock, used cars for sale, new cars for sale, car inventory QLD, vehicle selection, car stock QLD, buy used cars, buy new cars, car delivery';

    return meta_tags($title, $meta_description, $keywords);
}





// function seven_day_return_meta(){
//     $title = "7-Day Money-Back Guarantee | Autocraft QLD";
//     $meta_description = 'Shop with confidence at Autocraft QLD with our 7-day money-back guarantee. Learn more about our hassle-free return policy.';
//     $keywords = 'Autocraft QLD, 7-day return, money-back guarantee, car return policy';
//     return meta_tags($title, $meta_description, $keywords);
// }

// function car_finance_meta(){

// 	$title = "Car Finance Options | Autocraft QLD";
// 	$meta_description = 'Explore flexible car finance options at Autocraft QLD. We offer competitive rates and personalized plans to help you drive away in your dream car.';
//     $keywords = 'car finance, auto loans, vehicle financing, car finance QLD, bad credit car loans, car loan rates';

// 	return meta_tags($title, $meta_description, $keywords);
// }

// function warranty_meta(){

// 	$title = "Our Vehicle Warranty | Autocraft QLD";
// 	$meta_description = 'Learn about the comprehensive warranty offered by Autocraft QLD. We provide peace of mind with every vehicle purchase, ensuring quality and reliability.';
//     $keywords = 'Autocraft QLD warranty, vehicle warranty, car warranty QLD, used car warranty, new car warranty, comprehensive coverage';

// 	return meta_tags($title, $meta_description, $keywords);
// }

function meta_tags($title, $meta_description, $keywords){

    $data[] = array('name' => 'description', 'content' => $meta_description);
    $data[] = array('name' => 'keywords', 'content' => $keywords);
    $data[] = array('name' => 'author', 'content' => "Autocraft QLD");
    $data[] = array('name' => 'robots', 'content' => "index,follow");
	$data[] = array('property' => 'og:title', 'content' => $title);
    $data[] = array('property' => 'og:description', 'content' => $meta_description);
    $data[] = array('property' => 'og:url', 'content' => current_url());
    $data[] = array('property' => 'og:type', 'content' => 'website');
    if(strpos($_SERVER['REQUEST_URI'], "page"))
    {   
        $data[] = array('name' => 'robots', 'content' => 'noindex');
    }

    return $data;
}	

?>