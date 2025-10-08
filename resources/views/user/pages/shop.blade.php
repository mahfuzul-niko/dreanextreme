
@extends('user.inc.master')
@section('title')Shop @endsection
@section('description')Shop, all-products, discount-products, offer-products, offer, new-year-offer  @endsection
@section('keywords')Shop, all-products, discount-products, offer-products, offer, new-year-offer @endsection
@section('content')

<form action="javascript:void(0)" id="filter_form">
    @csrf
    <input type="hidden" id="brand_array" name="brand_array">
    <input type="hidden" id="lastID" name="lastID" value="1200">
    <input type="hidden" id="is_discount" name="is_discount" value="0">
    <input type="hidden" id="new_arrival" name="new_arrival" value="0">
    <input type="hidden" id="category_id" name="category_id" value="{{!is_null($request_category)? $request_category : 0}}">
    <input type="hidden" id="load_more" name="" value="0">
</form>

    <div class="offcanvas__filter--sidebar widget__area">
        <button type="button" class="offcanvas__filter--close m-2" data-offcanvas="">
            <svg class="minicart__close--icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M368 368L144 144M368 144L144 368"></path></svg> <span class="offcanvas__filter--close__text">Close</span>
        </button>
        <div class="offcanvas__filter--sidebar__inner" id="mobile_filterStop">
            @include('user.inc.shop_filter')
        </div>
    </div>

    <!-- Start shop section -->
    <section class="shop__section py-3">
        <div class="container-fluid">
            <div class="shop__header bg__gray--color d-flex align-items-center justify-content-between p-2 mb-10">
                <button class="widget__filter--btn d-flex d-lg-none align-items-center" data-offcanvas="">
                    <svg class="widget__filter--btn__icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="28" d="M368 128h80M64 128h240M368 384h80M64 384h240M208 256h240M64 256h80"></path><circle cx="336" cy="128" r="28" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle><circle cx="176" cy="256" r="28" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle><circle cx="336" cy="384" r="28" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="28"></circle></svg> 
                    <span class="widget__filter--btn__text">Filter</span>
                </button>
            </div>
            <div class="row">
                <div class="col-xl-3 col-lg-4">
                    <div class="shop__sidebar--widget widget__area d-none d-lg-block" id="desktop_filterStop">
                        @include('user.inc.shop_filter')
                    </div>
                </div>
                <div class="col-xl-9 col-lg-8">
                    <div class="shop__product--wrapper">
                        <div class="tab_content">
                            <div id="product_grid" class="tab_pane active show">
                                <div class="product__section--inner product__grid--inner">
                                    <div class="row row-cols-xl-4 row-cols-lg-3 row-cols-md-3 row-cols-2 mb--n30" id="product_body">
                                        
                                    </div>
                                    <div class="row mt-3" id="loading_div"></div>
                                    <div class="row mb-5 text-center mt-3" id="load_more_div" style="display: none;">
                                        <div class="cart-action mb-6 pt-3 pb-3">
                                            <a href="javascript:void(0)" type="button" onclick="load_more()" class="continue__shipping--btn primary__btn border-radius-5"><i class="w-icon-long-arrow-left"></i>Load More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End shop section -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
    $(document).ready(function() {
        let window_width = $(document).width();
        if(window_width > 991) {
            $('#mobile_filter').html('');
        }
        else {
            $('#desktop_filter').html('');
        }
        order_ready();
    });

    $(".brands").change(function() {
        $('#load_more').val(0);
        $('#lastID').val(1200);
        order_ready();
    });

  function selected_brands() {
    var brands = new Array();
    $('.brands:checked').each(function() {
      brands.push($(this).val());
    });
    if(brands.length > 0) {
      $('#brand_array').val(brands);
    }
    else {
      $('#brand_array').val(0);
    }
  }

  function order_ready() {
    selected_brands();
    order_confirm();
  }

  function load_more() {
    $('#load_more').val(1);
    order_ready();
  }


  function order_confirm() {

    // e.preventDefault();
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $.ajax({
            url: "{{route('shop.products.data')}}",
            method: 'post',
            data: $('#filter_form').serialize(),
            beforeSend: function() {
                $('#loading_div').html('<div class="col-md-12" style="width: 100% !important;"><div class="text-center p-10"><h2><b>Loading....</b></h2></div></div>');
            },
            success: function(response){
                console.log(response);
                if(response.noMorePSts == 'no') {
                    $('#loading_div').html('');
                    $('#lastID').val(response.upLastID);
                    if($('#load_more').val() == 1) {
                        $('#product_body').append(response.output);
                    }
                    else {
                        $('#product_body').html(response.output);
                    }

                    $('#load_more_divStop').show();
                }
                else {
                    $('#product_body').append(response.output);
                    $('#load_more_div').hide();
                    $('#loading_div').html('');
                }
            }
        });
       
  }

</script>

@endsection