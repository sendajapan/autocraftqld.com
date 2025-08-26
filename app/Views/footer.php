<!-- Footer Section Starts -->
<section id="footer">

    <!-- <div class="footer-follow">
            <footer class="container d-flex justify-content-between align-items-center">
                    <h4 class="m-0">Follow Us On</h4>
                    <div>
                        <a class="me-2"><img src="<?=base_url('public/assets/images/x.png')?>" class="pe-2" alt="image"></a>
                        <a class="me-2"><img src="<?=base_url('public/assets/images/facebook.png')?>" class="pe-2" alt="image"></a>
                        <a class="me-2"><img src="<?=base_url('public/assets/images/insta.png')?>" class="pe-2" alt="image"></a>
                    </div>
            </footer>
        </div> -->
    <div class="container footer-container">
        <div class="row footer-contact-details">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="contact-box">
                    <div class="contact-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div class="contact-text">
                        <h5>Email</h5>
                        <p>cars@preferredautos.com.au</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="contact-box">
                    <div class="contact-icon">
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <div class="contact-text">
                        <h5>Address</h5>
                        <p>170 Brisbane Road, Arundel QLD</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12 mb-4">
                <div class="contact-box">
                    <div class="contact-icon">
                        <i class="fas fa-phone-alt"></i>
                    </div>
                    <div class="contact-text">
                        <h5>Phone</h5>
                        <p>(07) 5537 2900</p>
                    </div>
                </div>
            </div>
        </div>
        <footer class="row footer-main">

            <div class="col-lg-3 col-md-6 col-sm-6">
                <a href="<?=base_url()?>">
                    <img style="width:280px;" src="<?=base_url("public/assets/images/logo.jpg")?>" alt="image">
                    <!-- <h1 class="logo-text">AutoCraft <span class="text-primary">QLD</span></h1> -->

                </a>
                <div class="footer-contact-info ps-1 mt-2">
                    <p>Trading in your current vehicle has never been easier. Use our online valuation tool to get an
                        instant estimate.</p>
                    <!-- <div class="social-icons mt-3">
                        <a href="#" class="social-icon me-2"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-icon me-2"><i class="fab fa-x"></i></a>
                        <a href="#" class="social-icon me-2"><i class="fab fa-instagram"></i></a>
                    </div> -->
                     </div>

            </div>

            <div class="col-lg-2 col-md-3 col-sm-6">
                <h4>Quick Links</h4>
                <ul class="footer-nav list-unstyled ">
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('stock')?>">Stock</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('warranty')?>">Warranty</a>
                    </li>
                   <!-- <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('7-day-return')?>">7 Day Return</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('car-finance')?>">Car Finance</a>
                    </li>
                </ul>
            </div>



            <div class="col-lg-2 col-md-3 col-sm-6 footer-makes">
            <h4>Browse Cars</h4>
            <ul class="footer-nav list-unstyled ">
                    <li class="nav-item">
                        <a target="_blank" class="nav-link" aria-current="page"
                            href="<?=base_url('make/toyota')?>">Toyota</a>
                    </li>
                    <li class="nav-item">
                        <a target="_blank" class="nav-link" href="<?=base_url('make/honda')?>">Honda</a>
                    </li>
                      <li class="nav-item">
                        <a target="_blank" class="nav-link" href="<?=base_url('make/suzuki')?>">Suzuki</a>
                    </li>
                    <li class="nav-item">
                        <a target="_blank" class="nav-link" href="<?=base_url('make/nissan')?>">Nissan</a>
                    </li>
                    <li class="nav-item">
                        <a target="_blank" class="nav-link" href="<?=base_url('make/lexus')?>">Lexus</a>
                    </li>
                    <li class="nav-item">
                        <a target="_blank" class="nav-link" href="<?=base_url('make/mitsubishi')?>">Mitsubishi</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-2 col-md-4 col-sm-6 footer-makes">
                <h4>Company</h4>
                <ul class="footer-nav list-unstyled ">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="<?=base_url()?>">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('about')?>">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('testimonials')?>">Testimonial</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('contact')?>">Contact Us</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-3 col-md-7  col-sm-6 mb-5">
                <h4 class="text-center">Join to get offer from Preferred Autos </h4>
                <!-- <div class="email-container">
                
                            <div class="email-input">
                            <input type="text" id="email_id" name="email_id" placeholder="Enter Your Email">
                            <button type="submit" id="submit_subscribe"></button>
                        </div>
               
                </div> -->
                <div class="form-input d-flex flex-column">

                    <input type="text" id="email_id" name="email_id" placeholder="Write Your Email"
                        class="form-control ps-3">
                    <button type="submit" id="submit_subscribe" class="btn btn-secondary">Subscribe</button>
                    <div id="loader" class="d-none text-center mt-3">
                        <div class="spinner-border text-success" role="status"></div>
                    </div>
                    <h6 id="alert_msg" class="d-none alert text-center"></h6>
                </div>
            </div>

        </footer>
    </div>



    <!-- <footer class="d-flex flex-wrap justify-content-between align-items-center border-top"></footer> -->

    <div class="footer-bottom">
        <footer class="container d-flex flex-wrap justify-content-center align-items-center">
            <p class="m-0"><?=date('Y')?> © All rights reserved</p>
            <!-- <div>
                        <a href="">Terms</a>
                        <a href="">Privacy</a>
                        <a href="">Cookies</a>
                    </div> -->

        </footer>
    </div>
