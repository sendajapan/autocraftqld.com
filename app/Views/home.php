<?= $this->extend('template') ?>


<?= $this->section('content') ?>

<?php session()->remove('filter'); ?>


<!-------------------------------- hero section start ---------------------------------->
<section id="hero" class="position-relative overflow-hidden">
    <div class="container hero-content">
        <div class="row">
            <div class="col-lg-5 col-md-12 col-sm-12 d-flex align-items-center">
                <div class="detail mb-4">
                    <p class="top-title"> WELCOME TO AUTOCRAFT QLD</p>
                    <h2>Get Your<span class="text-primary"> Dream Car </span></h2>
                    <p>Explore our carefully curated selection of vehicles from Japan, where quality meets style. Whether you're looking for a classic or a modern masterpiece, we've got you covered.</p>
                    <a href="<?=base_url('stock')?>" class="view-stock-btn">View Stock</a>
                </div>
            </div>

            <div class="col-lg-7 col-md-12 col-sm-12 d-flex align-items-center justify-content-center">
                <div class="image">
                  <img src="<?=base_url('public/assets/images/honda02.png') ?>" style="width: 100%; height: 100%; object-fit: cover;" alt="">
                </div>

            </div>
        </div>

    </div>
</section>
<!-------------------------------- hero section ends ---------------------------------->

<!-------------------------------- features section start ---------------------------------->
<section id="features" class="pb-5">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="feature-box">
                    <div class="icon-box">
                        <i class="fa-solid fa-shield"></i>
                    </div>
                    <h5 class="mb-2">Quality Checked Vehicles</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="feature-box">
                   <div class="icon-box">
                     <i class="fa-solid fa-wrench"></i>
                    </div>
                    <h5 class="mb-2">Expert Mechanical Services</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="feature-box">
                    <div class="icon-box">
                        <i class="fa-solid fa-truck-fast"></i>
                    </div>
                    <h5 class="mb-2">Nationwide Delivery</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="feature-box">
                    <div class="icon-box">
                       <i class="fa-solid fa-hand-holding-dollar"></i>
                    </div>
                    <h5 class="mb-2">Flexible Finance Options</h5>
                </div>
            </div>
        </div>
    </div>
</section>
<!-------------------------------- features section ends ---------------------------------->

