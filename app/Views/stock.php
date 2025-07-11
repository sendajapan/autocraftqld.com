<?= $this->extend('template') ?>


<?= $this->section('content') ?>


<!-- hero section start  -->
<section class="top_banner position-relative overflow-hidden">


    <div class="container text-center">
        <div class="row">
            <div class="d-flex flex-wrap flex-column justify-content-center align-items-center">
                <h2 class="page-title display-3">Cars</h2>
                <nav class="breadcrumb">
                    <a class="breadcrumb-item" href="<?=base_url()?>">Home</a>
                    <span class="breadcrumb-item active" aria-current="page">Cars</span>
                </nav>
            </div>
        </div>
    </div>
</section>

<section id="cars" class="py-5">
    <div class="container">
        <div class="row">

        <div class="col-lg-3 col-md-12 sidebar-col mb-4">
                <div class="sidebar-search px-4 pb-4 rounded shadow-sm bg-light">
                    <h4 class="sidebar-title border-bottom pb-2">Search Vehicle</h4>
                    <form action="<?= base_url('stock') ?>" method="post" id="form">
                        <div class="widget_inner">
                            <div class="search_widget_inner">
                                <div class="row">
                                    <div class="col-12 m-0">
                                        <select name="make" id="vehicle-make" class="form-select form-control">
                                            <option selected value="">Select Make</option>
                                            <?php if ($makes) {
                                                foreach ($makes as $item) { ?>
                                                    <option <?php if (isset($user_search['make'])) {
                                                                if (strtoupper($user_search['make']) == strtoupper($item)) {
                                                                    echo "selected";
                                                                }
                                                            } ?> value="<?= $item ?>"><?= $item ?></option>
                                            <?php } 
                                            } ?>
                                        </select>
                                    </div>
                                    <div class="col-12 m-0">
                                        <select name="model" id="v_model" class="form-select form-control">
                                            <option value="">Select Model</option>
                                            <?php if ($models) {
                                                foreach ($models as $item) { ?>
                                                    <option <?php if (isset($user_search['model'])) {
                                                                if (strtoupper($user_search['model']) == strtoupper(trim($item))) {
                                                                    echo "selected";
                                                                }
                                                            } ?> value="<?= trim($item) ?>"><?= strtoupper($item) ?></option>
                                            <?php } 
                                            } ?>
                                        </select>
                                    </div>
                                    <div class="col-12 m-0">
                                        <select id="veh_condition" name="veh_condition" class="form-select form-control">
                                            <option value="">Select Condition</option>
                                            <?php foreach ($veh_condition as $item) {
                                                if ($item != "") { ?>
                                                    <option <?php if (isset($user_search['veh_condition'])) {
                                                                if ($user_search['veh_condition'] == $item) {
                                                                    echo "selected";
                                                                }
                                                            } ?> value="<?= $item ?>"><?= $item ?></option>
                                            <?php } 
                                            } ?>
                                        </select>
                                    </div>
                                    <div class="col-12 m-0">
                                        <select id="body_type" name="body_type" class="form-select form-control">
                                            <option value="">Select Body Type</option>
                                            <?php if ($body_types) {
                                                foreach ($body_types as $item) { ?>
                                                    <option <?php if (isset($user_search['body_type'])) {
                                                                if ($user_search['body_type'] == $item) {
                                                                    echo "selected";
                                                                }
                                                            } ?> value="<?= $item ?>"><?= $item ?></option>
                                            <?php } 
                                            } ?>
                                        </select>
                                    </div>
                                    <div class="col-12 m-0">
                                        <select id="transmission" name="transmission" class="form-select form-control">
                                            <option value="">Select Transmission</option>
                                            <?php if ($transmissions) {
                                                foreach ($transmissions as $item) { ?>
                                                    <option <?php if (isset($user_search['transmission'])) {
                                                                if ($user_search['transmission'] == $item) {
                                                                    echo "selected";
                                                                }
                                                            } ?> value="<?= $item ?>"><?= $item ?></option>
                                            <?php } 
                                            } ?>
                                        </select>
                                    </div>
                                    <div class="col-12 m-0">
                                        <select id="exterior_color" name="exterior_color" class="form-select form-control">
                                            <option value="">Select color</option>
                                            <?php if ($colors) {
                                                foreach ($colors as $item) { ?>
                                                    <option <?php if (isset($user_search['exterior_color'])) {
                                                                if ($user_search['exterior_color'] == $item) {
                                                                    echo "selected";
                                                                }
                                                            } ?> value="<?= $item ?>"><?= $item ?></option>
                                            <?php } 
                                            } ?>
                                        </select>
                                    </div>
                                    <div class="col-12 m-0">
                                        <select id="fuel" name="fuel" class="form-select form-control">
                                            <option value="">Select Fuel</option>
                                            <?php if ($fuels) {
                                                foreach ($fuels as $item) { ?>
                                                    <option <?php if (isset($user_search['fuel'])) {
                                                                if ($user_search['fuel'] == $item) {
                                                                    echo "selected";
                                                                }
                                                            } ?> value="<?= $item ?>"><?= $item ?></option>
                                            <?php } 
                                            } ?>
                                        </select>
                                    </div>
                                    <div class="col-12 m-0">
                                        <select id="year_from" name="year_from" class="form-select form-control">
                                            <option value="">Year From</option>
                                            <?php for ($y = 2000; $y <= date("Y"); $y++) { ?>
                                                <option <?= ($request->getPost('year_from') == $y) ? "selected" : "" ?> value="<?= $y ?>"><?= $y ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <div class="col-12 m-0">
                                        <select id="year_to" name="year_to" class="form-select form-control">
                                            <option value="">Year To</option>
                                            <?php for ($y = date("Y"); $y >= 2000; $y--) { ?>
                                                <option <?= ($request->getPost('year_to') == $y) ? "selected" : "" ?> value="<?= $y ?>"><?= $y ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <div class="col-12">
                                        <input type="submit" name="submit" value="Search Car" class="btn btn-secondary w-100">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- <div class="sidebar_widget">
                    <div class="widget_inner">
                        <div class="widget_title">
                            <h5>Search by Body Type</h5>
                        </div>
                        <div class="row g-2">
                            <div class="col-4">
                                <a href="<?= base_url('stock?body_type=Sedan') ?>" class="cat-box">
                                    <div class="icon-box"><img src="<?= base_url('public/assets/images/sedan.png') ?>" alt="Sedan"></div>
                                    <p class="cat-name">Sedan</p>
                                </a>
                            </div>
                            <div class="col-4">
                                <a href="<?= base_url('stock?body_type=Hatchback') ?>" class="cat-box">
                                    <div class="icon-box"><img src="<?= base_url('public/assets/images/hatchback.png') ?>" alt="Hatchback"></div>
                                    <p class="cat-name">Hatchback</p>
                                </a>
                            </div>
                            <div class="col-4">
                                <a href="<?= base_url('stock?body_type=Wagon') ?>" class="cat-box">
                                    <div class="icon-box"><img src="<?= base_url('public/assets/images/wagon.png') ?>" alt="Wagon"></div>
                                    <p class="cat-name">Wagon</p>
                                </a>
                            </div>
                            <div class="col-4">
                                <a href="<?= base_url('stock?body_type=Coupe') ?>" class="cat-box">
                                    <div class="icon-box"><img src="<?= base_url('public/assets/images/coupe.png') ?>" alt="Coupe"></div>
                                    <p class="cat-name">Coupe</p>
                                </a>
                            </div>
                            <div class="col-4">
                                <a href="<?= base_url('stock?body_type=SUV') ?>" class="cat-box">
                                    <div class="icon-box"><img src="<?= base_url('public/assets/images/suv.png') ?>" alt="SUV"></div>
                                    <p class="cat-name">SUV</p>
                                </a>
                            </div>
                            <div class="col-4">
                                <a href="<?= base_url('stock?body_type=Convertible') ?>" class="cat-box">
                                    <div class="icon-box"><img src="<?= base_url('public/assets/images/convertible.png') ?>" alt="Convertible"></div>
                                    <p class="cat-name">Convertible</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div> -->
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

            <div class="col-lg-9">

                <div class="stock-filter d-flex justify-content-between mb-4">

                    <div class="form-group">
                        <label for="per_page" class="text-white">Show On Page:</label>
                        <select id="per_page" class="fiter">
                            <option value="20" <?php if(session()->per_page=='20'){echo 'selected';} ?>>20 Cars</option>
                            <option value="40" <?php if(session()->per_page=='40'){echo 'selected';} ?>>40 Cars</option>
                            <option value="80" <?php if(session()->per_page=='80'){echo 'selected';} ?>>80 Cars</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="sort_by" class="text-white">Sort By:</label>
                        <select id="sort_by" class="fiter">
                            <option value="year_d" <?php if(session()->sort_by=='year_d'){echo 'selected';} ?>>Year:
                                Desc</option>
                            <option value="year_a" <?php if(session()->sort_by=='year_a'){echo 'selected';} ?>>Year: Asc
                            </option>
                            <option value="mileage_d" <?php if(session()->sort_by=='mileage_d'){echo 'selected';} ?>>
                                Mileage: Desc</option>
                            <option value="mileage_a" <?php if(session()->sort_by=='mileage_a'){echo 'selected';} ?>>
                                Mileage: Asc</option>
                            <option value="vehicle_d" <?php if(session()->sort_by=='vehicle_d'){echo 'selected';} ?>>
                                Recent Additions</option>
                        </select>
                    </div>

                </div>

                <div class="d-flex justify-content-between mb-4"><span
                        class="fs-5 fw-bold"><?= $found.' Cars Found'?></span></div>



                <div class="row stock-section">
                    <?php 
                if($stock){
                    foreach($stock as $item){    
                       
            ?>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card rounded-3">
                            <div class="card-body p-0 ">
                                <a class="figure" target="_blank" href="<?= base_url('car/'.$item['slug']) ?>">
                                    <?php if($item['featured_image']){ ?>
                                    <img src="<?=$item['featured_image']?>"
                                        class="card-img-top rounded-3" alt="...">
                                    <?php }else{ ?>
                                    <img src="<?=base_url("public/assets/images/test.webp")?>" class="card-img-top"
                                        alt="...">
                                    <?php } ?>
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

                    <?php }  }else{ ?>

                    <img src="<?=base_url('public/assets/images/no_cars_search.png');?>" alt="No Cars Found">

                    <?php } ?>

                </div>

            </div>




        </div>


        <?php 
        if ($pager->getPageCount() > 1) : 
            echo $pager->links(); 
        endif    
        ?>

    </div>
</section>


<?= $this->endSection() ?>


<?=$this->section('scripts')?>

<script type="text/javascript">
$(document).on("change", "#per_page", function() {

    var per_page = $("#per_page").val();

    $.ajax({
        url: "<?= base_url('per-page') ?>",
        method: "POST",
        data: {
            per_page: per_page
        },
        dataType: "html",
        success: function() {
            location.reload();
        }

    });

});

$(document).on("change", "#sort_by", function() {

    var sort_by = $("#sort_by").val();

    $.ajax({
        url: "<?= base_url('sort-by') ?>",
        method: "POST",
        data: {
            sort_by: sort_by
        },
        dataType: "html",
        success: function() {
            location.reload();
        }

    });

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
</script>

<?= $this->endSection() ?>