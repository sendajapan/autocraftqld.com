<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <title><?= $page_title ?></title>
    <?php 
          foreach($meta as $item) {
            $name = isset($item['name']) ? "name='{$item['name']}'" : (isset($item['property']) ? "property='{$item['property']}'" : '');
            $content = $item['content'];
            echo "<meta " . $name . " content='$content'>";
            echo "\n";
        }  
    ?>    

    <link rel="icon" href="<?=base_url('public/assets/images/favicon.png');?>" type="image/png">
    <link rel="shortcut icon" href="<?=base_url('public/assets/images/favicon.png');?>" type="image/png">
    <!--vendor css ================================================== -->
    <link rel="stylesheet" type="text/css" href="<?=base_url('public/assets/css/vendor.css')?>">

    <!--Bootstrap ================================================== -->
    <link rel="stylesheet" href="<?=base_url('public/assets/css/owl.carousel.min.css')?>" type="text/css">

    <link href="<?=base_url('public/assets/css/bootstrap.min.css')?>" rel="stylesheet">

    <!-- Style Sheet ================================================== -->
    <link rel="stylesheet" type="text/css" href="<?=base_url('public/assets/css/style.css')?>">

    <!-- Google Fonts ================================================== -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&display=swap" rel="stylesheet">
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins|Roboto"> -->   

    <link rel="stylesheet" href="<?=base_url('public/assets/css/jquery-ui.min.css')?>" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- script ================================================== -->
    <script src="<?=base_url('public/assets/js/modernizr.js')?>"></script>

    <!-- Link Swiper's CSS -->
    <!-- <link rel="stylesheet" href="<?=base_url('public/assets/css/swiper-bundle.min.css')?>" /> -->

</head>

<body data-bs-spy="scroll" data-bs-target="#header-nav" tabindex="0">

    <div class="top-bar">
        <div class="container d-flex justify-content-end align-items-center">
            <ul class="list-inline mb-0">
                <li class="list-inline-item"><a href="tel:0418647747" class="text-white text-decoration-none"><i class="fas fa-phone me-2"></i>0418 647 747</a></li>
                <li class="list-inline-item"><a href="mailto:cars@preferredautos.com.au" class="text-white text-decoration-none"><i class="fas fa-envelope me-2"></i>cars@preferredautos.com.au</a></li>
            </ul>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg  navbar-light container-fluid position-relative ">
        <div class="container">
            <a class="navbar-brand" href="<?=base_url('/')?>">
                <img style="width:340px;" src="<?=base_url("public/assets/images/logo.jpg")?>">
                 <!-- <h1 class="logo-text">AutoCraft <span class="text-primary">QLD</span></h1> -->
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                        aria-label="Close"></button>
                </div>

<?php   
        $uri = service('uri');
        $uri = $uri->getSegment(1); 
?>

                <div class="offcanvas-body">
                    
                    <ul class="navbar-nav align-items-center justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="<?= ($uri=='') ? 'active':''; ?> nav-link px-3" aria-current="page" href="<?=base_url()?>">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="<?= ($uri=='stock') ? 'active':''; ?> nav-link px-3" href="<?=base_url('stock')?>">Stock</a>
                        </li>
                      
                        <li class="nav-item">
                            <a class="<?= ($uri=='warranty') ? 'active':''; ?> nav-link px-3" href="<?=base_url('warranty')?>">Warranty</a>
                        </li>
                        <li class="nav-item">
                            <a class="<?= ($uri=='car-finance') ? 'active':''; ?> nav-link px-3" href="<?=base_url('car-finance')?>">Car Finance</a>
                        </li>
                        <li class="nav-item">
                            <a class="<?= ($uri=='7-day-return') ? 'active':''; ?> nav-link px-3" href="<?=base_url('7-day-return')?>">7 Day Return</a>
                        </li>
                        <li class="nav-item">
                            <a class="<?= ($uri=='contact') ? 'active':''; ?> nav-link px-3" href="<?=base_url('contact')?>">Contact Us </a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </nav>