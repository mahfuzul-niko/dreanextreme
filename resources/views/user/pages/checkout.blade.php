@extends('user.inc.master')

@section('title')
    Checkout
@endsection
@section('description')
    Checkout
@endsection
@section('keywords')
    Checkout
@endsection

@section('content')
    @php
        $total = Cart::subtotal();
        $discount = 0;
        if (Session::has('coupon_discount')) {
            $discount = Session::get('coupon_discount');
        }

        $total_with_discount = $total - $discount;
    @endphp

    <style>
        /* HIDE RADIO */
        .hiddenradio [type=radio] {
            position: absolute;
            opacity: 0;
            width: 0;
            height: 0;
        }

        /* IMAGE STYLES */
        .hiddenradio [type=radio]+img {
            cursor: pointer;
        }

        /* CHECKED STYLES */
        .hiddenradio [type=radio]:checked+img {
            outline: 4px solid #0ABB75;
        }
    </style>

    <!-- Start of PageContent -->
    <div class="page-content py-5">
        <div class="container-fluid">
            <div class="row mb-9">
                <div class="col-lg-5 mb-4 sticky-sidebar-wrapper p-3">
                    <div class="order-summary-wrapper sticky-sidebar shadow rounded p-3">
                        <div class="order-summary">
                            <div class="cart__table checkout__product--table">
                                <table class="cart__table--inner">
                                    <tbody class="cart__table--body">
                                        @foreach ($carts as $cart)
                                            <?php
                                            $product_info = App\Models\Product::find(optional($cart->options)->product_id);
                                            ?>
                                            @if (!is_null($product_info))
                                                <?php
                                                $variation_info = '';
                                                if ($cart->weight != 0) {
                                                    $stock_info = App\Models\ProductStocks::find($cart->weight);
                                                
                                                    if ($stock_info->color != null) {
                                                        $color_attribute_info = color_info($stock_info->color);
                                                        $color_info = '<b>Color: </b>' . optional($color_attribute_info)->name . ', ';
                                                    } else {
                                                        $color_info = '';
                                                    }
                                                
                                                    if ($stock_info->variant != null) {
                                                        $variant_attribute_info = variation_info($stock_info->variant);
                                                        $attribute_info = '<b>' . optional($variant_attribute_info)->title . ': </b>' . optional($stock_info)->variant_output . '';
                                                    } else {
                                                        $attribute_info = '';
                                                    }
                                                    $variation_info = $color_info . $attribute_info;
                                                } else {
                                                    $stock_info = $product_info->single_stock;
                                                }
                                                ?>
                                                <tr class="cart__table--body__items">
                                                    <td class="cart__table--body__list">
                                                        <div class="product__image two d-flex align-items-left">
                                                            <div class=" border-radius-5">
                                                                <a
                                                                    href="{{ route('single.product', [$product_info->id, Str::slug($product_info->title)]) }}"><img
                                                                        class="border-radius-5 shadow rounded p-1"
                                                                        style="
                                                                min-width:100px;
                                                                max-width:100px
                                                                "
                                                                        src="{{ asset('images/product/' . optional($product_info)->thumbnail_image) }}"
                                                                        alt="cart-product"></a>
                                                                <span
                                                                    class="product__thumbnail--quantity">{{ $cart->qty }}</span>
                                                            </div>
                                                            <div class="product__description">
                                                                <h3 style="line-height: 24px !important;"
                                                                    class="product__description--name h4">
                                                                    <a class="text-dark"
                                                                        href="{{ route('single.product', [$product_info->id, Str::slug($product_info->title)]) }}">{{ $product_info->title }}</a>
                                                                </h3>
                                                                <p style="line-height: 1px !important;">
                                                                    {!! $variation_info !!}</p>
                                                                <span
                                                                    class="cart__price">৳{{ number_format(optional($cart->options)->single_price * $cart->qty, 2) }}</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            @endif
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <div class="coupon__code mb-30 ">
                                <h3 class="coupon__code--title">Coupon</h3>
                                <p class="coupon__code--desc">Enter your coupon code if you have one.</p>
                                <div class="coupon__code--field">
                                    <form class="coupon coupon__code--field d-flex" action="{{ route('coupon.apply') }}"
                                        method="POST">
                                        @csrf
                                        <label>
                                            <input required style="width: 200px !important;"
                                                class="coupon__code--field__input border-radius-5" name="code"
                                                placeholder="Coupon code" type="text">
                                        </label>
                                        <button class="coupon__code--field__btn primary__btn mb-3" type="submit">Apply
                                            Coupon</button>

                                    </form>
                                    @if (Session::has('coupon_success'))
                                        <p class="alert alert-success">{{ Session::get('coupon_success') }} </p>
                                    @endif

                                    @if (Session::has('invalid'))
                                        <p class="alert alert-danger">{{ Session::get('invalid') }}</p>
                                    @endif
                                    @if (Session::has('coupon_discount'))
                                        <a href="{{ route('coupon.remove') }}"
                                            class="btn btn-dark btn-outline btn-rounded">Remove Coupon</a>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 pr-lg-4 mb-4 p-3">
                    <form class="form checkout-form shadow rounded p-3" action="{{ route('order.create') }}"
                        method="post">
                        @csrf
                        @if (!Auth::check())
                            <div class="">
                                <input type="hidden" name="auth_status" id="auth_status" value="0">
                                Returning customer? <a href="{{ route('login') }}" style="color: #EE2761; !impotant;"
                                    class="show-login font-weight-bold text-uppercase">Login</a>
                            </div>
                        @else
                            <input type="hidden" name="auth_status" id="auth_status" value="1">
                        @endif
                        <h3 class="title billing-title text-uppercase ls-10 pt-1 pb-3 mb-0">
                            Billing Details
                        </h3>
                        <div class="row gutter-sm">
                            <div class="col-xs-6 mb-3">
                                <div class="form-group">
                                    <label>আপনার নাম<span class="text-danger">*</span></label>
                                    <input type="text" class="checkout__input--field border-radius-5" name="name"
                                        value="{{ Auth::user() ? optional(Auth::user())->name . ' ' . optional(Auth::user())->last_name : '' }}"
                                        placeholder="আপনার সম্পূর্ণ নাম" required>
                                </div>
                            </div>
                            <div class="col-md-12 mb-3">
                                <div class="form-group">
                                    <label>মোবাইল নাম্বার<span class="text-danger">*</span></label>
                                    <input type="text" class="checkout__input--field border-radius-5" name="phone"
                                        value="{{ optional(Auth::user())->phone }}" placeholder="017XXXXXXXX" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label>সম্পূর্ণ ঠিকানা<span class="text-danger">*</span></label>
                            <textarea name="shipping_address" id="" cols="30" rows="10" required
                                placeholder="গ্রাম: , থানা: , জেলার নাম লেখুন:" class="checkout__input--field border-radius-5 mb-2">{{ old('shipping_address', optional(Auth::user())->address) }}</textarea>
                        </div>
                        <style>
                            .shipping__table--multiple {
                                width: 100% !important;
                            }

                            .shipping__table {
                                margin: 0;
                            }
                        </style>
                        <table class="shipping__table shipping__table--multiple">
                            <tbody>
                                <tr>
                                    <th colspan="2">ডেলিভারি কোথায় হবে <span class="text-danger">*</span></th>
                                </tr>
                                @foreach ($districts as $district)
                                    <tr>
                                        <td width="50%" class="form-group mb-3">
                                            <div class="checkout__checkbox">
                                                <input class="checkout__checkbox--input shipping_method"
                                                    id="check{{ $district->id }}" type="radio" name="district_id"
                                                    value="{{ $district->id }}" required>
                                                <span class="checkout__checkbox--checkmark"></span>
                                                <label class="checkout__checkbox--label" for="check{{ $district->id }}">
                                                    {{ $district->name }}:
                                                    <strong>{{ $district->shipping_charge }} <span>
                                                            TK</span></strong></label>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach


                                <tr>
                                    <td colspan="2">&nbsp;
                                        @error('district_id')
                                            <span class="text-danger" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </td>
                                </tr>
                            </tbody>
                        </table>


                        <div class="cart__summary--total mb-10">
                            <table class="cart__summary--total__table">
                                <tbody>
                                    <tr class="cart__summary--total__list">
                                        <td class="cart__summary--total__title text-left fw-bold">Subtotal</td>
                                        <input type="hidden" name="subtotal" id="subtotal"
                                            value="{{ $total }}" />
                                        <td class="cart__summary--amount text-right">{{ number_format($total, 2) }}</td>
                                    </tr>
                                    <tr class="cart__summary--total__list">
                                        <td class="cart__summary--total__title text-left fw-bold">Discount</td>
                                        <input type="hidden" name="discount" id="discount"
                                            value="{{ $discount }}" />
                                        <td class="cart__summary--amount text-right">{{ number_format($discount, 2) }}
                                        </td>
                                    </tr>
                                    <tr class="cart__summary--total__list">
                                        <td class="cart__summary--total__title text-left fw-bold">Delivery Charge</td>
                                        <input type="hidden" name="shipping_charge" id="shipping_charge"
                                            value="0" />
                                        <td class="cart__summary--amount text-right"><span
                                                id="shipping_charge_label">0.00</span></td>
                                    </tr>

                                    <tr class="cart__summary--total__list">
                                        <td class="cart__summary--total__title text-left fw-bold">Total</td>
                                        <input type="hidden" name="total" id="total"
                                            value="{{ $total_with_discount }}" />
                                        <td class="cart__summary--amount text-right" id="total_show">
                                            {{ number_format($total_with_discount, 2) }}</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>

                        <div class="form-group mb-3">
                            @if (env('DELIVERY_CHARGE_ADVANCED') == true)
                                <h4><b>ক্যাশ অন ডেলিভারিতে ডেলিভারি চার্জ অগ্রিম প্রযোজ্য, ঢাকার ভিতরে ৭০ টাকা এবং ঢাকার
                                        বাহিরে ১২০ টাকা
                                    </b> </h4>
                                <h4><b>বিকাশ / নগদ : 01784447632
                                    </b> </h4>
                            @endif
                            <h4><b>Select a payment option</b> </h4>
                            <div class="hiddenradio d-flex">
                                <label class="text-center shadow rounded p-3 mx-3">
                                    <input type="radio" name="payment_type" checked value="cod" required>
                                    <img width="100" class="rounded-pill" src="{{ asset('assets/images/cod.png') }}">
                                    <br><span>Cash On Delivery</span>
                                </label>

                                @if (env('BKASH') == true)
                                    <label class="text-center shadow rounded p-3 mx-3 ">
                                        <input type="radio" name="payment_type" value="bkash">
                                        <img width="100" class="rounded-pill"
                                            src="{{ asset('assets/images/bkash-logo.png') }}">
                                        <br><span>Online Payment</span>
                                    </label>
                                @endif


                                @if (Auth::check() && optional(Auth::user())->wallet_amount >= $total_with_discount)
                                    <label class="text-center shadow rounded p-3 mx-3" style="display: none;"
                                        id="wallet_select_body">
                                        <input type="radio" name="payment_type" value="wallet">
                                        <img width="100" class="rounded-pill"
                                            src="{{ asset('assets/images/online-payment.jpg') }}">
                                        <br><span>Use Wallet ({{ optional(Auth::user())->wallet_amount }})</span>
                                    </label>
                                @endif

                            </div>
                        </div>


                        <div class="form-group mt-5  mb-3">
                            <div class="checkout__checkbox">
                                <input class="checkout__checkbox--input" id="check2" required type="checkbox" checked>
                                <span class="checkout__checkbox--checkmark"></span>
                                <label class="checkout__checkbox--label" for="check2">I agree to the
                                    <a href="" style="color:#F36D21;">Terms and Conditions, </a>
                                    <a href="" style="color:#F36D21;">Return Policy </a> &
                                    <a href="" style="color:#F36D21;">Privacy Policy</a>

                                </label>
                            </div>
                        </div>
                        <div class="checkout__content--step__footer d-flex align-items-center">
                            <button class="continue__shipping--btn primary__btn border-radius-5" type="submit">Confirm
                                Order</button>
                            <a class="previous__link--content" href="{{ route('products') }}">Return to shop</a>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <!-- End of PageContent -->


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>

    <script>
        $('.shipping_method').change(function() {
            var district_id = $(this).val();
            if (district_id == '') {
                district_id = -1;
            }
            var option = "<option value=''>ডেলিভারি কোথায় হবে</option>";
            var url = "{{ url('/') }}";

            $.get(url + "/get-area/" + district_id, function(data) {
                data = JSON.parse(data);
                data.forEach(function(element) {
                    option += "<option value='" + element.id + "'>" + element.name + "</option>";
                });
                //console.log(option);
                $('#areas').html(option);
            });

            var subtotal = $('#subtotal').val();
            let discount = $('#discount').val();
            let total = 0;
            let wallet_amount = 0;
            let auth_status = $('#auth_status').val();

            $.ajax({
                url: url + "/get-shipping-charge",
                type: "get",
                data: {
                    district_id: district_id,
                },
                success: function(response) {
                    total = (parseInt(subtotal) - parseInt(discount)) + parseInt(response
                        .shipping_charge);
                    wallet_amount = response.wallet_amount;

                    if (auth_status == 1 && parseFloat(wallet_amount) >= parseFloat(total)) {
                        $('#wallet_select_body').show();
                    }

                    $('#shipping_charge_label').html(response.shipping_charge);

                    $('#total_show').html(parseInt(total));
                    $('#total').val(parseInt(total));
                    $('#shipping_charge').val(response.shipping_charge);
                }
            });

        });

        function payment_setup(type) {
            if (type == 'cod') {
                $('#online_mfs_main_div').hide();
                $('#online_payment_mfs').prop('required', false);
                $('#online_mfs_paymnet_number').prop('required', false);
            } else if (type == 'online_mfs') {
                $('#online_mfs_main_div').show();
                $('#online_payment_mfs').prop('required', true);
                $('#online_mfs_paymnet_number').prop('required', true);
            }
        }
    </script>
@endsection