</section>


<script type="text/javascript">
<?php 

    $req = service('request');

    if($req->getPost('amount')){
            $price_array = explode("-", $req->getPost('amount'));
            $price = preg_replace('/[^0-9]/','',$price_array);
?>
var price_range_min = <?php echo $price[0]; ?>;
var price_range_max = <?php echo $price[1]; ?>;
<?php }else{ ?>
var price_range_min = 0;
var price_range_max = 10000000;
<?php } ?>

<?php if($req->getPost('cc')){
            $cc_array = explode("-", $req->getPost('cc'));
            $cc = preg_replace('/[^0-9]/','',$cc_array);
?>
var cc_range_min = <?php echo $cc[0]; ?>;
var cc_range_max = <?php echo $cc[1]; ?>;
<?php }else{ ?>
var cc_range_min = 0;
var cc_range_max = 10000;
<?php } ?>

<?php if($req->getPost('km')){
            $km_array = explode("-", $req->getPost('km'));
            $km = preg_replace('/[^0-9]/','',$km_array);
?>
var km_range_min = <?php echo $km[0]; ?>;
var km_range_max = <?php echo $km[1]; ?>;
<?php }else{ ?>
var km_range_min = 0;
var km_range_max = 1000000;
<?php } ?>
</script>



<!-- script ================================================== -->
<script src="<?=base_url('public/assets/js/jquery-1.11.0.min.js')?>"></script>
<script src="<?=base_url('public/assets/js/bootstrap.min.js')?>"></script>
<script src="<?=base_url('public/assets/js/jquery-ui.min.js')?>"></script>
<script src="<?=base_url('public/assets/js/jquery-ui-touch-punch.js')?>"></script>
<script src="<?=base_url('public/assets/js/plugins.js')?>"></script>
<script src="<?=base_url('public/assets/js/script.js')?>"></script>

<script src="<?=base_url('public/assets/js/owl.carousel.min.js')?>"></script>

<!-- <script src="https://cdn.jsdelivr.net/npm/iconify-icon@1.0.7/dist/iconify-icon.min.js"></script> -->
<script src="<?=base_url('public/assets/js/iconify.min.js')?>"></script>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script> -->
<script src="<?=base_url('public/assets/js/jquery.validate.min.js')?>"></script>

<!-- <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script> -->
<script src="<?=base_url('public/assets/js/swiper-bundle.min.js')?>"></script>


<script src="https://www.google.com/recaptcha/api.js?render=6LcTCH0rAAAAAMJor-Snlu4pfJNUK4ubUs9qXoI0"></script>
<script>
$(document).on('click', '#submit_subscribe', function(e) {

    e.preventDefault();
    var email_id = $('#email_id').val();
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (regex.test(email_id)) {

        $("#loader").removeClass("d-none");

        grecaptcha.ready(function() {
            grecaptcha.execute('6LcTCH0rAAAAAMJor-Snlu4pfJNUK4ubUs9qXoI0', {
                action: 'submit'
            }).then(function(token) {

                $.ajax({
                    url: "<?=base_url('website/subscribtion')?>",
                    method: "POST",
                    data: {
                        email_id: email_id,
                        recaptcha_token: token
                    },
                    dataType: "json",
                    success: function(data) {
                        $("#loader").hide();
                        if (data.success) {
                            $('#alert_msg').removeClass('d-none');
                            $('#alert_msg').removeClass('text-danger');
                            $('#alert_msg').addClass('text-success');
                            $('#alert_msg').text(data.success_message).fadeIn();
                            $('#alert_msg').fadeOut(7000);
                        } else {
                            $('#alert_msg').removeClass('d-none');
                            $('#alert_msg').removeClass('text-success');
                            $('#alert_msg').addClass('text-danger');
                            $('#alert_msg').text(data.error_message).fadeIn();
                            $('#alert_msg').fadeOut(7000);
                        }
                    }
                });


            });
        });


    } else {
        $('#alert_msg').removeClass('d-none');
        $('#alert_msg').removeClass('text-success');
        $('#alert_msg').addClass('text-danger');
        $('#alert_msg').text('Please use correct email address');
        $('#alert_msg').fadeIn();
        $('#alert_msg').fadeOut(7000);
    }
});
</script>

</body>

</html>