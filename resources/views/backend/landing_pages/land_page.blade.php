<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $ln_pg->title1 ?? '' }}</title>

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="{{ asset('backend/landing_page/css/owl.css') }}">-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <!--<link rel="stylesheet" href="{{ asset('backend/landing_page/css/owl.theme.min.css') }}">-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('backend/landing_page/css/style.css?v=005') }}">
    <!--<link rel="stylesheet" href="{{ asset('backend/landing_page/css/media.css') }}">-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <meta name="csrf-token" content="{{ csrf_token() }}">
   <style>

@media screen and (max-width: 500px)
{
    .discount_price {
        text-align: center;
    }
    .regular_price {
        text-align: center;
    }
}
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Container div */
        .image-container {
            width: 100%;
            overflow: hidden; /* Ensures the image doesn't overflow the container */
        }

        /* Responsive image */
        .responsive-image {
            border: none;
            border-radius: 0;
            box-shadow: none;
            height: auto;
            max-width: 100%;
        }
        ol, ul{
            padding-left: none;
        }
   </style>

{!!\App\Models\Information::value('tracking_code')!!}



</head>
<body style="text-align: center;background:{{$ln_pg->bg}};color: {{$ln_pg->fcolor}};">
    @php
        // dd($ln_pg);
    @endphp
   <div class="main-wrapper">
        <div class="top-div">
            <div class="container">
                {{-- <div class="element-width" data-aos="fade-down" data-aos-duration="1000"> --}}
                    {{-- <div class="top-box-weight"> --}}
                        <h1 class="top-heading-title">
                            {{ $ln_pg->title1 }}
                        </h1>
                    {{-- </div> --}}
                {{-- </div> --}}
                {{-- <div class="text-info-box qa" data-aos="fade-up">
                        <h2 class="top-heading-title">
                        {!! $ln_pg->title2 !!}
                        </h2>
                </div> --}}
                
            </div>
            <div class="second_info">
                <div class="container">
                    <div class="row">
                        <div class="image-container">
                            <img src="{{ asset('landing_pages/'.$ln_pg->image) }}" alt="{{$ln_pg->title1}}" class="responsive-image">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <h3>{!! $ln_pg->title2 !!}</h3>
                        </div>
                    </div>
                </div>           
            </div>
        </div>
        <style>
            .video-box iframe {
                margin: 10px;
            }
            ul {
              list-style: none;
            }
            
            ul li {
              /* padding-left: 20px;  */
              line-height: 1.5; 
            }
            
            ul li::before {
              content: ""; 
              display: inline-block; 
              width: 20px; 
              height: 20px; 
              background-image: url({{ asset('frontend/images/check.webp') }}); 
              background-size: cover; 
              background-repeat: no-repeat;
              margin-right: 10px;
            } 
            .top-heading-title {
                /*color: black !important;*/
                font-size: 35px;
                font-weight: 900;
                padding: 10px;
            }
            .top_div {
                position: relative;
                height: 70px;
                background: red;
                margin-top: 20px;             
            }
            
            .shape{
                position: absolute;
                width: 50px;
                height: 50px;
                background: red;
                transform: rotate(45deg);
                right: -7%;
                top: 15%;
            }
                            
            .another_div {
                position: relative;
                height: 70px;
                margin-top: 20px;
                border: 1px solid black;
                border-left: none;
            }
          
            /* // X-Large devices (large desktops, 1200px and up) */
            @media screen and (min-width: 992px) and (max-width: 1199px) {
                
                .price_section {
                    padding-left: 0px !important;
                }
                
                .shape {
                    position: absolute;
                    width: 48px !important;
                    height: 48px !important;
                    background: red;
                    transform: rotate(45deg);
                    right: -9% !important;
                    top: 15% !important;
                }
                
                .top_div h3 {
                    font-size: 30px !important;
                }
                
                .another_div h3 {
                    font-size: 30px !important;
                }
            }
            @media screen and (min-width: 768px) and (max-width: 991px) {
                
                .top-div .container .element-width .top-box-weight .top-heading-title{
                    font-size: 44px;
                }
                .top-div .container .text-info-box .top-heading-title{
                    font-size: 24px;
                    line-height: 1.3em;
                }
                
                /*Price Section*/
                .price_section {
                    padding-left: 0px !important;
                }
                .shape {
                    right: -12% !important;
                    width: 48px !important;
                    height: 48px !important;
                }
                .top_div h3 {
                    font-size: 35px !important;
                    float: none !important;
                }
                .another_div h3 {
                    font-size: 35px !important;
                    float: none !important;
                }
                
            }

            @media screen and (min-width: 576px) and (max-width: 767px) {
                
                
                .top-div .container .element-width {
                    padding: 26px 0px 0px 0px !important;
                    margin-bottom: 10px !important;
                }
                
                .top-div .container .element-width .top-box-weight .top-heading-title {
                    font-size: 15px !important;
                    line-height: 1.3em;
                }
                
                .top-div .container .text-info-box .top-heading-title {
                    font-size: 17px !important;
                    line-height: 1.3em;
                }
                
                .video-box iframe {
                    height: 210px !important;
                }
                
                .overview {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .feature-list {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                    line-height: 1.3em !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .ord {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .address_section {
                    width: 100% !important;
                }
                
                .order-col {
                    width: 100% !important;
                }
                
                /*Price Section*/
                .price_section {
                    padding-left: 0px !important;
                }
                
                .phone img {
                    height: 25px !important;
                    width: 25px !important;
                }
                
                
                .shape {
                    right: -13% !important;
                    width: 50px !important;
                    height: 50px !important;
                }
                
                .top_div {
                    width: 42% !important;
                }
                
                .another_div {
                    width: 42% !important;
                }
                
                .top_div h3 {
                    font-size: 30px !important;
                    float: none !important;
                }
                .another_div h3 {
                    font-size: 30px !important;
                    float: none !important;
                }
                
            }

            @media screen and (min-width: 484px) and (max-width: 575px) {
                
                .top-div .container .element-width {
                    padding: 26px 0px 0px 0px !important;
                    margin-bottom: 10px !important;
                }
                
                .top-div .container .element-width .top-box-weight .top-heading-title {
                    font-size: 15px !important;
                    line-height: 1.3em;
                }
                
                .top-div .container .text-info-box .top-heading-title {
                    font-size: 17px !important;
                    line-height: 1.3em;
                }
                
                .video-box iframe {
                    height: 210px !important;
                }
                
                .overview {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .feature-list {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                    line-height: 1.3em !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .ord {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .address_section {
                    width: 100% !important;
                }
                
                .order-col {
                    width: 100% !important;
                }
                
                /*Price Section*/
                
                .price_section {
                    padding-left: 38px !important;
                }
                
                .phone img {
                    height: 25px !important;
                    width: 25px !important;
                }
                
                
                .shape {
                    right: -13% !important;
                    width: 50px !important;
                    height: 50px !important;
                }
                
                .top_div {
                    width: 45% !important;
                }
                
                .another_div {
                    width: 45% !important;
                }
                
                .top_div h3 {
                    font-size: 30px !important;
                    float: none !important;
                }
                .another_div h3 {
                    font-size: 30px !important;
                    float: none !important;
                }
                
                .container .ani-btn-box .inner-padding .btn {
                    font-size: 18px !important;
                }
                
            }

            @media screen and (min-width: 424px) and (max-width: 483px) {
                
                .top-div .container .element-width {
                    padding: 26px 0px 0px 0px !important;
                    margin-bottom: 10px !important;
                }
                
                .top-div .container .element-width .top-box-weight .top-heading-title {
                    font-size: 15px !important;
                    line-height: 1.3em;
                }
                
                .top-div .container .text-info-box .top-heading-title {
                    font-size: 17px !important;
                    line-height: 1.3em;
                }
                
                .video-box iframe {
                    height: 210px !important;
                }
                
                .overview {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .feature-list {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                    line-height: 1.3em !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .ord {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .address_section {
                    width: 100% !important;
                }
                
                .order-col {
                    width: 100% !important;
                }
                
                /*Price Section*/
                
                .price_section {
                    padding-left: 38px !important;
                }
                
                .phone img {
                    height: 25px !important;
                    width: 25px !important;
                }
                
                
                .shape {
                    right: -13% !important;
                    width: 35px !important;
                    height: 35px !important;
                }
                
                .top_div {
                    width: 45% !important;
                    height: 50px !important;
                }
                
                .another_div label {
                    font-size: 12px !important;
                }
                
                .top_div label {
                    font-size: 12px !important;
                }
                
                .another_div {
                    width: 45% !important;
                    height: 50px !important;
                }
                
                .top_div h3 {
                    font-size: 25px !important;
                    float: none !important;
                }
                .another_div h3 {
                    font-size: 26px !important;
                    float: none !important;
                }
                
                .container .ani-btn-box .inner-padding .btn {
                    font-size: 18px !important;
                }
                
            }

            @media screen and (min-width: 400px) and (max-width: 423px) {
                
                .top-div .container .element-width {
                    padding: 26px 0px 0px 0px !important;
                    margin-bottom: 10px !important;
                }
                
                .top-div .container .element-width .top-box-weight .top-heading-title {
                    font-size: 15px !important;
                    line-height: 1.3em;
                }
                
                .top-div .container .text-info-box .top-heading-title {
                    font-size: 17px !important;
                    line-height: 1.3em;
                }
                
                .video-box iframe {
                    height: 210px !important;
                }
                
                .overview {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .feature-list {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                    line-height: 1.3em !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .ord {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .address_section {
                    width: 100% !important;
                }
                
                .order-col {
                    width: 100% !important;
                }
                
                /*Price Section*/
                .price_section {
                    padding-left: 38px !important;
                }
                
                .phone img {
                    height: 25px !important;
                    width: 25px !important;
                }
                
                
                .shape {
                    right: -13% !important;
                    width: 35px !important;
                    height: 35px !important;
                }
                
                .top_div {
                    width: 45% !important;
                    height: 50px !important;
                }
                
                .another_div label {
                    font-size: 12px !important;
                    margin-left: 12px !important;
                }
                
                .top_div label {
                    font-size: 12px !important;
                    margin-left: 12px !important;
                }
                
                .another_div {
                    width: 45% !important;
                    height: 50px !important;
                }
                
                .top_div h3 {
                    font-size: 25px !important;
                    float: none !important;
                }
                .another_div h3 {
                    font-size: 26px !important;
                    float: none !important;
                }
                
                .container .ani-btn-box .inner-padding .btn {
                    font-size: 18px !important;
                }
                
            }

            @media screen and (min-width: 375px) and (max-width: 399px) {
                
                
                .top-div .container .element-width {
                    padding: 26px 0px 0px 0px !important;
                    margin-bottom: 10px !important;
                }
                
                .top-div .container .element-width .top-box-weight .top-heading-title {
                    font-size: 15px !important;
                    line-height: 1.3em;
                }
                
                .top-div .container .text-info-box .top-heading-title {
                    font-size: 17px !important;
                    line-height: 1.3em;
                }
                
                .video-box iframe {
                    height: 210px !important;
                }
                
                .overview {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .feature-list {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                    line-height: 1.3em !important;
                }
                
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                
                .ord {
                    padding-left: 0px !important;
                }
                
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                
                .address_section {
                    width: 100% !important;
                }
                
                .order-col {
                    width: 100% !important;
                }

                /*Price Section*/
                
                .price_section {
                    padding-left: 38px !important;
                }
                
                .phone img {
                    height: 25px !important;
                    width: 25px !important;
                }
                
                .shape {
                    right: -13% !important;
                    width: 35px !important;
                    height: 35px !important;
                }
                
                .top_div {
                    width: 45% !important;
                    height: 50px !important;
                }
                
                .another_div label {
                    font-size: 8px !important;
                    margin-left: 12px !important;
                }
                
                .top_div label {
                    font-size: 8px !important;
                    margin-left: 12px !important;
                }
                
                .another_div {
                    width: 45% !important;
                    height: 50px !important;
                }
                
                .top_div h3 {
                    font-size: 25px !important;
                    float: none !important;
                }
                .another_div h3 {
                    font-size: 26px !important;
                    float: none !important;
                }
                
                /*Price Section*/
                
                .container .ani-btn-box .inner-padding .btn {
                    font-size: 18px !important;
                }
            }

            @media screen and (min-width: 320px) and (max-width: 374px) {
                .top-div .container .element-width {
                    padding: 26px 0px 0px 0px !important;
                    margin-bottom: 10px !important;
                }
                .top-div .container .element-width .top-box-weight .top-heading-title {
                    font-size: 15px !important;
                    line-height: 1.3em;
                }
                .top-div .container .text-info-box .top-heading-title {
                    font-size: 17px !important;
                    line-height: 1.3em;
                }
                .overview {
                    padding-left: 0px !important;
                }
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                }
                .down-div .container .element-widget-wrap {
                    padding: 10px;
                }
                .slide_top {
                    padding-left: 0px !important;
                }
                .feature-list {
                    padding-left: 0px !important;
                }
                .down-div .container .element-widget .top-heading-title {
                    font-size: 25px !important;
                    line-height: 1.3em !important;
                }
                ul {
                    padding-left: 0px !important;
                }
                .feature-list ul li {
                    padding-left: 0px !important;
                }
                .down-div .container .element-widget-wrap {
                    padding: 10px !important;
                }
                .ord {
                    padding-left: 0px !important;
                }
                .ord {
                    padding-left: 0px !important;
                    line-height: 1.3em !important;
                }
                .price_section {
                    padding-left: 25px !important;
                }
                
                .phone img {
                    height: 25px !important;
                    width: 25px !important;
                }
                
                .shape {
                    right: -13% !important;
                    width: 35px !important;
                    height: 35px !important;
                }
                
                .top_div {
                    width: 45% !important;
                    height: 50px !important;
                }
                
                .another_div label {
                    font-size: 8px !important;
                    margin-left: 5px !important;
                }
                
                .top_div label {
                    font-size: 8px !important;
                    margin-left: 5px !important;
                }
                
                .another_div {
                    width: 45% !important;
                    height: 50px !important;
                }
                
                .top_div h3 {
                    font-size: 25px !important;
                    float: none !important;
                }
                .another_div h3 {
                    font-size: 26px !important;
                    float: none !important;
                }
                .address_section {
                    width: 100% !important;
                }
                
                .container .ani-btn-box .inner-padding .btn {
                    font-size: 18px !important;
                }
                
            }



        </style>
        <div class="down-div" style="padding-top: 10px;background: {{$ln_pg->bg}};color: {{$ln_pg->fcolor}};">
            <div class="container">
                <div class="row">
                    {!! $ln_pg->video_url !!}
                    <div class="ani-btn-box" style="margin: 45px 0px;">
                        <div class="inner-padding" data-aos="fade-up">
                            <button id="order_btn" class="btn btn-danger" style="border: 3px solid white;">
                            অর্ডার করতে চাই
                            </button>
                        </div>
                    </div>
                </div>
                <div class="element-widget slide_top">
                    <div class="top-heading-title">
                        {{ $ln_pg->feature }}
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        {!! $ln_pg->des1 !!}                           
                    </div>
                </div>
                    
                <div class="element-widget slide_top">
                    <div class="top-heading-title">
                     {!! $ln_pg->title3 !!}
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        {!! $ln_pg->des3 !!}
                    </div>
                </div>
                <div class="bottom_feature">
                    {!! $ln_pg->title4 !!}
                </div>
                <div id="element_widget" class="element-widget-cover">
                    <div class="element-widget-wrap">
                        
                        <div class="form-wrapper">
                        <form action="{{ route('front.storelandData') }}" method="POST" id="checkout_land_form">
                            <div class="row">
                               <div class="address_section col-md-6" style="width: 50%;float: left;">
                                    <div class="form-address">
                                        <div class="address-col">
                                            <h3>সঠিকভাবে ফর্মটি পূরণ করুন</h3>
                                            <div class="billing-fields">
                                                <div class="form-group">
                                                    <label for="">আপনার নাম<span class="required">*</span></label>
                                                    <input type="text" name="first_name" class="form-control">
                                                    <input type="hidden" value="{{ $ln_pg->product->id }}" name="prd_id" class="form-control">

                                                </div>
                                                <div class="form-group">
                                                    <label for="">আপনার মোবাইল নাম্বার<span class="required">*</span></label>
                                                    <input type="text" name="mobile" class="form-control">
                                                </div>
                                                <input type="hidden" id="variation_id" name="variation_id" value="{{ $ln_pg->product->variation->id }}">
                                                <input type="hidden" id="total_price_val" name="final_amount" value="">
                                                 @if($ln_pg->product->after_discount != 0)
                                                            <input type="hidden" id="product_price" name="amount" value="{{ $ln_pg->product->after_discount }}">
                                                            @else
                                                            <input type="hidden" id="product_price" name="amount" value="{{ $ln_pg->product->sell_price }}">
                                                            @endif
                                                
                                                
                                                <input type="hidden" id="product_quantity" name"quantity">
                                                <div class="form-group">
                                                    <label for="">আপনার সম্পূর্ন ঠিকানা<span class="required">*</span></label>
                                                    <input type="text" name="shipping_address" class="form-control">
                                                </div>

                                                <div class="form-group d-none">
                                                    <label for="exampleInputPassword1" style="float: left;">ডেলিভারি এলাকা নির্বাচন করুন</label>
                                                    <select required name="delivery_charge_id" style="min-height: 30px !important;" onchange="getCharge()" id="delivery_charge_id" class="form-control" style="font-size:12px !important;">

                                                        @foreach($charges as $key=>$charge)
                                                                <option value="{{ $charge->id}}" id="charge" data-charge="{{ $charge->amount}}">{{ $charge->title }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <style>
                                        .sizes{
                                            display: flex;
                                        }
                                        .sizes .size {
                                            padding: 3px;
                                            margin: 5px;
                                            border: 1px solid #c2050b;
                                            width: auto;
                                            text-align: center;
                                            cursor: pointer;
                                        }
                                        .sizes .size.active{
                                            background: #c2050b;
                                            color: white;
                                        }
                                        .increase-qty {
                                                width: 32px;
                                                display: block;
                                                float: left;
                                                line-height: 26px;
                                                cursor: pointer;
                                                text-align: center;
                                                font-size: 16px;
                                                font-weight: 300;
                                                color: #000;
                                                height: 32px;
                                                background: #f6f7fb;
                                                border-radius: 50%;
                                                transition: .3s;
                                                border: 2px solid rgba(0,0,0,0);
                                                background: #ffffff;
                                                border: 1px solid #ddd;
                                                border-radius: 10%;
                                        }
                                        .decrease-qty {
                                                width: 32px;
                                                display: block;
                                                float: left;
                                                line-height: 26px;
                                                cursor: pointer;
                                                text-align: center;
                                                font-size: 16px;
                                                font-weight: 300;
                                                color: #000;
                                                height: 32px;
                                                background: #f6f7fb;
                                                border-radius: 50%;
                                                transition: .3s;
                                                border: 2px solid rgba(0,0,0,0);
                                                background: #ffffff;
                                                border: 1px solid #ddd;
                                                border-radius: 10%;
                                        }
                                        
                                    </style>
                                
                                <div class="col-md-6">
                                    <div class="order-col" style="width: 100%;">
                                        <h3>আপনার অর্ডার</h3>
                                        <div id="order_review" class="review-order">
                                            <table class="shop_table review-order-table">
                                                <thead>
                                                    <tr>
                                                        <th class="product-name">Product</th>
                                                        <th class="product-total">Subtotal</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="cart_item">
                                                        <td class="product-name">
                                                            <div class="product-image">
                                                            <div class="product-thumbnail"><img width="100%" src="{{ getImage('products', $ln_pg->product->image) }}" class="" alt="" > </div>
                                                                <div class="product-name-td">{{ $ln_pg->product->name }}</div>
                                                            </div>

                                                        </td>
                                                        <td class="product-total">
                                                        <span id="price" class="price-amount amount">
                                                            
                                                            
                                                             @if($ln_pg->product->after_discount != 0)
                                                             {{ $ln_pg->product->after_discount }}
                                                            
                                                            @else
                                                            {{ $ln_pg->product->sell_price }}
                                                            @endif
                                                            
                                                            <span class="price-currencySymbol">&nbsp;</span> ৳</span>
                                                            
                                                        @if($ln_pg->product->after_discount != 0)
                                                        <input type="hidden" id="price_val" value="{{ $ln_pg->product->after_discount }}">
                                                        @else
                                                        <input type="hidden" id="price_val" value="{{ $ln_pg->product->sell_price }}">
                                                        @endif
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>
                                                            <span>Select Quantity: </span>
                                                        </td>
                                                        <td style="width: 45%;">
                                                            
                                                             <div style="display: flex;" class="pro-qty item-quantity">
                                            <span class="decrease-qty quantity-button">-</span>
                                            <input type="text" style="width: 25%;text-align: center;" class="inner_qty qty-input quantity-input" value="1" name="quantity" />
                                            <span class="increase-qty quantity-button">+</span>
                                        </div>
                                                       
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                <tfoot>
                                                    <tr class="cart-subtotal">
                                                        <th>Subtotal</th>
                                                        <td><span class="final-price-amount amount">
                                                             @if($ln_pg->product->after_discount != 0)
                                                             {{ $ln_pg->product->after_discount }}
                                                            
                                                            @else
                                                            {{ $ln_pg->product->sell_price }}
                                                            @endif
                                                           
                                                            <span class="price-currencySymbol">&nbsp;</span></span>৳</td>
                                                    </tr>
                                                    <tr class="shipping-totals shipping"> 
                                                        <th> Free Shipping</th>
                                                        <td>
                                                            <li style="list-style: none;">
                                                                <span id="delvry_charge">0  ৳</span>
                                                            </li>
                                                        </td>
                                                    </tr>
                                                    <tr class="order-total">
                                                        <th>Total</th>
                                                        <td><strong><span id="total" class="Price-amount amount">
                                                            
                                                             @if($ln_pg->product->after_discount != 0)
                                                             {{ $ln_pg->product->after_discount }}
                                                            
                                                            @else
                                                            {{ $ln_pg->product->sell_price }}
                                                            @endif
                                                            
                                                            <span class="Price-currencySymbol">&nbsp;</span></span></strong> ৳</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                            <div id="payment" class="checkout-payment">
                                                <ul class="payment_methods payment_methods methods">
                                                    <li class="payment_method payment_method_cod">
                                                        <label for="payment_method_cod">
                                                        Cash on delivery</label>
                                                        <div class="payment_box payment_method_cod">
                                                            <p>Pay with cash on delivery.</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                                
                                                <div class="form-row place-order">
                                                     <button type="submit" class="button">অর্ডার কনফার্ম করুন</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </form>
                            
                        </div>
                        <div class="page_footer text-center">
                            <strong> <a href="tel:{{ $ln_pg->phone }}"><span>বিস্তারিত জানতে কল করুন: {{ $ln_pg->phone }}</span></a></strong>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          
        <div class="footer">
            <div class="copyright">
                <small> 2025 italybazar.com | Developed By Italy Bazar</small>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!--<link rel="stylesheet" href="{{ asset('backend/landing_page/js/carousel.min.js') }}">-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!--<link rel="stylesheet" href="{{ asset('backend/landing_page/js/main.js') }}">-->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>


<script>
$(document).ready(function(){
    getCharge(); 
    
	$(".img-gallery").owlCarousel({
		loop: true,
		autoplay: true,
		dots: false,
		margin: 10,
		nav: false,
		responsive: {
			0	: {
				items: 1,
			},
			700: {
				items: 2,
			},
			1200: {
				items: 3,
			},
		},
	});
  });

    function getCharge(){

            let delivery_charge= $('#delivery_charge_id').find("option:selected");
            var crg_id = delivery_charge.val();
           // console.log(crg_id);
            var testval = 0;
           // console.log(testval);
            $('span#delvry_charge').text(testval);
            $('span#charge').text(Number(testval).toFixed(2));
            var price = $('span.final-price-amount').text();
            let total=Number(testval)+Number(price);
            $('#total').text(total);
            $('#total_price_val').val(total);
        }
            $("#order_btn").click(function() {
                $('html,body').animate({
                    scrollTop: $("#element_widget").offset().top},
                    'slow');
            });
            
            $("#order_btn2").click(function() {
               $('html,body').animate({
                    scrollTop: $("#element_widget").offset().top},
                    'slow');
            });
        

    $(document).on('submit','form#checkout_land_form', function(e) {
    e.preventDefault(); 
    $('span.textdanger').text('');

    let ele=$('form#checkout_land_form');
    var url=ele.attr('action');
    var method=ele.attr('method');
    var formData = ele.serialize();
    
    $.ajaxSetup({
	    headers: {
	        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	    }
	});

    $.ajax({
        type: method,
        url: url,
        data: formData,
        success: function(res) {
            if(res.success==true){
                toastr.success(res.msg);
                if(res.url){
                    document.location.href = res.url;
                }else{
                    window.location.reload();
                }
                
            }else if(res.success==false){
                toastr.error(res.msg);
            }
            
        },
        error:function (response){
            $.each(response.responseJSON.errors,function(field_name,error){
                $(document).find('[name='+field_name+']').after('<span class="textdanger" style="color:red">' +error+ '</span>');
            })
        }
    });
});




AOS.init({
	duration: 1200,
});

</script>
 <script type="text/javascript">
 
        $('#sizes .size').on('click', function(){
           $('#sizes .size').removeClass('active');
           $(this).addClass('active');
           let value = $(this).attr('value');
           let variation_price = $(this).data('value');
            let delivery_charge= $('#delivery_charge_id').find("option:selected");
           
            var testval = delivery_charge.data('charge');
            var total_price = Number(variation_price) + Number(testval);
            $('span#total').text(total_price);
            $('#total_price_val').val(total_price);
            $('#product_price').val(variation_price);
            // $('span#charge').text(Number(testval).toFixed(2));
            // var price = $('span#price').text();
            // let total=Number(testval)+Number(price);
            // $('#total').text(total);
           
           
           $('.price-amount').text(variation_price);
           $('span.final-price-amount').text(variation_price);
           $('#price_val').val(variation_price);
           $("#variation_id").val(value);
       }); 
       
       $('.increase-qty').on('click', function () {
        var sub_total_price = 0;   
        var product_price = $('input#price_val').val();
        
        var qtyInput = $(this).siblings('.inner_qty');
        var newQuantity = parseInt(qtyInput.val()) + 1;
        
        $('input#product_quantity').val(newQuantity);
        var delivery_charge = $('span#delvry_charge').text();
        
        var sub_total_price = Number(product_price) * Number(newQuantity);
        
        var total_with_delivery = Number(sub_total_price) + Number(delivery_charge);
        
        // $('span#price').text(sub_total_price);
        $('span.final-price-amount').text(sub_total_price);
        $('span#total').text(total_with_delivery);
        $('#total_price_val').val(total_with_delivery);
        qtyInput.val(newQuantity);
        });
        
        
    
        $('.decrease-qty').on('click', function () {
            var qtyInput = $(this).siblings('.inner_qty');
            $qnty = parseInt(qtyInput.val());
            var newQuantity = parseInt(qtyInput.val()) - 1;
            if (newQuantity > 0) {
                qtyInput.val(newQuantity);
                $('#product_quantity').val(newQuantity);
            }
            var product_price = $('input#price_val').val();
            var delivery_charge = $('span#delvry_charge').text();
            if(newQuantity != '0')
            {
               var sub_total_price = Number(product_price) * Number(newQuantity); 
               var total_with_delivery = Number(sub_total_price) + Number(delivery_charge);
            $('#total_price_val').val(total_with_delivery);
            $('span#total').text(total_with_delivery);
            $('span.final-price-amount').text(sub_total_price);
            }
            
        });

</script>


