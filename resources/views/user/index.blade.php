
@extends('user.inc.master')
@php( $business_info = business_info() )

@section('title')Home @endsection
@section('description'){{optional($business_info)->meta_description}}@endsection
@section('keywords'){{optional($business_info)->meta_keywords}}@endsection

@section('content')

@include('user.partials.slider')

{{-- Secure Payment--}}
<div style="background-color:var(--bg-gray-color2) !important;">
    <div class="container mt-2 mb-4">
        <div class="header__bottom--inner position__relative d-none d-lg-flex justify-content-between align-items-center">
            <div class="header__menu text-align">
                <nav class="header__menu--navigation">
                    
                    <ul class="d-flex gap-4">
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/money.png') }}" alt="">    
                                0% EMI
                            </a>
                        </li>
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/group.png') }}" alt=""> 
                                24/7 Online Support
                            </a>
                        </li>
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/credit-card.png') }}" alt="">
                                No Charge On Card Payment
                            </a>
                        </li>
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/school-bus.png') }}" alt="">
                                Cash on delivery in 64 districts
                            </a>
                        </li>
                        <li class="header__menu--items">    
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/exchange.png') }}" alt="">
                                Exchange
                            </a>
                        </li>
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/secure-payment.png') }}" alt="">
                                100% Secure Payment
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<style>
    @media only screen and (max-width:767px){
        .d-sm{ display: block !important;}
    }
</style>
{{-- mobile secure payment--}}
<div style="background-color: var(--bg-gray-color2) !important;">
    <div class="container mt-2 mb-4">
        <div class="d-none d-sm">
            <div class="header__menu text-align">
                <nav class="header__menu--navigation">
                    <ul class="row">
                        <li class="col-6  mb-2">
                            <a class="header__menu--link d-flex align-items-center" style="color: var(--bullet-color) !important;">
                                <img src="{{ asset('assets/icon/money.png') }}" alt="" class="me-2">    
                                0% EMI
                            </a>
                        </li>
                        <li class="col-6  mb-2">
                            <a class="header__menu--link d-flex align-items-center" style="color: var(--bullet-color) !important;">
                                <img src="{{ asset('assets/icon/group.png') }}" alt="" class="me-2"> 
                                24/7 Online Support
                            </a>
                        </li>
                        <li class="col-6  mb-2">
                            <a class="header__menu--link d-flex align-items-center" 
                            style="width:auto !important; line-height: 2rem !important; color: var(--bullet-color) !important;">
                                <img src="{{ asset('assets/icon/credit-card.png') }}" alt="" class="me-2">
                                No Charge On Card Payment
                            </a>
                        </li>
                        <li class="col-6  mb-2">
                            <a class="header__menu--link d-flex align-items-center" 
                            style="width:auto !important; line-height: 2rem !important; color: var(--bullet-color) !important;">
                                <img src="{{ asset('assets/icon/school-bus.png') }}" alt="" class="me-2">
                                Cash on delivery in 64 districts
                            </a>
                        </li>
                        <li class="col-6  mb-2">    
                            <a class="header__menu--link d-flex align-items-center" style="color: var(--bullet-color) !important;">
                                <img src="{{ asset('assets/icon/exchange.png') }}" alt="" class="me-2">
                                Exchange
                            </a>
                        </li>
                        <li class="col-6  mb-2">
                            <a class="header__menu--link d-flex align-items-center" style="color: var(--bullet-color) !important;">
                                <img src="{{ asset('assets/icon/secure-payment.png') }}" alt="" class="me-2">
                                100% Secure Payment
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>

