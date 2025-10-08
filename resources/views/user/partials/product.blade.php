@if(!empty($product))
@php
    //$stock_price = $product->single_stock;
    $stock_price = DB::table('product_stocks')->where('product_id', $product->id)->where('variant', '=', null)->where('color', '=', null)->first(['price', 'qty']);
    $sale_text = 'sale';

    if($product->discount_type <> 'no') {
        if($product->discount_type == 'flat') {
            $sale_text = '-'.optional($product)->discount_amount." TK";
        }
        else if($product->discount_type == 'percentage') {
            $sale_text = '-'.optional($product)->discount_amount."%";
        }
    }

    if($product->type == 'single' && optional($stock_price)->qty <= 0) {
        $sale_text = 'Out of Stock';
    }
    else {
        $stock_price = DB::table('product_stocks')->where('product_id', $product->id)->first(['id','price', 'qty']);

        //$variations = $product->variation_stock;
        //$min_price = $variations->min('price');
        //$max_price = $variations->max('price');
    }

@endphp

<div class="col mb-30 py-3 rounded product_col">
    <div class="product__items">
        <div class="product__items--thumbnail">
            <a class="product__items--link" href="{{ route('single.product', [$product->id, Str::slug($product->title)]) }}">
                <img class="product__items--img product__primary--img product_img border-radius-10" src="{{ asset('images/product/'.$product->thumbnail_image) }}" alt="{{$product->title}}">
            </a>
            <div class="product__badge">
                <span class="product__badge--items sale">{{$sale_text}}</span>
            </div>
        </div>

        <div class="product__items--content text-center">
            {{-- <span class="product__items--content__subtitle">{{optional($product->brand)->title}}</span> --}}
            <h4 class="product__items--content__title"><a class="text-dark" href="{{ route('single.product', [$product->id, Str::slug($product->title)]) }}">
                {{Str::limit($product->title,30)}}
            </a></h4>

            <div class="product__items--price">
                @if($product->discount_type <> 'no')
                    <?php
                        if($product->discount_type == 'flat') {
                            $new_price = optional($stock_price)->price - optional($product)->discount_amount;
                        }
                        else if($product->discount_type == 'percentage') {
                            $discount_amount_tk = (optional($product)->discount_amount * optional($stock_price)->price)/100;
                            $new_price =  optional($stock_price)->price - $discount_amount_tk;
                        }

                    ?>
                    <span class="current__price">৳{{number_format($new_price)}}</span>
                    <span class="price__divided"></span>
                    <span class="old__price">৳{{optional($stock_price)->price>0 ? number_format(optional($stock_price)->price) : 0.00 }}</span>
                @else
                    <span class="current__price">৳{{optional($stock_price)->price>0 ? number_format(optional($stock_price)->price) : 0.00 }}</span>
                @endif
            </div>
            <ul class="product__items--action">
                <li class="product__items--action__list text-center">
                    @if($product->type == 'single')
                        @if(optional($stock_price)->qty > 0)
                            {{-- Order Now --}}
                            <button class="product__items--action__btn buy__now--cart" 
                            {{-- style="background-color: #BE8931; color:white"  --}}
                            onclick="addToCart({{ $product->id }}, 'only', 'checkout', 'single')" 
                            type="button" >
                            <span class="add__to--cart__text"> Order Now </span>
                            </button>
                            {{-- Add to cart --}}
                            <button class="product__items--action__btn add__to--cart" 
                            style="color:#000000;" 
                            onclick="addToCart({{ $product->id }}, 'only', 'cart', 'single')" 
                            type="button" >
                            <span class="add__to--cart__text"> Add to cart</span>
                            </button>
                        @else
                            {{-- Out of Stock --}}
                            <a class="product__items--action__btn add__to--cart" 
                            {{-- style="background-color: #BE8931;color:white"  --}}
                            href="javascript:void(0)">
                            {{-- <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16px" height="16px"><path d="M 4.7070312 3.2929688 L 3.2929688 4.7070312 L 10.585938 12 L 3.2929688 19.292969 L 4.7070312 20.707031 L 12 13.414062 L 19.292969 20.707031 L 20.707031 19.292969 L 13.414062 12 L 20.707031 4.7070312 L 19.292969 3.2929688 L 12 10.585938 L 4.7070312 3.2929688 z"></path></svg> --}}
                            <span class="add__to--cart__text">Out of Stock</span>
                            </a>
                        @endif
                    @else
                        {{-- Variations Product --}}
                        @if(optional($stock_price)->qty > 0)
                        <a class="text-dark" href="{{ route('single.product', [$product->id, Str::slug($product->title)]) }}">
                            <button class="product__items--action__btn buy__now--cart" type="button" >
                            <span class="add__to--cart__text"> Order Now </span>
                            </button>
                        </a>
                            
                        @else

                            {{-- Out of Stock --}}
                            <a class="product__items--action__btn add__to--cart" 
                            {{-- style="background-color: #BE8931;color:white"  --}}
                            href="javascript:void(0)">
                            {{-- <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16px" height="16px"><path d="M 4.7070312 3.2929688 L 3.2929688 4.7070312 L 10.585938 12 L 3.2929688 19.292969 L 4.7070312 20.707031 L 12 13.414062 L 19.292969 20.707031 L 20.707031 19.292969 L 13.414062 12 L 20.707031 4.7070312 L 19.292969 3.2929688 L 12 10.585938 L 4.7070312 3.2929688 z"></path></svg> --}}
                            <span class="add__to--cart__text">Out of Stock</span>
                            </a>

                        @endif
                    @endif
                </li>
                
                

            </ul>
        </div>
    </div>
</div>
@endif
