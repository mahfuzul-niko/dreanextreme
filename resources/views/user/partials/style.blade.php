@php
    $business = business_info();
@endphp
<style>
    @charset "UTF-8";:root{
    --logo-color:{{ optional($business)->logo_color }};
    --primary-color:{{ optional($business)->primary_color }};
    --secondary-color:{{ optional($business)->secondary_color }};
    }
    
    .header__topbar {
        padding: 5px !important;
    }

    .team__items {
        width: 100% !important;
    }

    .cat-box {
        border: 1px solid rgb(234, 230, 230);
        border-radius: 14px !important;
    }

    .home1__slider--bg {
        height: 200px;
        background-repeat: no-repeat !important;
        background-attachment: scroll !important;
        background-position: center center !important;
        background-size: cover !important;
    }

    .hover-zoom:hover {
        -ms-transform: scale(.5);
        -webkit-transform: scale(.5);
        transition: transform 1.2s;
        transform: scale(1.1);
    }

    /* Custom Code var(--logo-color) */
   
    .cat-zoom {
        transition: transform 1.2s, border-color 1.2s, box-shadow 1.2s;
    }


    .cat-zoom:hover {
        -ms-transform: scale(.5);
        -webkit-transform: scale(.5);
        transition: transform 1.2s;
        transform: scale(1.1);
    }
    .cat-zoom:hover .cat-title {
        color: var(--logo-color);
        transition: transform 1.2s;
        transform: scale(1.1);
    }
    .cat-zoom:hover img {
        filter: grayscale(0%);
        /* Remove grayscale on hover */
    }

    /* ./ Custome End */


    .product_img {
        min-height: 150px;
        max-height: 250px;
    }

    h4.product__items--content__title {
        min-height: 50px !important;
    }

    .product_col:hover {
        box-shadow: 0 0 11px rgba(33, 33, 33, .2);
        transition: .4s;
    }

    .toastify {
        /* border-radius: 30px !important; */
        padding: 6px 10px !important;
    }

    input.quantity__number {
        width: 5rem !important;
    }

    .side_cart_update_button {
        height: 25px !important;
        font-size: 10px;
    }

    .side_cart_qty {
        width: 60px !important;
        height: 25px !important;
    }

    @media only screen and (min-width: 768px) {
        .main__logo--img {
            max-width: 226px !important;
        }

        .big-screen-none {
            display: none !important;
        }



    }

    @media only screen and (max-width: 768px) {
        .header__sticky {
            border-bottom: 1px solid #e6e3e0 !important;
        }
    }

    .search_product_output {
        padding: 3px;
        list-style: none;
        text-align: left;
        position: absolute;
        z-index: 998;
        background-color: #fff;
        width: 95%;
        overflow: hidden;
    }


    a.whatsapp {
        color: #00A356 !important;
    }

    .custom_phone {
        font-size: 25px !important;
        padding: 1px !important;
        padding: 9px !important
    }

    #scroll__top {
        /* border-radius: 50px !important; */
        text-align: center !important;
        bottom: 75px !important;
    }

    iframe {
        bottom: 75px !important;
    }

    .header__topbar {
        background-color: #2A3143 !important;
        border-bottom: 2px solid var(--logo-color);
        /*  #179bf3 #FCDB56 var(--logo-color) */
    }

    .footer__section {
        border-top: 2px solid var(--logo-color);
    }

    .footer__widget--menu__text:hover{
        color: white !important;
    }

    .footer-address-text:hover{
        color: white !important;
    }

    .header__menu--link:hover {
        color: var(--logo-color) !important;
    }

    .offcanvas__stikcy--toolbar__icon {
        background-color: none !important;
        background: none !important;
        color: #2A3143 !important;
        height: 2.5rem !important;
    }

    .offcanvas__stikcy--toolbar__label {
        margin-top:15px;
        margin-left:5px;
    }

    /* .items__count {
        background-color: none !important;
    } */

    .offcanvas__stikcy--toolbar {
        /* border-top: 1px solid #EE2761; */
    }

    .bottom_navigation_custom {
        text-align: center;
        padding: 5px;
        border-radius: 10px;
        border: 1.5px solid var(--logo-color);
        box-shadow: rgb(0 0 0 / 24%) 0px 3px 8px;
    }

    .minicart__quantity {
        margin-right: 5px !important;
    }

    /* .minicart__product {

    } */

    /* .bg__secondary {
        background: #F59C33 !important;
    }

    .items__count {
        background: #F59C33 !important;
    } */

    .shop_more_btn {
        font-size: 1.7rem !important;
        line-height: 4rem !important;
        height: 4rem !important;
        padding: 0px 15px !important;
    }

    .color-animation {
        animation: color-change-animation 2s infinite;
    }

    @keyframes color-change-animation {
        0% {
            color: var(--logo-color);
        }

        33% {
            color: var(--logo-color);
        }

        67% {
            color: var(--logo-color);
        }

        100% {
            color: var(--logo-color);
        }

    }
    .flex{display: flex}
    .flex-col{flex-direction: column}
    .h-full{height:100%;}
    .h-auto{height: auto}
    .w-full{width:100%;}
    .w-auto{width: auto}
    .items-center{align-items:center;}
    .gap-4{gap:1rem;}
    .duration-300{transition-duration: .3s;}
    .rounded-full{border-radius: 9999px;}
    .border-white {
        border-color: rgb(242, 240, 240);
    }
    ..border-white:hover{
        border-color: var(--logo-color);
    }
    .border-primary-hover:hover {
        border-color: var(--logo-color);
    }
    .text-xl {
    font-size: 1.25rem;
    }
    .tracking-wider {
    letter-spacing: .05em;
}
.text-2xl {font-size: 1.5rem;}
.text-3xl {font-size: 2rem;}
.w-1{width:1px;}
.w-14{width:3.5rem;}
.w-24{width:5.5rem;}
.h-5{height: 1.25rem;}
.block{display:block;}
.text-lg{font-size: 1.125rem;}
.product-details-tab-list{
    cursor:pointer;
    margin-right: 1.5rem;
    border: 1px solid #aba8a8;
    border-bottom:0px;
    padding-left: 10px;
    padding-right: 10px;
    padding-top: 7px;
    padding-bottom: 7px;
    border-radius: 5px 5px 0px 0px;
    font-size: 1.8rem;
    font-weight: 500;
}
.single-product-bg-info{
    background-color: #F6F8FA;
    padding-left: 10px;
    padding-right: 10px;
    padding-top: 5px;
    padding-bottom: 5px;
}
.text-xs{ font-size: .813rem;}
.text-2xs{ font-size: .75rem;}
.bg-secondary{background-color: var(--secondary-color)}
</style>