{{-- desktop secure payment--}}
<div style="background-color:var(--bg-gray-color2) !important;" class="d-none">
    <div class="container mt-2 mb-4">
        <div class="header__bottom--inner d-none d-sm-flex justify-content-between align-items-center">
            <div class="header__menu text-center">
                <nav class="header__menu--navigation">
                    <ul class="text-center" style="margin: auto !important">
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/money.png') }}" alt="">    
                                0% EMI
                            </a>
                        </li>
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/group.png') }}" alt=""> 
                                24/7 Online Support
                            </a>
                        </li>
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/credit-card.png') }}" alt="">
                                No Charge On Card Payment
                            </a>
                        </li>
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/school-bus.png') }}" alt="">
                                Cash on delivery in 64 districts
                            </a>
                        </li>
                        <li class="header__menu--items">    
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/exchange.png') }}" alt="">
                                Exchange
                            </a>
                        </li>
                        <li class="header__menu--items">
                            <a class="header__menu--link" style="color: var(--bullet-color) !important; ">
                                <img src="{{ asset('assets/icon/secure-payment.png') }}" alt="">
                                100% Secure Payment
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
{{-- Bullet Point Start--}}
<div class="container-fluid">
    <div class="row">
        @for ($n=1; $n<=4; $n++)
            <div class="col-xl-3 col-lg-3 col-md-6 col-6 mb-3">
                <div class="card">
                    <div class="card-body bullet-point">
                        
                        <div class="row">
                            <div class="col-4" style="
                                display: flex;
                                align-items: center;
                                justify-content: center;
                            ">
                            <div class="rounded-circle bullet-point-image" style="background-color:var(--bullet-color);">
                                @if ($n==1)
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-smartphone text-white text-2xl">
                                    <rect x="6" y="2" width="12" height="20" rx="2" ry="2"></rect>
                                    <line x1="12" y1="17" x2="12" y2="17.01"></line>
                                  </svg>
                                @elseif($n==2)
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star text-white text-2xl">
                                    <polygon points="12 17.27 18.18 21 15.54 13.97 21 9.24 13.81 9.24 12 2 10.19 9.24 3 9.24 8.46 13.97 5.82 21 12 17.27"></polygon>
                                  </svg>
                                  
                                @elseif($n==3)
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-volume-2 text-white text-2xl">
                                    <path d="M3 9v6h4l5 5V4l-5 5H3z"></path>
                                  </svg>
                                  
                                @elseif($n==4)
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings text-white text-2xl">
                                    <circle cx="12" cy="12" r="3"></circle>
                                    <path d="M12 1v2M12 21v2M4.22 4.22l1.42 1.42M18.36 18.36l1.42 1.42M1 12h2M21 12h2M4.22 19.78l1.42-1.42M18.36 5.64l1.42-1.42"></path>
                                  </svg>
                                  
                                @endif
                            </div>
                            </div>
                            <div class="col-8">
                                
                                @if ($n==1)
                                    <div class="row bullet-point-t">Outfit Finder</div>
                                    <div class="row bullet-point-p">Find Outfit for Gadgets</div>
                                @elseif($n==2)
                                <div class="row bullet-point-t">Share Experience</div>
                                <div class="row bullet-point-p">We Value your Feedback</div>
                                @elseif($n==3)
                                    <div class="row bullet-point-t">Online Support</div>
                                    <div class="row bullet-point-p">Get Support on WhatsApp</div>
                                @elseif($n==4)
                                <a href="/10/page/used-phone" class="text-dark" style="text-decoration:none;">
                                    <div class="row bullet-point-t">{{ optional($business_info)->name }} Care</div>
                                    <div class="row bullet-point-p">Repair Your Device</div>
                                </a>
                                @endif
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        @endfor
    </div>
