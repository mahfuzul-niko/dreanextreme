
@php

$banner = DB::table('home_page_four_banners')->get();
$banner = $banner->filter(function($item) { return $item->id == 3; })->first();

@endphp

<!-- Start banner section -->
<section class="banner__section mt-5 mb-5">
    <div class="container-fluid">
        <div class="row mb--n28">
            <div class="col-lg-12 mb-28">
                <div class="row row-cols-lg-2 row-cols-sm-2 row-cols-1">
                    <div class="col-lg-12 col-md-12 col-12">
                        <div class="banner__items">
                            <a class="banner__items--thumbnail position__relative" href="{{optional($banner)->link}}">
                                <img class="banner__items--thumbnail__img" src="{{ asset('images/slider/'.optional($banner)->image) }}" alt="banner-img"> 
                                <div class="banner__items--content">
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End banner section -->
