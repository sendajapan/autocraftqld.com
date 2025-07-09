<?= $this->extend('template') ?>

<?= $this->section('content') ?>
<section class="top_banner">
    <div class="container">
        <h2 class="text-center text-white">Car Finance</h2>
        <p class="text-center text-white">Flexible Financing Options to Drive Your Dream Car</p>
    </div>
</section>

<section class="finance-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <div class="finance-content text-center">
                    <h2 class="text-center">Drive Now, Pay Later</h2>
                    <p class="text-center">At Autocraft QLD, we believe that financing your dream car should be as smooth as driving it. We partner with leading financial institutions to offer you competitive rates and flexible terms. Our finance experts are here to guide you through every step of the process, ensuring you get a plan that fits your budget.</p>
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-lg-4 col-md-6">
                <div class="feature-box1">
                    <i class="fas fa-hand-holding-usd text-center"></i>
                    <h3 class="text-center">Competitive Rates</h3>
                    <p class="text-center">We offer some of the most competitive interest rates in the market, helping you save money over the life of your loan.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="feature-box1">
                    <i class="fas fa-file-signature text-center"></i>
                    <h3 class="text-center">Flexible Terms</h3>
                    <p class="text-center">Choose from a variety of loan terms to find a monthly payment that works for you. We offer plans from 24 to 72 months.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="feature-box1">
                    <i class="fas fa-fast-forward text-center"></i>
                    <h3 class="text-center">Quick Approval</h3>
                    <p class="text-center">Our streamlined application process means you can get pre-approved in minutes, so you can shop with confidence.</p>
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-lg-12 text-center">
                <h2 class="text-center">How It Works</h2>
            </div>
            <div class="col-lg-10 offset-lg-1">
                <div class="steps-timeline">
                    <div class="step">
                        <div class="step-icon"><i class="fas fa-pencil-alt"></i></div>
                        <h5>1. Apply Online</h5>
                        <p>Fill out our simple and secure online finance application in just a few minutes.</p>
                    </div>
                    <div class="step">
                        <div class="step-icon"><i class="fas fa-user-check"></i></div>
                        <h5>2. Get Approved</h5>
                        <p>Our finance team will review your application and work to get you the best possible terms.</p>
                    </div>
                    <div class="step">
                        <div class="step-icon"><i class="fas fa-car"></i></div>
                        <h5>3. Choose Your Car</h5>
                        <p>Once approved, you can browse our extensive inventory and choose your next vehicle.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-lg-12 text-center">
                <a href="/contact" class="btn btn-primary">Get Pre-Approved Now</a>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-lg-8 offset-lg-2">
                <h2 class="text-center mb-4">Frequently Asked Questions</h2>
                <div class="accordion" id="faqAccordion">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                What documents do I need to apply for finance?
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
                            <div class="accordion-body">
                                You will typically need proof of income (payslips or bank statements), a valid driver's license, and proof of residence (utility bill). Our team will guide you on the specific documents required.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Can I get financing with bad credit?
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
                            <div class="accordion-body">
                                We work with a wide range of lenders, including those who specialize in helping people with less-than-perfect credit. We will do our best to find a solution that works for you.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Can I trade in my current vehicle?
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
                            <div class="accordion-body">
                                Absolutely! We accept trade-ins, and the value of your current vehicle can be used as a down payment on your new car, which can help lower your monthly payments.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?= $this->endSection() ?>