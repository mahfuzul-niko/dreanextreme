{{-- Start --}}
@if (request()->query())

@endif
{{-- end --}}
<div class="single__widget widget__bg">
<h2 class="widget__title h3">Categories</h2>
<ul class="widget__categories--menu" > {{-- style="overflow-y: scroll; height:200px;" --}}
    @foreach($categories as $category)
        @if(count($category->child) > 0)
        {{-- sub category exist --}}
            <li class="widget__categories--menu__list">
                {{-- main category with sub category  --}}
                <label class="widget__categories--menu__label d-flex align-items-center">
                    <img class="widget__categories--menu__img" src="{{ asset('images/category/'.$category->image ) }}" alt="{{$category->title}}">
                    <span class="widget__categories--menu__text text-dark">{{$category->title}}</span>
                    <svg class="widget__categories--menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394">
                        <path d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z" transform="translate(-6 -8.59)" fill="currentColor"></path>
                    </svg>
                </label>
                <ul class="widget__categories--sub__menu">
                    @foreach($category->child as $p_category)
                        @if(count($p_category->child) > 0)
                        <li class="widget__categories--menu__list ms-2 me-1">
                            {{-- sub category with sub sub category  --}}
                            <label class="widget__categories--menu__label d-flex align-items-center">
                                <img class="widget__categories--menu__img" src="{{ asset('images/category/'.$p_category->image ) }}" alt="{{$p_category->title}}">
                                <span class="widget__categories--menu__text text-dark">{{$p_category->title}}</span>
                                <svg class="widget__categories--menu__arrowdown--icon" xmlns="http://www.w3.org/2000/svg" width="12.355" height="8.394">
                                    <path d="M15.138,8.59l-3.961,3.952L7.217,8.59,6,9.807l5.178,5.178,5.178-5.178Z" transform="translate(-6 -8.59)" fill="currentColor"></path>
                                </svg>
                            </label>
                            <ul class="widget__categories--sub__menu">
                                @foreach($p_category->child as $inner_sub_category)
                                <li class="widget__categories--sub__menu--list ms-2">
                                    <a class="widget__categories--sub__menu--link d-flex align-items-center" href="{{route('products', ['category_id'=>$inner_sub_category->id])}}">
                                        <img class="widget__categories--sub__menu--img" src="{{ asset('images/category/'.$inner_sub_category->image ) }}" alt="{{$inner_sub_category->title}}">
                                        <span class="widget__categories--sub__menu--text text-dark">{{$inner_sub_category->title}}</span>
                                    </a>
                                </li>
                                @endforeach
                                
                            </ul>
                        </li>
                        @else
                            <li class="widget__categories--sub__menu--list">
                                <a class="widget__categories--sub__menu--link d-flex align-items-center" href="{{route('products', ['category_id'=>$p_category->id])}}">
                                    <img class="widget__categories--sub__menu--img rounded shadow" src="{{ asset('images/category/'.$p_category->image ) }}" alt="{{$p_category->title}}">
                                    <span class="widget__categories--sub__menu--text text-dark">{{$p_category->title}}</span>
                                </a>
                            </li>
                        @endif
                    @endforeach
                </ul>
            </li>
            @else
            <li class="widget__categories--sub__menu--list">
                <a class="widget__categories--sub__menu--link d-flex align-items-center" href="{{route('products', ['category_id'=>$category->id])}}">
                    <img class="widget__categories--sub__menu--img rounded shadow" src="{{ asset('images/category/'.$category->image ) }}" alt="{{$category->title}}">
                    <span class="widget__categories--sub__menu--text text-dark">{{$category->title}}</span>
                </a>
            </li>
        @endif
    @endforeach
</ul>
</div>
<div class="single__widget widget__bg">
<h2 class="widget__title h3 mb-1">Brands</h2>
<ul class="widget__form--check" > {{-- style="overflow-y: scroll; height:200px;" --}}
    @foreach($brands as $brand)
    <li class="widget__form--check__list">
        <label class="widget__form--check__label" for="brand_{{$brand->id}}">{{$brand->title}}</label>
        <input value="{{$brand->id}}" @if($brand->id == $request_brand) checked @endif class="widget__form--check__input cls_brand_{{$brand->id}} brands"  id="brand_{{$brand->id}}" type="checkbox">
        <span class="widget__form--checkmark"></span>
    </li>
    @endforeach
</ul>
</div>
{{-- <div class="single__widget price__filter widget__bg">
<h2 class="widget__title h3">Filter By Price</h2>
<form class="price__filter--form" action="#"> 
    <div class="price__filter--form__inner mb-15 d-flex align-items-center">
        <div class="price__filter--group">
            <label class="price__filter--label" for="Filter-Price-GTE2">From</label>
            <div class="price__filter--input border-radius-5 d-flex align-items-center">
                <span class="price__filter--currency">$</span>
                <label>
                    <input class="price__filter--input__field border-0" name="filter.v.price.gte" type="number" placeholder="0" min="0" max="250.00">
                </label>
            </div>
        </div>
        <div class="price__divider">
            <span>-</span>
        </div>
        <div class="price__filter--group">
            <label class="price__filter--label" for="Filter-Price-LTE2">To</label>
            <div class="price__filter--input border-radius-5 d-flex align-items-center">
                <span class="price__filter--currency">$</span>
                <label>
                    <input class="price__filter--input__field border-0" name="filter.v.price.lte" type="number" min="0" placeholder="250.00" max="250.00"> 
                </label>
            </div>	
        </div>
    </div>
    <button class="price__filter--btn primary__btn" type="submit">Filter</button>
</form>
</div> --}}