</div> 
{{-- ./ Bullet Point End --}}
<section class="team__section py-5">
    <div class="container-fluid">
        <div class="section__heading text-center mb-50">
            <h2 title="Get your desired product from featured category" class="section__heading--maintitle">Featured Categories</h2>
        </div> 
            <div class="row 
            
                cat-cols-xxl-8
                cat-cols-xl-8 
                cat-cols-lg-8 
                cat-cols-md-6 
                cat-cols-sm-4 
                cat-cols-4
                ">
                 @foreach($featured_categories as $category)
                 <div class="p-2">
                     <div class="rounded shadow cat-zoom cat-py-5 cat-box">
                         <a href="{{route('products', ['category_id'=>$category->id])}}">
                            <div class="row text-center">
                                <div class="col-12 mb-2">
                                    <img class="cat-image" style="" src="{{ asset('images/category/'.$category->image ) }}" alt="{{$category->title}}">
                                </div>
                                <div class="col-12 cat-title-box">
                                    <p class="cat-title"> {{$category->title}} </p> 
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                @endforeach
        </div>
    </div>
</section>
{{-- Featured Products --}}
@if ($featured_products->count()>0)
<section class="product__section section--padding py-5">
    <div class="container-fluid">
        <div class="section__heading text-center mb-50">
            <h2 title="Get your desired product from Featured Products" class="section__heading--maintitle">Featured Products</h2>
            <div class="btn_custom mb-2 ">
                <a class=" rounded shop_more_btn" href="{{route('products.individual.group', ['slug'=>'featured'])}}">Shop More
                    <svg class="primary__btn--arrow__icon" xmlns="http://www.w3.org/2000/svg" width="20.2" height="12.2" viewBox="0 0 6.2 6.2">
                    <path d="M7.1,4l-.546.546L8.716,6.713H4v.775H8.716L6.554,9.654,7.1,10.2,9.233,8.067,10.2,7.1Z" transform="translate(-4 -4)" fill="currentColor"></path>
                    </svg>
                </a>
            </div>
        </div> 
        {{-- <div class="section__heading mb-2 border-bottom d-flex d-none">
            <h2 class="section__heading--style2 flex-grow-1">Featured Products </h2>
            <div class="btn_custom mb-2 ">
                <a class=" rounded shop_more_btn" href="{{route('products.individual.group', ['slug'=>'featured'])}}">Shop More
                    <svg class="primary__btn--arrow__icon" xmlns="http://www.w3.org/2000/svg" width="20.2" height="12.2" viewBox="0 0 6.2 6.2">
                    <path d="M7.1,4l-.546.546L8.716,6.713H4v.775H8.716L6.554,9.654,7.1,10.2,9.233,8.067,10.2,7.1Z" transform="translate(-4 -4)" fill="currentColor"></path>
                    </svg>
                </a>
            </div>
        </div> --}}
        <div class="product__section--inner">
            <div class="row row-cols-xl-5 row-cols-lg-4 row-cols-md-3 row-cols-2 mb--n30">
                @foreach($featured_products as $product)
                    @include('user.partials.product')
                @endforeach
            </div>
        </div>
    </div>
</section>
@endif
<div id="flash_sale_offer"></div>

@include('user.partials.home_page_one_banner')
{{-- Trending Now --}}
@if ($trending_products->count()>0)
<section class="product__section section--padding pt-0" style="padding-bottom: 3rem !important;">
    <div class="container-fluid">
        <div class="section__heading text-center mb-50">
            <h2 title="Get your desired product from Trending Now" class="section__heading--maintitle">Trending Now</h2>
            <div class="btn_custom mb-2 ">
                <a class=" rounded shop_more_btn" href="{{route('products.individual.group', ['slug'=>'traending-now'])}}">Shop More
                    <svg class="primary__btn--arrow__icon" xmlns="http://www.w3.org/2000/svg" width="20.2" height="12.2" viewBox="0 0 6.2 6.2">
                    <path d="M7.1,4l-.546.546L8.716,6.713H4v.775H8.716L6.554,9.654,7.1,10.2,9.233,8.067,10.2,7.1Z" transform="translate(-4 -4)" fill="currentColor"></path>
                    </svg>
                </a>
            </div>
        </div> 
        {{-- <div class="section__heading mb-2 border-bottom d-flex d-none">
            <h2 class="section__heading-- style2 flex-grow-1">Trending Now</h2>
            <div class="btn_custom mb-2">
                <a class=" rounded shop_more_btn" href="{{route('products.individual.group', ['slug'=>'traending-now'])}}">Shop More
                    <svg class="primary__btn--arrow__icon" xmlns="http://www.w3.org/2000/svg" width="20.2" height="12.2" viewBox="0 0 6.2 6.2">
                    <path d="M7.1,4l-.546.546L8.716,6.713H4v.775H8.716L6.554,9.654,7.1,10.2,9.233,8.067,10.2,7.1Z" transform="translate(-4 -4)" fill="currentColor"></path>
                    </svg>
                </a>
            </div>
        </div> --}}
        <div class="product__section--inner">
            <div class="row row-cols-xl-5 row-cols-lg-4 row-cols-md-3 row-cols-2 mb--n30">
                @foreach($trending_products as $product)
                    @include('user.partials.product')
                @endforeach
            </div>
        </div>
    </div>