<!--------------------------------------- stock section start ------------------------------ -->
<section id="search" class="stock-section">

    <div class="container">
        <div class="row mt-1">

            <div class="col-lg-3 col-md-12 sidebar-col mb-4">
                <div class="sidebar-search p-4 rounded shadow-sm bg-light">
                    <h4 class="sidebar-title mb-4 border-bottom pb-2">Search Vehicle</h4>
                    <form action="<?=base_url('stock')?>" method="post" class="row g-3" id="form2">
                        <div class="col-12 m-0">
                            <div class="input-group">
                                <select name="make" id="vehicle-make2" class="form-select form-control">
                                    <option selected value="">Make</option>
                                    <?php if($makes){ foreach($makes as $item){ ?>
                                    <option value="<?=$item?>"><?=$item?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="input-group">
                                <select name="model" id="v_model2" class="form-select form-control">
                                    <option value="">Model</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="input-group">
                            <select id="veh_condition" name="veh_condition" class="form-select form-control" id="vehicle">
                        <option selected>Condition</option>
                        <?php foreach($veh_condition as $item){
                                    if($item!=""){ ?>
                        <option value="<?=$item?>"><?=$item?></option>
                        <?php } } ?>
                    </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="input-group">
                                <select id="body_type" name="body_type" class="form-select form-control">
                                    <option value="">Body Type</option>
                                    <?php if($body_types){ foreach($body_types as $item){ ?>
                                    <option value="<?=$item?>"><?=$item?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="input-group">
                                <select id="transmission" name="transmission" class="form-select form-control">
                                    <option value="">Transmission</option>
                                    <?php if($transmissions){ foreach($transmissions as $item){ ?>
                                    <option value="<?=$item?>"><?=$item?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="input-group">
                                <select id="exterior_color" name="exterior_color" class="form-select form-control">
                                    <option value="">Color</option>
                                    <?php if($colors){ foreach($colors as $item){ ?>
                                    <option value="<?=$item?>"><?=$item?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="input-group">
                                <select id="fuel" name="fuel" class="form-select form-control">
                                    <option value="">Fuel</option>
                                    <?php if($fuels){ foreach($fuels as $item){ ?>
                                    <option value="<?=$item?>"><?=$item?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="input-group">
                                <select id="year_from" name="year_from" class="form-select form-control">
                                    <?php for($y=2000; $y<=date("Y"); $y++){ ?>
                                    <option <?= ($request->getPost('year_from')==$y) ? "selected": "" ?> value="<?=$y?>">Year From <?=$y?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="input-group">
                                <select id="year_to" name="year_to" class="form-select form-control">
                                    <?php for($y=date("Y"); $y>=2000; $y--){ ?>
                                    <option <?= ($request->getPost('year_to')==$y) ? "selected": "" ?> value="<?=$y?>">Year To <?=$y?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 m-0">
                            <div class="d-grid" style="margin-top:10px">
                                <input type="submit" name="submit" value="Search Car" class="car-search">
                            </div>
                        </div>
                    </form>
                </div>

                <div class="sidebar-body-type mt-4 p-4 rounded shadow-sm bg-light">
                    <h4 class="sidebar-title mb-4 border-bottom pb-2">Search by Body Type</h4>
                    <div class="row g-3">
                        <div class="col-6 text-center">
                                                        <a href="<?=base_url('stock?body_type=Jeep')?>" class="body-type-link">
                                <img src="<?=base_url('public/assets/images/jeep.png')?>" alt="Jeep" class="img-fluid rounded">
                                <h6 class="mt-2">Jeep</h6>
                            </a>
                        </div>
                        <div class="col-6 text-center">
                                                        <a href="<?=base_url('stock?body_type=Wagon')?>" class="body-type-link">
                                <img src="<?=base_url('public/assets/images/vagon.png')?>" alt="Vagon" class="img-fluid rounded">
                                <h6 class="mt-2">Vagon</h6>
                            </a>
                        </div>
                        <div class="col-6 text-center">
                                                        <a href="<?=base_url('stock?body_type=Van')?>" class="body-type-link">
                                <img src="<?=base_url('public/assets/images/van.png')?>" alt="Van" class="img-fluid rounded">
                                <h6 class="mt-2">Van</h6>
                            </a>
                        </div>
                        <div class="col-6 text-center">
                                                        <a href="<?=base_url('stock?body_type=Truck')?>" class="body-type-link">
                                <img src="<?=base_url('public/assets/images/truck.png')?>" alt="Truck" class="img-fluid rounded">
                                <h6 class="mt-2">Truck</h6>
                            </a>
                        </div>
                        <div class="col-6 text-center">
                                                        <a href="<?=base_url('stock?body_type=Convertible')?>" class="body-type-link">
                                <img src="<?=base_url('public/assets/images/convertible.png')?>" alt="Convertible" class="img-fluid rounded">
                                <h6 class="mt-2">Convertible</h6>
                            </a>
                        </div>
                        <div class="col-6 text-center">
                                                        <a href="<?=base_url('stock?body_type=Sedan')?>" class="body-type-link">
                                <img src="<?=base_url('public/assets/images/sedan.png')?>" alt="Sedan" class="img-fluid rounded">
                                <h6 class="mt-2">Sedan</h6>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-lg-9 col-md-12 stockbar">
                <div class="container new-arrivals mb-5">
                    <div class="row">
                        <div class="d-flex align-items-center justify-content-between mb-4">

                            <h2>New <span class="text-primary">Arrivals</span></h2>
                            <div class="divider"></div>
                            <div class="text-end">
                            <a href="<?=base_url("stock")?>" class="view-all">View All</a>
                        </div>
                        </div>

                        <?php if($new_arrivals){foreach($new_arrivals as $key => $item){ if($key<3){?>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card rounded-3">
                                <div class="card-body p-0 ">
                                    <a class="figure" target="_blank" href="<?= base_url('car/'.$item['slug']) ?>">
                                        <?php if($item['featured_image']){ ?>
                                        <img src="<?=$item['featured_image']?>" class="card-img-top rounded-3"
                                            alt="...">
                                        <?php }else{ ?>
                                        <img src="<?=base_url("public/assets/images/test.webp")?>" class="card-img-top"
                                            alt="...">
                                        <?php } ?>
                                        <!-- <div class="year-tag"><?= $item['year'] ?></div> -->
                                    </a>
                                    <div class="row px-4">
                                        <div class="col-9 p-0">
                                            <a>
                                                <h4 class="card-title" target="_blank"
                                                    href="<?= base_url('car/'.$item['slug']) ?>">
                                                    <?= $item['make'] ?> <?= $item['model'] ?> - <?=$item['year']?></h4>
                                            </a>
                                        </div>
                                        <div class="col-3 p-0">
                                            <a href="" class="text-black">ASK</a>
                                        </div>


                                    </div>
                                    <div class="row card-text">
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            
                                            <div class="text-nowrap"><i class="fa-solid fa-palette"></i>
                                                <span><?=$item['exterior_color']?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gas-pump"></i>
                                                <span><?=$item['fuel']?> </span>
                                            </div>
                                        </div>
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            <div class="text-nowrap"><i class="fa-solid fa-gauge"></i>
                                                <span><?= ($item['mileage']) ? number_format($item['mileage']).' km' : '-'; ?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gears"></i>
                                                <span><?=$item['veh_condition']?></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <?php } } } ?>
                     
                    </div>
                </div>

                <div class="container clearance mb-5">
                    <div class="row">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h2>Clearance <span class="text-primary">Sales</span></h2>
                            <div class="divider"></div>
                            <div class="text-end">
                                <a href="<?=base_url("stock")?>" class="view-all">View All</a>
                            </div>
                        </div>

                        <?php if($new_arrivals){foreach($new_arrivals as $key => $item){ if($key<3){?>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card rounded-3">
                                <div class="card-body p-0 ">
                                    <a class="figure" target="_blank" href="<?= base_url('car/'.$item['slug']) ?>">
                                        <?php if($item['featured_image']){ ?>
                                        <img src="<?=$item['featured_image']?>" class="card-img-top rounded-3"
                                            alt="...">
                                        <?php }else{ ?>
                                        <img src="<?=base_url("public/assets/images/test.webp")?>" class="card-img-top"
                                            alt="...">
                                        <?php } ?>
                                        <!-- <div class="year-tag"><?= $item['year'] ?></div> -->
                                    </a>
                                    <div class="row px-4">
                                        <div class="col-9 p-0">
                                            <a>
                                                <h4 class="card-title" target="_blank"
                                                    href="<?= base_url('car/'.$item['slug']) ?>">
                                                    <?= $item['make'] ?> <?= $item['model'] ?> - <?=$item['year']?></h4>
                                            </a>
                                        </div>
                                        <div class="col-3 p-0">
                                            <a href="" class="text-black">ASK</a>
                                        </div>


                                    </div>
                                    <div class="row card-text">
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            
                                            <div class="text-nowrap"><i class="fa-solid fa-palette"></i>
                                                <span><?=$item['exterior_color']?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gas-pump"></i>
                                                <span><?=$item['fuel']?> </span>
                                            </div>
                                        </div>
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            <div class="text-nowrap"><i class="fa-solid fa-gauge"></i>
                                                <span><?= ($item['mileage']) ? number_format($item['mileage']).' km' : '-'; ?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gears"></i>
                                                <span><?=$item['veh_condition']?></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <?php } } } ?>
                    </div>
                </div>

                <div class="container clearance">
                    <div class="row">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h2>Cars by <span class="text-primary">Type</span></h2>
                            <div class="divider"></div>
                            <div class="text-end">
                                <a href="<?=base_url("stock")?>" class="view-all">View All</a>
                            </div>
                        </div>

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" id="vehicleTabs" role="tablist">
                        <li class="nav-item" role="presentation">
                                <button class="nav-link tab-btn active" id="gasoline-tab" data-bs-toggle="tab" data-bs-target="#gasoline" type="button" role="tab" aria-controls="gasoline" aria-selected="false">Gasoline</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link tab-btn" id="sedan-tab" data-bs-toggle="tab" data-bs-target="#sedan" type="button" role="tab" aria-controls="sedan" aria-selected="true">Sedan</button>
                            </li>
                            <!-- <li class="nav-item" role="presentation">
                                <button class="nav-link tab-btn" id="4wd-tab" data-bs-toggle="tab" data-bs-target="#4wd" type="button" role="tab" aria-controls="4wd" aria-selected="false">4WD</button>
                            </li> -->
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content mt-4">
                            <!-- Sedan Tab Pane -->
                            <div class="tab-pane " id="sedan" role="tabpanel" aria-labelledby="sedan-tab">
                                <div class="row">
                                    <?php if($sedans){foreach($sedans as $key => $item){ if($key<3){?>
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <div class="card rounded-3">
                                        <div class="card-body p-0 ">
                                    <a class="figure" target="_blank" href="<?= base_url('car/'.$item['slug']) ?>">
                                        <?php if($item['featured_image']){ ?>
                                        <img src="<?=$item['featured_image']?>" class="card-img-top rounded-3"
                                            alt="...">
                                        <?php }else{ ?>
                                        <img src="<?=base_url("public/assets/images/test.webp")?>" class="card-img-top"
                                            alt="...">
                                        <?php } ?>
                                        <!-- <div class="year-tag"><?= $item['year'] ?></div> -->
                                    </a>
                                    <div class="row px-4">
                                        <div class="col-9 p-0">
                                            <a>
                                                <h4 class="card-title" target="_blank"
                                                    href="<?= base_url('car/'.$item['slug']) ?>">
                                                    <?= $item['make'] ?> <?= $item['model'] ?> - <?=$item['year']?></h4>
                                            </a>
                                        </div>
                                        <div class="col-3 p-0">
                                            <a href="" class="text-black">ASK</a>
                                        </div>


                                    </div>
                                    <div class="row card-text">
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            
                                            <div class="text-nowrap"><i class="fa-solid fa-palette"></i>
                                                <span><?=$item['exterior_color']?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gas-pump"></i>
                                                <span><?=$item['fuel']?> </span>
                                            </div>
                                        </div>
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            <div class="text-nowrap"><i class="fa-solid fa-gauge"></i>
                                                <span><?= ($item['mileage']) ? number_format($item['mileage']).' km' : '-'; ?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gears"></i>
                                                <span><?=$item['veh_condition']?></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                        </div>
                                    </div>
                                    <?php } } } else { echo "<p>No Sedans found.</p>"; } ?>
                                </div>
                            </div>

                            <!-- 4WD Tab Pane -->
                            <div class="tab-pane" id="4wd" role="tabpanel" aria-labelledby="4wd-tab">
                                <div class="row">
                                    <?php if($four_wheel_drive){foreach($four_wheel_drive as $key => $item){ if($key<3){?>
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <div class="card rounded-3">
                                        <div class="card-body p-0 ">
                                    <a class="figure" target="_blank" href="<?= base_url('car/'.$item['slug']) ?>">
                                        <?php if($item['featured_image']){ ?>
                                        <img src="<?=$item['featured_image']?>" class="card-img-top rounded-3"
                                            alt="...">
                                        <?php }else{ ?>
                                        <img src="<?=base_url("public/assets/images/test.webp")?>" class="card-img-top"
                                            alt="...">
                                        <?php } ?>
                                        <!-- <div class="year-tag"><?= $item['year'] ?></div> -->
                                    </a>
                                    <div class="row px-4">
                                        <div class="col-9 p-0">
                                            <a>
                                                <h4 class="card-title" target="_blank"
                                                    href="<?= base_url('car/'.$item['slug']) ?>">
                                                    <?= $item['make'] ?> <?= $item['model'] ?> - <?=$item['year']?></h4>
                                            </a>
                                        </div>
                                        <div class="col-3 p-0">
                                            <a href="" class="text-black">ASK</a>
                                        </div>


                                    </div>
                                    <div class="row card-text">
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            
                                            <div class="text-nowrap"><i class="fa-solid fa-palette"></i>
                                                <span><?=$item['exterior_color']?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gas-pump"></i>
                                                <span><?=$item['fuel']?> </span>
                                            </div>
                                        </div>
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            <div class="text-nowrap"><i class="fa-solid fa-gauge"></i>
                                                <span><?= ($item['mileage']) ? number_format($item['mileage']).' km' : '-'; ?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gears"></i>
                                                <span><?=$item['veh_condition']?></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                        </div>
                                    </div>
                                    <?php } } } else { echo "<p>No 4WD vehicles found.</p>"; } ?>
                                </div>
                            </div>

                            <!-- Gasoline Tab Pane -->
                            <div class="tab-pane active" id="gasoline" role="tabpanel" aria-labelledby="gasoline-tab">
                                <div class="row">
                                    <?php if($gasoline_vehicles){foreach($gasoline_vehicles as $key => $item){ if($key<3){?>
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <div class="card rounded-3">
                                        <div class="card-body p-0 ">
                                    <a class="figure" target="_blank" href="<?= base_url('car/'.$item['slug']) ?>">
                                        <?php if($item['featured_image']){ ?>
                                        <img src="<?=$item['featured_image']?>" class="card-img-top rounded-3"
                                            alt="...">
                                        <?php }else{ ?>
                                        <img src="<?=base_url("public/assets/images/test.webp")?>" class="card-img-top"
                                            alt="...">
                                        <?php } ?>
                                        <!-- <div class="year-tag"><?= $item['year'] ?></div> -->
                                    </a>
                                    <div class="row px-4">
                                        <div class="col-9 p-0">
                                            <a>
                                                <h4 class="card-title" target="_blank"
                                                    href="<?= base_url('car/'.$item['slug']) ?>">
                                                    <?= $item['make'] ?> <?= $item['model'] ?> - <?=$item['year']?></h4>
                                            </a>
                                        </div>
                                        <div class="col-3 p-0">
                                            <a href="" class="text-black">ASK</a>
                                        </div>


                                    </div>
                                    <div class="row card-text">
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            
                                            <div class="text-nowrap"><i class="fa-solid fa-palette"></i>
                                                <span><?=$item['exterior_color']?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gas-pump"></i>
                                                <span><?=$item['fuel']?> </span>
                                            </div>
                                        </div>
                                        <div
                                            class="col-6 px-1 col-xl-5 offset-xl-1 col-lg-5 offset-lg-1 col-md-12 col-sm-5 offset-sm-1 col-xs-5 offset-xs-1 d-flex flex-column align-items-baseline detail_box">
                                            <div class="text-nowrap"><i class="fa-solid fa-gauge"></i>
                                                <span><?= ($item['mileage']) ? number_format($item['mileage']).' km' : '-'; ?></span>
                                            </div>
                                            <div class="text-nowrap"><i class="fa-solid fa-gears"></i>
                                                <span><?=$item['veh_condition']?></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                        </div>
                                    </div>
                                    <?php } } } else { echo "<p>No gasoline vehicles found.</p>"; } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--------------------------------------- stock section ends ------------------------------ -->

<!------------------------------------- Why Choose Us Section Start ---------------------------------->
<section class="why-choose-us-section py-5 mb-5">
    <div class="container">
        <h2 class="section-title text-white text-center mb-5">Why Trust Autocraft QLD ?</h2>
        <div class="row">
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="feature-card text-center p-4 h-100">
                    <div class="feature-icon mb-3">
                        <i class="fa-solid fa-shield fa-3x"></i>
                    </div>
                    <h5 class="feature-title mb-3">Comprehensive Warranty</h5>
                    <p class="feature-text">Drive with confidence knowing your vehicle is protected by our comprehensive warranty, covering major components and giving you peace of mind.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="feature-card text-center p-4 h-100">
                    <div class="feature-icon mb-3">
                        <i class="fa-solid fa-wrench fa-3x"></i>
                    </div>
                    <h5 class="feature-title mb-3">Ready to Drive</h5>
                    <p class="feature-text">Every vehicle undergoes a rigorous inspection and is fully serviced to ensure it's road-ready. Includes registration, CTP insurance, and a roadworthy certificate.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="feature-card text-center p-4 h-100">
                    <div class="feature-icon mb-3">
                        <i class="fa-solid fa-truck-fast fa-3x"></i>
                    </div>
                    <h5 class="feature-title mb-3">Nationwide Delivery</h5>
                    <p class="feature-text">We offer convenient delivery options across Australia. Your new car can be brought right to your home, ensuring a smooth and complete handover.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <div class="feature-card text-center p-4 h-100">
                    <div class="feature-icon mb-3">
                        <i class="fa-solid fa-hand-holding-dollar fa-3x"></i>
                    </div>
                    <h5 class="feature-title mb-3">Flexible Finance</h5>
                    <p class="feature-text">Our online pre-approval process is quick and worry-free. Secure financing for your vehicle with ease, without affecting your credit score.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!------------------------------------- Why Choose Us Section End ---------------------------------->

<!--------------------------------- Premium Brands Section Start-------------------------->
<section class="premium-brands-section mt-5">
    <div class="container">
        <div class="premium-brands-banner">
            <div class="row align-items-center">
                <div class="col-lg-5 col-md-12">
                    <div class="banner-text">
                        <p class="subtitle">- CAR BRANDS -</p>
                        <h2 class="title">Explore Our <br> Premium Brands</h2>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="banner-car-image">
                        <img src="<?=base_url('public/assets/images/hondafront.png')?>" alt="Premium Car">
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="banner-button">
                        <a href="#" class="btn btn-dark">VIEW ALL BRANDS</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="brand-logos-container">
            <div class="brand-logo">
                <a href="<?=base_url('make/Suzuki')?>">
                    <img src="<?=base_url('public/assets/images/makes/suzuki.png')?>" alt="Suzuki">
                    <span class="brand-name">SUZUKI</span>
                </a>
            </div>
            <div class="brand-logo">
                <a href="<?=base_url('make/Mazda')?>">
                    <img src="<?=base_url('public/assets/images/makes/mazda.png')?>" alt="Mazda">
                    <span class="brand-name">MAZDA</span>
                </a>
            </div>
            <div class="brand-logo">
                <a href="<?=base_url('make/Nissan')?>">
                    <img src="<?=base_url('public/assets/images/makes/nissan.png')?>" alt="Nissan">
                    <span class="brand-name">NISSAN</span>
                </a>
            </div>
            <div class="brand-logo">
                <a href="<?=base_url('make/Mitsubishi')?>">
                    <img src="<?=base_url('public/assets/images/makes/mitsubishi.png')?>" alt="Mitsubishi">
                    <span class="brand-name">MITSUBISHI</span>
                </a>
            </div>
            <div class="brand-logo">
                <a href="<?=base_url('make/Lexus')?>">
                    <img src="<?=base_url('public/assets/images/makes/lexus.png')?>" alt="Lexus">
                    <span class="brand-name">LEXUS</span>
                </a>
            </div>
            <div class="brand-logo">
                <a href="<?=base_url('make/Toyota')?>">
                    <img src="<?=base_url('public/assets/images/makes/toyota.png')?>" alt="Toyota">
                    <span class="brand-name">TOYOTA</span>
                </a>
            </div>
            <div class="brand-logo">
                <a href="<?=base_url('make/Honda')?>">
                    <img src="<?=base_url('public/assets/images/makes/honda.png')?>" alt="Honda">
                    <span class="brand-name">HONDA</span>
                </a>
            </div>
        </div>
    </div>
</section>
<!-------------------------------- Premium Brands Section End ---------------------------------->

<!-------------------------------- About Us Section Start ---------------------------------->
<section id="about-us" class="about-us-section py-5">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 mb-4 mb-lg-0">
                <div class="about-img-wrap position-relative">
                    <img src="<?=base_url('public/assets/images/about.jpg')?>" alt="About Us" class="img-fluid about-main-img">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-content">
                    <h2 class="section-title mb-3">About <span class="text-primary">Autocraft QLD</span></h2>
                    <p class="mb-3">Autocraft QLD is committed to delivering excellence in the automotive industry. With a passion for quality, innovation, and customer satisfaction, we have become a trusted name for car enthusiasts and families alike.</p>
                    <ul class="list-unstyled mb-4 about-highlights">
                        <li><i class="fa-solid fa-circle-check text-primary me-2"></i> 2000+ Vehicles Delivered Nationwide</li>
                        <li><i class="fa-solid fa-circle-check text-primary me-2"></i> Dedicated Team of Automotive Experts</li>
                        <li><i class="fa-solid fa-circle-check text-primary me-2"></i> Customer-First Approach & Transparent Deals</li>
                        <li><i class="fa-solid fa-circle-check text-primary me-2"></i> Modern Showroom & Service Facilities</li>
                    </ul>
                    <div class="about-mission mb-4">
                        <h5 class="fw-bold mb-2"><i class="fa-solid fa-bullseye text-primary me-2"></i>Our Mission</h5>
                        <p>To empower our customers with the best selection of vehicles and exceptional after-sales support, making car ownership a joyful and hassle-free experience.</p>
                    </div>
                    <a href="<?=base_url('about')?>" class="view-all">Learn More About Us</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-------------------------------- About Us Section End ---------------------------------->

<!-------------------------------- Testimonials Section Start ---------------------------------->
<section class="testimonials-section-v2 py-5">
    <div class="container">
        <div class="row align-items-center mb-4">
        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h2 class="section-title">What Our <span class="text-primary">Customers</span> Say</h2>
                            <div class="divider"></div>
                            <div class="owl-nav custom-nav">
                                <button type="button" role="presentation" class="owl-prev"><i class="fa-solid fa-chevron-left"></i></button>
                                <button type="button" role="presentation" class="owl-next"><i class="fa-solid fa-chevron-right"></i></button>
                            </div>
                        </div>
        <div class="owl-carousel testimonial-carousel">
        <?php foreach ($testimonials as $item) { ?>
            <!-- Testimonial 1 -->
            <div class="testimonial-item">
                <div class="testimonial-header">
                <img src="<?=base_url('public/assets/images/Sample_User_Icon.png')?>" alt="image" class="img-fluid">
                    <div class="author-info">
                        <h6 class="author-name"><?= $item['testimonial_by'] ?></h6>
                        <p class="author-role">Customer</p>
                    </div>
                    <div class="quote-icon">
                        <i class="fa-solid fa-quote-right"></i>
                    </div>
                </div>
                <p class="testimonial-body">
                    <?= strlen($item['testimonial_desc']) > 100 ? substr($item['testimonial_desc'], 0, 100000) : $item['testimonial_desc'] ?>
                </p>
                <div class="star-rating">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
            </div>
          
         <?php } ?>
        </div>
    </div>
</section>
<!-------------------------------- Testimonials Section End ---------------------------------->

<!-------------------------------- Body Type Marquee Section Start ---------------------------------->
<section class="body-type-marquee-section">
    <div class="marquee-content">
        <div class="marquee-group">
            <span class="body-type-item">Convertible</span>
            <span class="body-type-item">Sedan</span>
            <span class="body-type-item">Sports Car</span>
            <span class="body-type-item">Coupe</span>
            <span class="body-type-item">SUV</span>
            <span class="body-type-item">Hatchback</span>
            <span class="body-type-item">Wagon</span>
            <span class="body-type-item">Van</span>
            <span class="body-type-item">Truck</span>
            <span class="body-type-item">Minivan</span>
        </div>
        <div class="marquee-group" aria-hidden="true">
            <span class="body-type-item">Convertible</span>
            <span class="body-type-item">Sedan</span>
            <span class="body-type-item">Sports Car</span>
            <span class="body-type-item">Coupe</span>
            <span class="body-type-item">SUV</span>
            <span class="body-type-item">Hatchback</span>
            <span class="body-type-item">Wagon</span>
            <span class="body-type-item">Van</span>
            <span class="body-type-item">Truck</span>
            <span class="body-type-item">Minivan</span>
        </div>
        <div class="marquee-group" aria-hidden="true">
            <span class="body-type-item">Convertible</span>
            <span class="body-type-item">Sedan</span>
            <span class="body-type-item">Sports Car</span>
            <span class="body-type-item">Coupe</span>
            <span class="body-type-item">SUV</span>
            <span class="body-type-item">Hatchback</span>
            <span class="body-type-item">Wagon</span>
            <span class="body-type-item">Van</span>
            <span class="body-type-item">Truck</span>
            <span class="body-type-item">Minivan</span>
        </div>
    </div>
</section>
<!-------------------------------- Body Type Marquee Section End ---------------------------------->



<?= $this->endSection() ?>
<?=$this->section('scripts')?>

<script type="text/javascript">
$(document).ready(function() {
        var testimonialCarousel = $(".testimonial-carousel");
        var itemCount = testimonialCarousel.children().length;

        testimonialCarousel.owlCarousel({
            loop: itemCount > 1,
            margin:30,
            nav:false,
            dots: false,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items: Math.min(itemCount, 2) // Ensure we don't show more items than available
                },
                992:{
                    items: Math.min(itemCount, 3) // Ensure we don't show more items than available
                }
            }
        });

        // Hide navigation if only one item
        if (itemCount <= 1) {
            $('.custom-nav').hide();
        }

        // Custom navigation
        $('.custom-nav .owl-next').click(function() {
            testimonialCarousel.trigger('next.owl.carousel');
        });
        $('.custom-nav .owl-prev').click(function() {
            testimonialCarousel.trigger('prev.owl.carousel');
        });
    });

    $(window).on("load", function() {
    var selected = '';

    var body = $("#body_type").val();
    if (!body == '') {
        $.ajax({
            url: "<?= base_url('get-body-types') ?>",
            type: "POST",
            success: function(response) {

                if (response) {
                    var data = response.split(",");
                    var body_type =
                        '<option selected="selected" value="">Select Body Type</option>';

                    for (var i = 0; i < data.length; i++) {
                        if (data[i] == body) {
                            selected = 'selected';
                        } else {
                            selected = '';
                        }
                        body_type += '<option value="' + data[i] + '" ' + selected + '>' + data[i] +
                            '</option>';
                    }
                    $("#body_type").html(body_type);
                    $('#body_type').niceSelect('update');
                }

            }
        });
    }



    var color = $("#exterior_color").val();
    if (!color == '') {
        $.ajax({
            url: "<?= base_url('get-colors') ?>",
            type: "POST",
            success: function(response) {

                if (response) {
                    var data = response.split(",");
                    var exterior_color = '<option selected="selected" value="">Colors</option>';

                    for (var i = 0; i < data.length; i++) {
                        if (data[i] == color) {
                            selected = 'selected';
                        } else {
                            selected = '';
                        }
                        exterior_color += '<option value="' + data[i] + '" ' + selected + '>' +
                            data[i] + '</option>';
                    }
                    $("#exterior_color").html(exterior_color);
                    $('#exterior_color').niceSelect('update');
                }

            }
        });
    }



    var trans = $("#transmission").val();
    if (!trans == '') {
        $.ajax({
            url: "<?= base_url('get-transmission') ?>",
            type: "POST",
            success: function(response) {

                if (response) {
                    var data = response.split(",");
                    var transmission = '<option selected="selected" value="">Transmission</option>';

                    for (var i = 0; i < data.length; i++) {
                        if (data[i] == trans) {
                            selected = 'selected';
                        } else {
                            selected = '';
                        }
                        transmission += '<option value="' + data[i] + '" ' + selected + '>' + data[
                            i] + '</option>';
                    }
                    $("#transmission").html(transmission);
                    $('#transmission').niceSelect('update');
                }

            }
        });
    }


    var condition = $("#veh_condition").val();
    if (!condition == '') {

        var data = ['New', 'Used'];
        //console.log(data);
        var veh_condition = '<option selected="selected" value="">Condition</option>';

        for (var i = 0; i < data.length; i++) {
            if (data[i] == condition) {
                selected = 'selected';
            } else {
                selected = '';
            }
            veh_condition += '<option value="' + data[i] + '" ' + selected + '>' + data[i] + '</option>';
        }
        $("#veh_condition").html(veh_condition);
        $('#veh_condition').niceSelect('update');


    }


    var handle = $("#drive").val();
    if (!handle == '') {

        var data = ['LHD', 'RHD'];
        var drive = '<option selected="selected" value="">Handle</option>';

        for (var i = 0; i < data.length; i++) {
            if (data[i] == handle) {
                selected = 'selected';
            } else {
                selected = '';
            }
            drive += '<option value="' + data[i] + '" ' + selected + '>' + data[i] + '</option>';
        }
        $("#drive").html(drive);
        $('#drive').niceSelect('update');


    }


    var year_from = $("#year_from").val();
    if (year_from != 2000) {

        var y_f = '';
        for (var i = 2000; i <= new Date().getFullYear(); i++) {
            if (i == year_from) {
                selected = 'selected';
            } else {
                selected = '';
            }
            y_f += "<option value='" + i + "' " + selected + ">" + i + "</option>";
        }

        $("#year_from").html(y_f);
        $('#year_from').niceSelect('update');

    }


    var year_to = $("#year_to").val();
    if (year_to != new Date().getFullYear()) {

        var y_e = '';
        for (var i = new Date().getFullYear(); i >= 2000; i--) {
            if (i == year_to) {
                selected = 'selected';
            } else {
                selected = '';
            }
            y_e += "<option value='" + i + "' " + selected + ">" + i + "</option>";
        }

        $("#year_to").html(y_e);
        $('#year_to').niceSelect('update');

    }


    var make = $("#vehicle-make").val();
    if (!make == '') {
        $.ajax({
            url: "<?= base_url('get-makes') ?>",
            type: "POST",
            success: function(response) {

                if (response) {
                    var data = response.split(",");
                    var make_select = '<option selected="selected" value="">Select Make</option>';

                    for (var i = 0; i < data.length; i++) {
                        if (data[i] == make) {
                            selected = 'selected';
                        } else {
                            selected = '';
                        }
                        make_select += '<option value="' + data[i].trim() + '" ' + selected + '>' +
                            data[i].toUpperCase() + '</option>';
                    }
                    $("#vehicle-make").html(make_select);
                    $('#vehicle-make').niceSelect('update');
                }

            }
        });

        $.ajax({
            url: "<?= base_url('get-models') ?>",
            type: "POST",
            data: {
                make: make
            },
            success: function(response) {

                if (response) {
                    var data = response.split(",");
                    var model_select = '<option selected="selected" value="">Select Model</option>';

                    for (var i = 0; i < data.length; i++) {
                        model_select += '<option value="' + data[i].trim() + '">' + data[i]
                            .toUpperCase() + '</option>';
                        model_html = '<li data-value="' + data[i].trim() + '" class="option">' +
                            data[i].toUpperCase() + '</li>';
                    }
                    $("#v_model").html(model_select);
                    $('#v_model').niceSelect('update');
                } else {
                    $("#v_model").html(
                        '<option selected="selected" value="">No Model Available</option>');
                    $('#v_model').niceSelect('update');
                }
            }
        });
    }

});






$(document).on("change", "#vehicle-make", function() {

    var make = $("#vehicle-make").val();

    if (!make == '') {

        $.ajax({
            url: "<?= base_url('get-models') ?>",
            type: "POST",
            data: {
                make: make
            },
            success: function(response) {

                if (response) {
                    var data = response.split(",");
                    var model_select = '<option selected="selected" value="">Select Model</option>';

                    for (var i = 0; i < data.length; i++) {
                        model_select += '<option value="' + data[i].trim() + '">' + data[i]
                            .toUpperCase() + '</option>';
                    }
                    $("#v_model").html(model_select);

                } else {
                    $("#v_model").html(
                        '<option selected="selected" value="">No Model Available</option>');

                }
            }
        });
    } else {
        $("#v_model").html('<option selected="selected" value="">Select Model</option>');

    }
});

$(document).on("change", "#vehicle-make2", function() {

    var make = $("#vehicle-make2").val();

    if (!make == '') {

        $.ajax({
            url: "<?= base_url('get-models') ?>",
            type: "POST",
            data: {
                make: make
            },
            success: function(response) {

                if (response) {
                    var data = response.split(",");
                    var model_select = '<option selected="selected" value="">Select Model</option>';

                    for (var i = 0; i < data.length; i++) {
                        model_select += '<option value="' + data[i].trim() + '">' + data[i]
                            .toUpperCase() + '</option>';
                    }
                    $("#v_model2").html(model_select);

                } else {
                    $("#v_model2").html(
                        '<option selected="selected" value="">No Model Available</option>');

                }
            }
        });
    } else {
        $("#v_model2").html('<option selected="selected" value="">Select Model</option>');

    }
});
</script>
<script>
// JavaScript to toggle the dropdown
document.querySelectorAll('.accordion-title').forEach(item => {
    item.addEventListener('click', () => {
        // Toggle active class for arrow direction
        item.classList.toggle('active');

        // Toggle display of content
        const content = item.nextElementSibling;
        if (content.style.display === 'block') {
            content.style.display = 'none';
        } else {
            content.style.display = 'block';
        }
    });
});

</script>

<script>
// Animated counter for facts
function animateCounters() {
    document.querySelectorAll('.fact-number').forEach(function(counter) {
        const updateCount = () => {
            const target = +counter.getAttribute('data-count');
            const count = +counter.innerText;
            const increment = target > 100 ? Math.ceil(target / 100) : 1;
            if(count < target) {
                counter.innerText = count + increment > target ? target : count + increment;
                setTimeout(updateCount, 20);
            } else {
                counter.innerText = target + (target === 5 ? '+' : target === 10 ? '+' : '');
            }
        };
        updateCount();
    });
}
window.addEventListener('DOMContentLoaded', animateCounters);
</script>
<?= $this->endSection() ?>