<?php

use App\Models\Category;
use App\Models\Colors;
use App\Models\Variation;
use App\Models\ProductStocks;
use App\Models\Page;

if (!function_exists('user')) {

    /**
     * Return current logged in user
     */
    function user()
    {
        if (session()->has('user')) {
            return session('user');
        }

        $user = auth()->user();

        if ($user) {
            session(['user' => $user]);
            return session('user');
        }

        return null;
    }

}

if (!function_exists('order_status')) {
    function order_status($order_status = 'pending') {
        switch ($order_status) {
            case 'pending':
                return 'primary';
            case 'processing':
                return 'dark';
            case 'shipped':
                return 'warning';
            case 'delivered':
                return 'success';
            case 'canceled':
                return 'danger';
            default:
                return 'default';
        }
    }
}

if(!function_exists('admin_image')){
    function admin_image($image){
        if($image && file_exists(public_path('images/admin/' . $image))){
            return asset('images/admin/' . $image);
        }else{
            return asset('images/admin.jpg');
        }
    }
}

if(!function_exists('brand_image')){
    function brand_image($image){
        if($image && file_exists(public_path('images/brand/' . $image))){
            return asset('images/brand/' . $image);
        }else{
            return asset('images/brand.png');
        }
    }
}

if(!function_exists('category_image')){
    function category_image($image){
        if($image && file_exists(public_path('images/category/' . $image))){
            return asset('images/category/' . $image);
        }else{
            return asset('images/category.jpeg');
        }
    }
}
if(!function_exists('featured_categories')){
function featured_categories() {
    $categories = Category::where(['is_menu_active'=>1, 'is_active'=>1])->orderBy('menu_position', 'ASC')->get();
    return $categories;
}
}
if(!function_exists('all_cateegories')){
function all_cateegories() {
    $all_categories = Category::orderBy('title', 'ASC')->get(['title', 'id']);
    return $all_categories;

}
}
if(!function_exists('business_info')){
function business_info() {
    $business = App\Models\Setting::find(1);
    return $business;
}
}
if(!function_exists('color_info')){
function color_info($id) {
    $info = Colors::find($id);
    return $info;
}
}
if(!function_exists('variation_info')){
function variation_info($id) {
    $info = Variation::find($id);
    return $info;
}
}
if(!function_exists('single_variation_info')){
function single_variation_info($variant_id, $product_id) {
    $info = ProductStocks::where('variant', $variant_id)->where('product_id', $product_id)->where('is_active', 1)->get(['id', 'variant', 'variant_output']);
    return $info;
}
}
if(!function_exists('variation_stock_info')){
function variation_stock_info($id) {
    $info = ProductStocks::find($id);
    return $info;
}
}
if(!function_exists('other_pages')){
function other_pages() {
    $info = Page::where('id','!=',9)->where('id','!=',10)->orderBy('id')->get(['id', 'name']);
    return $info;
}
}


