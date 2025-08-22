
<?= $this->extend('template') ?>


<?= $this->section('content') ?>
<section class="top_banner">
    <div class="container">
        <h2 class="text-center text-white">Our Warranty</h2>
        <p class="text-center text-white">Peace of Mind with Every Purchase</p>
    </div>
</section>

<section class="warranty-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <div class="warranty-content text-center">
                    <h2 class="text-center">Comprehensive Warranty Coverage</h2>
                    <p class="text-center">At Preferred Autos, we stand by the quality of our vehicles. That's why every car we sell comes with a comprehensive warranty, giving you confidence and peace of mind on the road. Our warranty is designed to protect you from unexpected repair costs and ensure your vehicle remains in top condition.</p>
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-lg-4 col-md-6">
                <div class="feature-box1">
                    <i class="fas fa-check-circle text-center"></i>
                    <h3 class="text-center">What's Covered?</h3>
                    <p class="text-center">Our warranty covers major mechanical and electrical components, including the engine, transmission, and drivetrain. For a full list of covered parts, please refer to your warranty booklet.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="feature-box1">
                    <i class="fas fa-clock text-center"></i>
                    <h3 class="text-center">Warranty Period</h3>
                    <p class="text-center">Our standard warranty is valid for 3 months or 5,000 kilometers, whichever comes first. Extended warranty options are also available for purchase.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="feature-box1">
                    <i class="fas fa-road text-center"></i>
                    <h3 class="text-center">Roadside Assistance</h3>
                    <p class="text-center">For added peace of mind, our warranty includes 24/7 roadside assistance. Whether you have a flat tire or a dead battery, help is just a phone call away.</p>
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-lg-8 offset-lg-2">
                <div class="warranty-claim text-center">
                    <h2>How to Make a Claim</h2>
                    <p>If you experience an issue with your vehicle, please contact our warranty department as soon as possible. Our team will guide you through the claims process and help you get back on the road quickly.</p>
                    <a href="<?= base_url('contact') ?>" class="btn btn-primary">Contact Us</a>
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-lg-8 offset-lg-2">
                <div class="faq-section">
                    <h2 class="text-center">Frequently Asked Questions</h2>
                    <div class="accordion" id="faqAccordion">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Is the warranty transferable?
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
                                <div class="accordion-body">
                                    Yes, our warranty is fully transferable to a new owner if you sell your vehicle within the warranty period.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Can I extend my warranty?
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
                                <div class="accordion-body">
                                    Yes, we offer a range of extended warranty options to provide you with long-term protection. Please contact us for more information.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Where can I get my car serviced?
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
                                <div class="accordion-body">
                                    You can have your vehicle serviced at any authorized repair facility. Please keep all service records for warranty purposes.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?= $this->endSection() ?>