</section>
@endif
<div id="featured_products"></div>

@include('user.partials.home_page_four_banner')

<div id="best_selling_products"></div>
{{-- featured brands section --}}


@if(count($blogs) > 0)
<section class="blog__section d-none section--padding pt-0">
    <div class="container-fluid">
        <div class="section__heading text-center mb-50">
            <h2 title="Get your desired product from Trending Now" class="section__heading--maintitle">Latest News</h2>
            <div class="btn_custom mb-2 ">
                <a class=" rounded shop_more_btn" href="{{route('user.blog')}}">View All
                    <svg class="primary__btn--arrow__icon" xmlns="http://www.w3.org/2000/svg" width="20.2" height="12.2" viewBox="0 0 6.2 6.2">
                    <path d="M7.1,4l-.546.546L8.716,6.713H4v.775H8.716L6.554,9.654,7.1,10.2,9.233,8.067,10.2,7.1Z" transform="translate(-4 -4)" fill="currentColor"></path>
                    </svg>
                </a>
            </div>
        </div> 

        {{-- <div class="section__heading mb-2 border-bottom d-flex d-none">
            <h2 class="section__heading-- style2 flex-grow-1">Latest News</h2>
            <div class="btn_custom mb-2">
                <a class=" rounded shop_more_btn" href="{{route('user.blog')}}">View All
                    <svg class="primary__btn--arrow__icon" xmlns="http://www.w3.org/2000/svg" width="20.2" height="12.2" viewBox="0 0 6.2 6.2">
                    <path d="M7.1,4l-.546.546L8.716,6.713H4v.775H8.716L6.554,9.654,7.1,10.2,9.233,8.067,10.2,7.1Z" transform="translate(-4 -4)" fill="currentColor"></path>
                    </svg>
                </a>
            </div>
        </div> --}}
        <div class="swiper-wrapper row">
            @foreach($blogs as $blog)
            <div class="swiper-slide col-md-3 swiper-slide-duplicate product_col py-3">
                <div class="blog__items">
                    <div class="blog__thumbnail">
                        <a class="blog__thumbnail--link" href="{{ route('user.blog.details', [$blog->id, Str::slug($blog->title)]) }}"><img class="blog__thumbnail--img" src="{{asset('images/blog/'.optional($blog)->image)}}" alt="{{optional($blog)->title}}"></a>
                    </div>
                    <div class="blog__content">
                        <span class="blog__content--meta">{{date("M d, Y", strtotime(optional($blog)->created_at))}}</span>
                        <h3 class="blog__content--title"><a href="{{ route('user.blog.details', [$blog->id, Str::slug($blog->title)]) }}">{{optional($blog)->title}}</a></h3>
                        <div class="text-center">
                            <a class="blog__content--btn  rounded shop_more_btn" href="{{ route('user.blog.details', [$blog->id, Str::slug($blog->title)]) }}">Read more </a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endif



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    $( window ).on('load', function () {
        //featured_products();
        best_selling_products();
        //flash_sale_offer();
    });
</script>
@endsection

