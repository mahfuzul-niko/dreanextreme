<?php
    $req_url = Request::url();
?>
<div class="account__left--sidebar pe-2 me-4">
    <h2 class="account__content--title h3 mb-20">Hello, {{user()->name}}</h2>
    <ul class="account__menu">
        <li class="account__menu--list @if($req_url === route('customer.account')) active @endif">
            <a class="text-dark" href="{{route('customer.account')}}">Dashboard</a></li>
        <li class="account__menu--list @if($req_url === route('customer.profile')) active @endif">
            <a class="text-dark" href="{{route('customer.profile')}}">Profile</a></li>
        <li class="account__menu--list @if($req_url === route('customer.orders')) active @endif">
            <a class="text-dark" href="{{route('customer.orders')}}">Orders</a></li>
        <li class="account__menu--list @if($req_url === route('customer.reviews')) active @endif">
            <a class="text-dark" href="{{route('customer.reviews')}}">Reviews</a></li>

        {{-- <li class="account__menu--list"><a href="my-account.html">Wallet</a></li> --}}
        <li class="account__menu--list @if($req_url === route('customer.wishlist')) active @endif">
            <a class="text-dark" href="{{route('customer.wishlist')}}">Wishlist</a></li>

        <li class="account__menu--list">
            <form action="{{ route('logout') }}" method="POST">
                @csrf
                <button class="btn btn-outline-danger text-xl" type="submit">Logout</button>
            </form>
        </li>
    </ul>
</div>
