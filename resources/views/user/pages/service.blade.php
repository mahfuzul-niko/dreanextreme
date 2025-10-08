@extends('user.inc.master')

@section('title')
    Service
@endsection
@section('description')
    Service
@endsection
@section('keywords')
    service, mobile, center
@endsection

@push('custom_css')
@endpush

@section('content')
    <style>
        .hero_section {
            background: rgb(15, 140, 146);
            background: linear-gradient(90deg, rgba(228, 191, 48, 1) 0%, rgba(17, 16, 0, 1) 46%, rgba(0, 0, 0, 1) 100%, rgba(57, 237, 62, 1) 100%);
            color: white;
            padding: 4rem 0;
            font
        }

        .hero_section h1 {
            font-size: 5rem;
        }

        .hero_section p {
            font-size: 2rem;
            margin: 2rem 0rem;
            color: #fff;
        }

        .hero_section .btn {
            font-size: 1.8rem;
            padding: .8rem 2.2rem;
            margin: .8rem;
        }

        .progress-bar {
            background: #ff6347;
            /* Tomato color */
        }

        .feature-icons img {
            width: 60px;
            margin-bottom: 1rem;
        }

        .feature-icons h5 {
            font-size: 1.25rem;
            color: #007bff;
        }

        .feature-icons p {
            font-size: 1rem;
        }

        section {
            padding: 4rem 0;
        }

        section h3 {
            font-size: 2rem;
            color: #007bff;
            margin-bottom: 2rem;
        }

        .bg-light {
            background: #f8f9fa;
        }

        .text-center h5 {
            color: #28a745;
            font-weight: bold;
        }

        .btn-light {
            background-color: #ffffff;
            border: 1px solid #111;
            color: #c9a92a;
        }

        .btn-outline-light {
            color: #ffffff;
            border: 1px solid #ffffff;
        }

        .btn:hover {
            background-color: #c9a92a;
            color: #ffffff;
        }

        .feature-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        .feature-card h5 {
            color: #222;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .feature-card p {
            font-size: 1.4rem;
            color: #333;
        }

        .image-wrapper {
            text-align: center;
            margin: 30px 0;
        }

        .image-wrapper img {
            max-width: 100%;
            height: auto;
        }

        .how_we {
            font-size: 4rem;
        }



        /* Responsive Styling for Smaller Devices */
        @media (max-width: 768px) {
            .hero_section h1 {
                font-size: 2.5rem;
                /* Reduce the font size */
            }

            .hero-section p {
                font-size: 1rem;
                /* Adjust paragraph size */
            }

            .hero-btn {
                padding: 10px 20px;
                /* Adjust button size */
                font-size: 0.9rem;
            }

            .how_we {
                font-size: 3rem;
            }
        }
    </style>

    <section class="hero_section text-center">
        <div class="container">
            <h1>The Finest Technology and Phone Repair Provider in Bangladesh</h1>
            <p>Your device is your life. It has your photos, contacts, memories, and more.</p>
            <a href="{{ url('/') }}" class="btn btn-light">Buy Products</a>
            <a href="{{ route('service.flagship') }}" class="btn btn-outline-light">Start Your Repair</a>
        </div>
    </section>

    <!-- About Section -->
    <section class="py-5 text-center">
        <div class="container">
            <div class="row align-items-center text-left">

                <div class="col-md-6">
                    <h2 style="font-size:3.8rem; margin-bottom:10px; line-height:150%; color:#333">We Can Repair It Almost
                        As Quickly As You Can Damage It</h2>

                    <p style="font-size: 2rem; line-height:180%">To solve any problem with your smartphones, tablets, and
                        laptops, we offer cutting-edge technology, a state-of-the-art lab, and skilled technicians.</p>

                    <p style="font-size: 1.8rem; line-height:150%">We offer rapid repair services for all your smartphones,
                        tablets, laptops, and gadgets. <span style="color:#c9a92a; margin-top:5px">Our expert technicians
                            can fix your devices almost as quickly</span> as they get damaged, ensuring minimal downtime and
                        maximum efficiency. Trust us to restore your tech swiftly and reliably.</p>
                </div>

                <div class="col-md-6">
                    <img src="{{ asset('frontend/assets/img/repair.png') }}" alt="Repair Process" class="img-fluid rounded">
                </div>

            </div>
        </div>
    </section>

    <!-- Statistics Section -->
    <section class="py-5 bg-light">
        <div class="container text-center">
            <div class="row">
                <div class="col-md-3">
                    <div class="card shadow-lg p-4">
                        <div class="card-body">
                            <i class="fas fa-tools fa-3x mb-3" style="color: #222"></i>
                            <h3 class="text-dark">14000+</h3>
                            <p class="text-muted">Successfully Repaired</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card shadow-lg p-4">
                        <div class="card-body">
                            <i class="fas fa-user-cog fa-3x mb-3" style="color: #222"> </i>
                            <h3 class="text-dark">20+</h3>
                            <p class="text-muted">Expert Repair Professionals</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card shadow-lg p-4">
                        <div class="card-body">
                            <i class="fas fa-calendar-check fa-3x mb-3" style="color: #222"></i>
                            <h3 class="text-dark">12+</h3>
                            <p class="text-muted">Years of Experience</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card shadow-lg p-4">
                        <div class="card-body">
                            <i class="fas fa-flask fa-3x mb-3" style="color: #222"></i>
                            <h3 class="text-dark">7+</h3>
                            <p class="text-muted">Advanced Servicing Labs</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Service Bars -->
    <section class="py-5 bg-light">
        <div class="container">
            <!-- Text Section -->
            <div class="row mb-5">
                <div class="col-md-8 offset-md-2 text-center">
                    <h3 style="color: #222">With Our Knowledgeable Repair Professionals, Your Device Is Safe</h3>
                    <p class="text-muted">
                        We prioritize quality and efficiency in all our repair services. Our team of experienced
                        professionals ensures that every device is handled with care and precision.
                    </p>
                </div>
            </div>

            <!-- Progress Bar Section -->
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="mb-4">
                        <h5>iPhone Repair <span class="float-end text-dark">80%</span></h5>
                        <div class="progress" style="height: 30px;">
                            <div class="progress-bar progress-bar-striped text-white" role="progressbar"
                                style="width: 80%; background: linear-gradient(90deg, rgba(17,16,0,1) 56%, rgba(228,191,48,1) 100%, rgba(0,0,0,1) 100%, rgba(57,237,62,1) 100%); font-size: 14px;"
                                aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                                80%
                            </div>
                        </div>
                    </div>
                    <div class="mb-4">
                        <h5>iPad Repair <span class="float-end text-dark">75%</span></h5>
                        <div class="progress" style="height: 30px;">
                            <div class="text-white text-center" role="progressbar"
                                style="width: 75%; background: linear-gradient(90deg, rgba(17,16,0,1) 56%, rgba(228,191,48,1) 100%, rgba(0,0,0,1) 100%, rgba(57,237,62,1) 100%); font-size: 14px;"
                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                75%
                            </div>
                        </div>
                    </div>
                    <div class="mb-4">
                        <h5>Laptop Repair <span class="float-end text-dark">70%</span></h5>
                        <div class="progress" style="height: 30px;">
                            <div class="progress-bar text-center progress-bar-striped text-white" role="progressbar"
                                style="width: 70%; background: linear-gradient(90deg, rgba(17,16,0,1) 56%, rgba(228,191,48,1) 100%, rgba(0,0,0,1) 100%, rgba(57,237,62,1) 100%); font-size: 14px;"
                                aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                70%
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Features Section -->
    <section class="py-5 bg-light">
        <div class="container">
            <h3 class="text-center mb-5 text-dark" style="font-size: 4rem">Our Best Features</h3>
            <div class="row text-center feature-icons">
                <!-- Feature 1 -->
                <div class="col-md-4 mb-4">
                    <div class="card p-3 border-0 shadow h-100">
                        <div class="card-body d-flex flex-column align-items-center" style="background: #c9a92a">
                            <div class="icon-wrapper mb-3">
                                <i class="fas fa-clock text-light fa-3x"></i>
                            </div>
                            <h5 class="card-title text-light" style="font-size: 2.4rem;">Fast Turnaround Time</h5>
                            <p class="card-text text-light" style="font-size: 1.8rem;">We minimize repair time to reduce
                                customer inconvenience.</p>
                        </div>
                    </div>
                </div>
                <!-- Feature 2 -->
                <div class="col-md-4 mb-4">
                    <div class="card p-3 border-0 shadow h-100">
                        <div class="card-body d-flex flex-column align-items-center" style="background: #c9a92a">
                            <div class="icon-wrapper mb-3">
                                <i class="fas fa-user-cog text-light fa-3x"></i>
                            </div>
                            <h5 class="card-title text-light" style="font-size: 2.4rem;">Expert Technicians</h5>
                            <p class="card-text text-light" style="font-size: 1.8rem;">Certified and experienced
                                professionals.</p>
                        </div>
                    </div>
                </div>
                <!-- Feature 3 -->
                <div class="col-md-4 mb-4">
                    <div class="card p-3 border-0 shadow h-100">
                        <div class="card-body d-flex flex-column align-items-center" style="background: #c9a92a">
                            <div class="icon-wrapper mb-3">
                                <i class="fas fa-tools text-light fa-3x"></i>
                            </div>
                            <h5 class="card-title text-light" style="font-size: 2.4rem;">Quality Parts</h5>
                            <p class="card-text text-light" style="font-size: 1.8rem;">High-quality parts for durability
                                and satisfaction.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- How It Works Section -->
    <section class="py-5">
        <div class="container">
            <h3 class="text-center mb-5 text-dark how_we">How We Provide Service To Others</h3>
            <div class="container py-5">
                <div class="row">
                    <!-- Step 1 -->
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body shadow">
                                <h5 class="card-title">1. Inform Your Issue</h5>
                                <p class="card-text">Submit your device’s issue through our user-friendly platform. Provide
                                    detailed information to help us diagnose efficiently.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Step 2 -->
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body shadow">
                                <h5 class="card-title">2. Schedule a Pickup</h5>
                                <p class="card-text">Choose a convenient time and location for our rider to collect your
                                    device through our platform.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Step 3 -->
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body shadow">
                                <h5 class="card-title">3. Pick Up by a Rider</h5>
                                <p class="card-text">Our professional riders will safely collect your device, and you can
                                    track their status in real-time.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Step 4 -->
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body shadow">
                                <h5 class="card-title">4. Inspection & Approval</h5>
                                <p class="card-text">Your device undergoes a detailed diagnosis, and you’ll receive a
                                    repair estimate for approval before work begins.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Step 5 -->
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body shadow">
                                <h5 class="card-title">5. Get Repaired</h5>
                                <p class="card-text">Our technicians repair your device with genuine parts, followed by
                                    rigorous quality checks.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Step 6 -->
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <div class="card-body shadow">
                                <h5 class="card-title">6. Return to You</h5>
                                <p class="card-text">Your repaired device is delivered back safely, along with a warranty
                                    for the repairs.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </section>




    <div class="container">
        <h3 class="text-center mb-5 text-dark" style="font-size: 4rem;">Why Choose Us</h3>
        <div class="row mt-4">

            <!-- Left Column with 3 Cards -->
            <div class="col-lg-4 mb-4">
                <div class="feature-card mb-4 text-left">
                    <h5>Expert Technicians</h5>
                    <p>Our team consists of highly trained professionals who specialize in providing efficient and precise
                        repairs for your devices.</p>
                </div>

                <div class="feature-card mb-4 text-left">
                    <h5>Doorstep Service</h5>
                    <p>With our convenient pick-and-drop service, you don’t have to worry about leaving your home. We come
                        to you!</p>
                </div>


                <div class="feature-card text-left">
                    <h5>Extended Warranty</h5>
                    <p>Our extended warranty ensures your peace of mind with guaranteed repairs and service for an
                        additional period.</p>
                </div>

            </div>


            <!-- Image in the Center -->
            <div class="col-lg-4 mb-4 image-wrapper">
                <img src="{{ asset('frontend/assets/img/mobile_png.png') }}" alt="Phone Repair Service Image">
            </div>
            <!-- Right Column with 3 Cards -->


            <div class="col-lg-4 mb-4">
                <div class="feature-card mb-4 text-left">
                    <h5>Apple Warranty Support</h5>
                    <p>We provide 1-year free Apple warranty support for international products, ensuring a smooth
                        experience for Apple users.</p>
                </div>

                <div class="feature-card mb-4 text-left">
                    <h5>Premium Quality Parts</h5>
                    <p>We use only certified and premium quality parts, keeping your device functioning like new for years
                        to come.</p>
                </div>

                <div class="feature-card mb-4 text-left">
                    <h5>Multiple Branch Access</h5>
                    <p>No matter where you are, visit any of our branches for seamless service. Your convenience is our
                        priority.</p>
                </div>


            </div>

        </div>


    </div>
@endsection
