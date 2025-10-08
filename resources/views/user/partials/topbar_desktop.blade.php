<div class="header__topbar d-sm-2-none">
    <div class="container-fluid">
        <div class="header__topbar--inner d-flex align-items-center justify-content-between">
            <div class="header__shipping">
                <ul class="header__shipping--wrapper d-flex">
                    <li class="header__shipping--text header_text_color"><a href="tel:{{optional($business)->phone}}" class="header__shipping--text__link header_text_color">{{optional($business)->phone}}</a></li>

                    <li class="header__shipping--text header_text_color">
                        <img class="header__shipping--text__icon" src="{{ asset('frontend/assets/img/icon/email.png') }}" alt="email-icon"> 
                        <a class="header__shipping--text__link header_text_color" href="mailto:{{optional($business)->email}}">{{optional($business)->email}}</a></li>

                    <li class="header__shipping--text header_text_color">
                        <img class="header__shipping--text__icon" src="{{ asset('frontend/assets/img/icon/bus.png') }}" alt="bus-icon"> 
                        <a href="{{ route('order.track') }}" class="header__shipping--text__link header_text_color">Track Your Order</a></li>
                </ul>
            </div>
            <div class="language__currency d-lg-block">
                <ul class="d-flex align-items-center">
                    @if(Auth::check())
                    <li class="header__shipping--text header_text_color">
                        <a href="{{ route('customer.account') }}" class="header__shipping--text__link header_text_color">My Account</a></li>
                    @else
                        <li class="header__shipping--text header_text_color me-2">
                            <a href="{{ route('login') }}" class="header__shipping--text__link header_text_color">Login</a></li>
                        <li class="header__shipping--text header_text_color ms-2 d-none">
                            <a href="{{ route('register') }}" class="header__shipping--text__link header_text_color">Register</a></li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</div>