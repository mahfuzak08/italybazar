<!DOCTYPE html>
<html lang="en">
@include('frontend.partials.head')
<style>
    .cartopen{
        display: none;
        position: fixed;
        right: 2px;
        top: 50%;
        visibility: visible;
        padding: 7px;
        height: 36px;
        border-radius: 3px !important;
        background-color: rgb(219 35 12) !important;
        color: #fff;
    }
    .cartopen-count{
        position: absolute;
        top: -19px;
        inset-inline-end: 3px;
        background-color: #fff;
        box-shadow: 0 0 4px rgba(0,0,0,0.17);
        color: rgb(211, 14, 14);
        font-size: 13px;
        padding-left: 7px;
        padding-right: 7px;
        border-radius: 50%;
    }

    @media only screen and (max-width: 767px) {
        .cartopen{
            display: block;
            z-index: 99999;
        }
    }

</style>
<body class="sticky-header" style="max-width: 1600px;margin: 0 auto">
    <a href="#top" class="back-to-top" id="backto-top" style="background: #F85606;"><i class="fal fa-arrow-up"></i></a>

      <div class="cartopen">
        <a href="{{ route('front.carts.index')}}?segment={{request()->segment(1)}}" class="cart-dropdown-btn">
          <span class="cartopen-count">{{ getTotalCart()}}</span>
          <i class="flaticon-shopping-cart"></i>
          </a>
      </div>

    @include('frontend.partials.header')
    @yield('content')

@include('frontend.partials.footer')
