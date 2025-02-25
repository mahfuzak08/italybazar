@extends('frontend.app')
@push('css')

@endpush
@section('content')
@php

use App\Models\Information;
use App\Models\BanglaText;
$info = Information::first();
$bangla_text = BanglaText::first();
$data=getProductInfo($product);
@endphp

<style>
    .product-action-wrapper {
        flex-direction: inherit;
    }
</style>

<main class="main-wrapper">
    <!-- Start Shop Area  -->
    <div class="axil-single-product-area p pb--0 bg-color-white">
        <div class="single-product-thumb mb--5">
            <div class="container-fluid p-5 mobile_show">
                <div class="row">
                    <div class="col-lg-5 mb--10">
                        <div class="row">
                            <div class="col-lg-10 order-lg-2">
                                <div class="single-product-thumbnail-wrap zoom-gallery">
                                    <div class="single-product-thumbnail product-large-thumbnail-3 img-section axil-product">
                                        <div class="thumbnail">
                                            <a href="{{ getImage('products', $product->image)}}" class="popup-zoom">
                                                <img src="{{ getImage('products', $product->image)}}" alt="{{ $product->name}} Images">
                                            </a>
                                        </div>

                                        @foreach($product->images as $im)
                                        <div class="thumbnail">
                                            <a href="{{ getImage('products', $im->image)}}" class="popup-zoom">
                                                <img src="{{ getImage('products', $im->image)}}" alt="{{ $product->name}} Images">
                                            </a>
                                        </div>
                                        @endforeach

                                    </div>

                                  	@if($product->discount_type)
                                    <div class="label-block">
                                        <div class="product-badget" style="background: #c2050b;">{{$product->discount_type=='fixed'?'Tk :':''}}{{$product->discount}} {{$product->discount_type=='fixed'?'':'%'}} OFF</div>
                                    </div>
                                  	@endif
                                    <div class="product-quick-view position-view">
                                        <a href="{{ getImage('products', $product->image)}}" class="popup-zoom">
                                            <i class="far fa-search-plus"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 order-lg-1">
                                <div class="product-small-thumb-3 small-thumb-wrapper">
                                    <div class="small-thumb-img">
                                        <img src="{{ getImage('products', $product->image)}}" alt="{{ $product->name}} image">
                                    </div>
                                    @foreach($product->images as $im)
                                    <div class="small-thumb-img">
                                        <img src="{{ getImage('products', $im->image)}}" alt="{{ $product->name}} image">
                                    </div>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 mb--30">
                        <div class="single-product-content">
                            <div class="inner" style="color:#000">
                                <!--h4 class="product-title" style="margin:0px">{{ $product->name}}</h4>

                              	<div class="product-price-variant">
                                  <span class="price current-price" style="font-size:22px; font-weight: 500">{{ priceFormate($data['price'])}}</span>
                                  @if($data['old_price'] >0)
                                  <del><span class="price old-price" style="font-size:14px;margin-left:10px">{{ priceFormate($data['old_price'])}} </span></del>
                                  @endif

                                  @if($product->discount_type)
                                  <span class="price old-price" style="font-size:16px;margin-left:10px;background: #0064D2;padding:4px;color:#fff">{{$product->discount}} {{$product->discount_type=='fixed'?'া':'%'}} OFF </span>
                                  @endif
                                </div>

                                <h6 style="font-size:14px;margin:2px">Catgeory : {{ $product->category?$product->category->name:''}}</h6>
                                <h6 style="font-size:14px;margin:2px">Brand : {{ $product->brand?$product->brand->name:''}}</h6-->
                                <div class="product-meta">
                                  	<div style="">
                                      <h2 class="product-title" style="margin:0px">{{ $product->name}}</h2>
                                  	</div>

                                  	<style>
                                  	    .price.old-price{
                                  	            font-size: 25px;
                                                margin-left: 10px;
                                                font-weight: bold;
                                                text-decoration: line-through;
                                  	    }
                                  	    .price.current-price-product{
                                  	            font-size: 34px !important;
                                                font-weight: bold !important;
                                                color: #F85606;
                                  	    }
                                  	    .hide_span {
                                  	        color: #7393f2 !important;
                                  	    }
                                  	</style>

                                  	<div style="">
                                      <div class="product-price-variant">
                                        <span class="price current-price-product" style="">

                                        @php
                                          $curr = $info->currency;
                                        @endphp

                                        @if($curr == 'BDT')
                                          ৳ {{ $data['price'] }}
                                        @elseif ($curr == 'Dollar')
                                          $ {{ $data['price'] }}
                                        @elseif ($curr == 'Euro')
                                          € {{ $data['price'] }}
                                        @elseif ($curr == 'Rupee')
                                           {{ $data['price'] }}
                                        @else
                                         @endif


                                        </span>
                                        @if($data['discount_amount'] > 0 && $data['old_price'] >0)
                                        <del><span class="price old-price" style="font-size:14px;margin-left:10px">

                                           @php
                                          $curr = $info->currency;
                                        @endphp

                                        @if($curr == 'BDT')
                                           {{ $data['old_price'] }}
                                        @elseif ($curr == 'Dollar')
                                          $ {{ $data['old_price'] }}
                                        @elseif ($curr == 'Euro')
                                          € {{ $data['old_price'] }}
                                        @elseif ($curr == 'Rupee')
                                           {{ $data['old_price'] }}
                                        @else
                                         @endif

                                          </span></del>
                                        @endif

                                        @if($product->discount_type)
                                        <span class="price old-price" style="font-size:16px;margin-left:12px;background: #c2050b;padding:4px;color:#fff">{{$product->discount}} {{$product->discount_type=='fixed'?'Tk':'%'}} OFF </span>
                                        @endif
                                      </div>
                                  	</div>
                                  	<ul class="product-metas">
                                      {!! $product->feature !!}
                                    </ul>
                                </div>

                                </div>
                                <div class="col-md-6">
                                <form method="POST" action="{{ route('front.carts.store')}}" id="cart_form">
                                    @csrf

                                    @if($product->type=='single')
                                    <input type="hidden" name="variation_id" value="{{ $product->variation->id ?? ''}}">
                                    @else
                                    <div class="product-variations-wrapper">

                                        <div class="product-variation product-size-variation">

                                            <!--<select style="height: 35px; width:50%; margin-bottom: 10px;" name="variation_id">-->
                                            <!--    <option value="" hidden>Select Size and Color ..</option>-->
                                            <!--    @foreach($product->variations as $v)-->
                                            <!--        <option value="{{$v->id}}">{{'size ('.$v->size->title.') color : ('.$v->color->name.')'}}</option>-->
                                            <!--    @endforeach-->
                                            <!--</select>-->
                                            {{-- <h5><strong>Select Size/Color:</strong></h5> --}}
                                            <div class="sizes" id="sizes">
                                                @foreach($product->variations as $v)
                                                  @if($v->weight->title == '0.5 gm' && $v->size->title == 'free')
                                                  @else
                                                    <div class="size" value="{{$v->id}}">
                                                        {{-- @if($v->weight->title == '0.5 gm')
                                                        @else
                                                        {{ $v->weight->title }}
                                                        @endif
                                                         <span id="add_here" class="" style="color: #fff;">-</span> --}}
                                                         @if($v->weight->title == '0.5 gm')
                                                         @else
                                                         {{ $v->weight->title }}
                                                         @endif
                                                    </div>
                                                @endif
                                                @endforeach
                                            </div>
                                            <input type="hidden" id="size_value" name="variation_id">
                                        </div>

                                    </div>

                                    @endif
                                    <style>
                                        .sizes{
                                            display: flex;
                                        }
                                        .sizes .size {
                                            padding: 5px;
                                            margin: 5px;
                                            border: 1px solid #ff6347;
                                            width: auto;
                                            text-align: center;
                                            cursor: pointer;
                                            border-radius: 3px;
                                        }
                                        .sizes .size.active{
                                            background: #ff6347;
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
                                <input class="qty1 qty-input" type="hidden" name="quantity" value="1" />


                                    <div class="product-action-wrapper d-flex-center" style="margin-bottom: 15px;">
                                        <!-- Start Quentity Action  -->
                                        <input type="hidden" name="product_id" value="{{ $product->id}}">
                                        @if($product->after_discount != '0')
                                        <input type="hidden" name="price" id="price_val" value="{{ $product->after_discount }}">
                                        @else
                                        <input type="hidden" name="price" id="price_val" value="{{ $product->sell_price }}">
                                        @endif

                                        <input type="hidden" name="is_stock" value="{{ $product->is_stock }}">


                                        <div class="pro-qty item-quantity">
                                            <span class="decrease-qty quantity-button">-</span>
                                            <input type="text" class="qty qty-input quantity-input" value="1" name="quantity" />
                                            <span class="increase-qty quantity-button">+</span>
                                        </div>

                                        <!-- End Quentity Action  -->
                                        <!-- Start Product Action  -->

                                        <ul class="product-action d-flex-center mb--0" style="margin-left: 22px;">
                                            <li class="add-to-cart" style="margin: 0px;">
                                                @if($product->is_free_shipping == 0)
                                                <button class="axil-btn" style="padding:7px 28px; background: #ff6347; width: 260px;color: white;font-size:18px;">{{ $bangla_text->order_text }}</button>

                                                @else
                                                <button class="axil-btn" style="padding:7px 28px; background: #ff6347; width: 260px;color: white;font-size:18px;"> {{ $bangla_text->order_text }} </button>
                                                @endif
                                            </li>

                                        </ul>
                                        <!-- End Product Action  -->
                                    </div>
                                    </form>
                                    </div>
                          <div class="col-md-6" style="margin-bottom: 10px;">
                              <form method="POST" action="{{ route('front.carts.storeCart')}}" id="cart_submit">
                                    @csrf
                                    <input type="hidden" name="product_id" value="{{ $product->id}}">
                                    <input class="qty1 qty-input" type="hidden" name="quantity" value="1" />
                                    <!--<input type="hidden" name="variation_id" id="size-value" name="variation_id">-->
                                    <input type="hidden" name="variation_id" id="size_value1" value="{{ $product->variation->id ?? ''}}">
                                    <input type="hidden" name="price" id="price_val1" value="">
                                    <input type="hidden" name="is_stock" value="{{ $product->is_stock }}">
                                <div class="desktop-cart cart-count" style="padding-bottom: 0px;">
                                  <div class="product-add-to-cart col-12">
                                      <ul class="cart-action col-12" style="padding-left: 0px;width: 100%;">
                                          <li class="select-option col-12" style="margin-bottom: 0px;">
                                              {{-- <button type="submit" class="btn p-0 button m-auto text-light col-12" style="background: #F85606 !important;">
                                                    @if($product->is_free_shipping == 0)
                                                          <p><b>
                                                        <i class="fas fa-shopping-cart"></i>

                                                      &nbsp; {{ $bangla_text->cart_text }} </b></p>

                                                    @else

                                                      <p>
                                                        <b>
                                                        <i class="fas fa-shopping-cart"></i>
                                                      &nbsp; {{ $bangla_text->fshipping_text }} - {{ $bangla_text->order_text }}
                                                      </b>
                                                    </p>

                                                  @endif
                                                      <span>
                                                          <i class="fas fa-shopping-cart"></i>
                                                      </span>
                                              </button>  --}}
                                          </li>
                                      </ul>
                                  </div>
                            </div>
                        </form>
                      </div>
            </div>

                                  @if( $info->number_visibility == 3 )

                                   <div class="product-action-wrapper phone-box d-flex-center first" style="background:#F85606;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num1}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num1; ?></span></a>
                                      </div>
                                    </div>

                                  <div class="product-action-wrapper phone-box d-flex-center second" style="background:#FE9017;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num2}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num2 ?></span></a>
                                      </div>
                                    </div>

                                  <div class="product-action-wrapper phone-box d-flex-center third" style="background:#FA3435;border-radius: 5px;padding: 10px 30px;">
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num3}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num3 ?></span></a>
                                      </div>
                                    </div>
                                  @elseif( $info->number_visibility == 2 )
                                    <div class="product-action-wrapper phone-box d-flex-center first" style="background:#F85606;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num1}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num1; ?></span></a>
                                      </div>
                                    </div>

                                  <div class="product-action-wrapper phone-box d-flex-center second" style="background:#FE9017;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num2}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num2 ?></span></a>
                                      </div>
                                    </div>

                                  @elseif( $info->number_visibility == 1 )
                                    <div class="product-action-wrapper phone-box d-flex-center first" style="background:#F85606;border-radius: 5px;padding: 10px 30px;margin-bottom: 10px;">
                                      <div class="inner_div" style="margin: 0 auto;">
                                      		<a href="tel: {{$info->supp_num1}}" style="color: white;display: flex; align-items:center"><i class='fas fa-phone-alt'></i> &nbsp;&nbsp; <span><?php echo $info->supp_num1; ?></span></a>
                                      </div>
                                    </div>

                                  @else

                                  @endif



                                <!-- End Product Action Wrapper  -->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End .single-product-thumb -->
        <style>
          .p_des{
            border: 2px solid #F85606;
          }
           @media only screen and (max-width: 767px) {
              .p_des {
                  margin: 4px;
              }
          }
        </style>

        <div class="woocommerce-tabs bg-vista-white p_des">
              <div class="product_des">
                <h5 class="title"> Descriptions </h5>
              </div>
                <div class="product-desc-wrapper">
                    <div class="row">
                        <div class="col-lg-12 mb--20">
                            <div class="single-desc p-3">
                                @if($product->video_link)
                                <div class="col-lg-5">
                                  {!! $product->video_link !!}
                                </div>
                                @endif
                                {!! $product->body !!}
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        <!-- woocommerce-tabs -->

    <!--      <div class="woocommerce-tabs wc-tabs-wrapper" style="background: #dbd3d39e;">-->
    <!--        <div class="container">  -->


    <!--            <div class="reviews-wrapper pt-4">-->
    <!--                <div class="row">-->
    <!--                    <div class="col-lg-6 mb--20">-->
    <!--                        <div class="axil-comment-area pro-desc-commnet-area pt-3">-->
    <!--                            <h5 class="title">({{$product->reviews->count()}}) Relative Product</h5>-->
    <!--                            <ul class="comment-list">-->
                                    <!-- Start Single Comment  -->

    <!--                              @foreach($product->reviews as $review)-->
    <!--                                <li class="comment">-->
    <!--                                    <div class="comment-body">-->
    <!--                                        <div class="single-comment">-->
    <!--                                            <div class="comment-img">-->
    <!--                                                <img src="{{ asset('images/users.png')}}" alt="Author Images" style="width:60px">-->
    <!--                                            </div>-->
    <!--                                            <div class="comment-inner">-->
    <!--                                                <h6 class="commenter">-->
    <!--                                                    <a class="hover-flip-item-wrapper" href="#">-->
    <!--                                                        <span class="hover-flip-item">-->
    <!--                                                            <span data-text="Cameron Williamson">{{ $review->user?$review->name:''}}</span>-->
    <!--                                                        </span>-->
    <!--                                                    </a>-->
    <!--                                                    <span class="commenter-rating ratiing-four-star">-->
    <!--                                                      	@for($i=1;$i<=5;$i++)-->

    <!--                                                          @if($i <= $review->review)-->
    <!--                                                            <a><i class="fas fa-star"></i></a>-->
    <!--                                                            @else-->
    <!--                                                            <a><i class="fas fa-star empty-rating"></i></a>-->
    <!--                                                            @endif-->
    <!--                                                        @endfor-->
    <!--                                                    </span>-->
    <!--                                                </h6>-->
    <!--                                                <div class="comment-text">-->
    <!--                                                    <p> {{ $review->message}}  </p>-->
    <!--                                                </div>-->
    <!--                                            </div>-->
    <!--                                        </div>-->
    <!--                                    </div>-->
    <!--                                </li>-->
    <!--                              @endforeach-->
                                    <!-- End Single Comment  -->
    <!--                            </ul>-->
    <!--                        </div>-->
                            <!-- End .axil-commnet-area -->
    <!--                    </div>-->
                        <!-- End .col -->
    <!--                    <div class="col-lg-6 mb--20">-->
                            <!-- Start Comment Respond  -->
    <!--                        <div class="comment-respond pro-des-commend-respond mt--0">-->
    <!--                            <h5 class="title mb--10">Add a Review</h5>-->

    <!--                            <div class="rating-wrapper d-flex-center mb--10">-->

    <!--                             <div class="wrapper">-->
    <!--                                <div class="master">-->
    <!--                                    <div class="rating-component">-->
    <!--                                        <div class="status-msg">-->
    <!--                                            <label>-->
    <!--                                                <input class="rating_msg" type="hidden" name="rating_msg" value="" />-->
    <!--                                            </label>-->
    <!--                                        </div>-->
    <!--                                        <div class="stars-box">-->
    <!--                                            <i class="star fa fa-star" title="1 star" data-message="Poor" data-value="1"></i>-->
    <!--                                            <i class="star fa fa-star" title="2 stars" data-message="Too bad" data-value="2"></i>-->
    <!--                                            <i class="star fa fa-star" title="3 stars" data-message="Average quality" data-value="3"></i>-->
    <!--                                            <i class="star fa fa-star" title="4 stars" data-message="Nice" data-value="4"></i>-->
    <!--                                            <i class="star fa fa-star" title="5 stars" data-message="very good qality" data-value="5"></i>-->
    <!--                                        </div>-->
    <!--                                        <div class="starrate">-->
    <!--                                            <label>-->
    <!--                                                <input class="ratevalue" type="hidden" name="rate_value" value="" />-->
    <!--                                            </label>-->
    <!--                                        </div>-->
    <!--                                    </div>-->

    <!--                                    <div class="feedback-tags">-->
    <!--                                        <div class="tags-container" data-tag-set="1">-->
    <!--                                            <div class="question-tag">-->
    <!--                                                Why was your experience so bad?-->
    <!--                                            </div>-->
    <!--                                        </div>-->
    <!--                                        <div class="tags-container" data-tag-set="2">-->
    <!--                                            <div class="question-tag">-->
    <!--                                                Why was your experience so bad?-->
    <!--                                            </div>-->
    <!--                                        </div>-->

    <!--                                        <div class="tags-container" data-tag-set="3">-->
    <!--                                            <div class="question-tag">-->
    <!--                                                Why was your average rating experience ?-->
    <!--                                            </div>-->
    <!--                                        </div>-->
    <!--                                        <div class="tags-container" data-tag-set="4">-->
    <!--                                            <div class="question-tag">-->
    <!--                                                Why was your experience good?-->
    <!--                                            </div>-->
    <!--                                        </div>-->

    <!--                                        <div class="tags-container" data-tag-set="5">-->
    <!--                                            <div class="make-compliment">-->
    <!--                                                <div class="compliment-container">-->
    <!--                                                    Give a compliment-->
    <!--                                                    <i class="far fa-smile-wink"></i>-->
    <!--                                                </div>-->
    <!--                                            </div>-->
    <!--                                        </div>-->

    <!--                                        <div class="tags-box">-->
    <!--                                            <form action="{{ route('front.product-reviews.store')}}" method="post" id="review_form">-->
    <!--                                              	@csrf-->
    <!--                                              	<input type="hidden" name="product_id" value="{{$product->id}}" />-->
    <!--                                              	<input type="hidden" name="review" id="review" value="" />-->

    <!--                                                <div class="row">-->
    <!--                                                    <div class="col-12">-->
    <!--                                                        <div class="form-group">-->
    <!--                                                            <label>Other Notes (optional)</label>-->
    <!--                                                            <textarea name="message" placeholder="Your Comment"></textarea>-->
    <!--                                                        </div>-->
    <!--                                                    </div>-->
    <!--                                                    <div class="col-lg-6 col-md-6 col-12 m-0">-->
    <!--                                                        <div class="form-group">-->
    <!--                                                            <label>Name <span class="require">*</span></label>-->
    <!--                                                            <input id="name" type="text" name="name"/>-->
    <!--                                                        </div>-->
    <!--                                                    </div>-->

    <!--                                                    <div class="col-lg-12 m-0">-->
    <!--                                                        <div class="button-box form-submit">-->
    <!--                                                            <button type="submit" id="submit" class="axil-btn btn-bg-primary w-auto">Submit Comment</button>-->
    <!--                                                        </div>-->
    <!--                                                      <div class="submited-box">-->
    <!--                                                          <div class="loader"></div>-->
    <!--                                                          <div class="success-message">-->
    <!--                                                              Thank you!-->
    <!--                                                          </div>-->
    <!--                                                      </div>-->
    <!--                                                    </div>-->
    <!--                                                </div>-->
    <!--                                            </form>-->
    <!--                                        </div>-->
    <!--                                    </div>-->


    <!--                                </div>-->
    <!--                            </div>-->

 			<!--					</div>-->
    <!--                        </div>-->
                            <!-- End Comment Respond  -->
    <!--                    </div>-->
                        <!-- End .col -->
    <!--                </div>-->
    <!--            </div>-->

    <!--        </div>-->


            <!--  second woocomerce -->

    <!--</div>-->
    <!-- End Shop Area  -->

    <!-- Start Recently Viewed Product Area  -->
    <div class="axil-product-area bg-color-white pt--10">
        <div class="container-fluid">
            <a class="viewall-right" href="{{ route('front.products.index')}}"><span class="title-highlighter view all highlighter-primary"> View All >></span></a>
            <div class="section-title-wrapper">
                <!--<span class="title-highlighter highlighter-primary"> <i class="far fa-shopping-basket"></i> Our Products</span>-->
                <h2 class="title">You Might Also Like</h2>
            </div>
            <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
                <div class="slick-single-layout" id="relative_data">

                </div>
                <!-- End .slick-single-layout -->
            </div>

        </div>
    </div>
    <!-- End Recently Viewed Product Area  -->
     <style>
      .res-bar {
        display: none;
        width: 100%;
      background-color: #fff;
      box-shadow: 0 15px 35px #0000001a;
      position: fixed;
      bottom: 58px;
      left: 0px;
      z-index: 100;
      }
      .res-bar-main ul {
        display: grid;
        grid-template-columns: repeat(3,1fr);
        grid-template-rows: auto;
        list-style: none;
        padding: 0;
        margin: 0;
      }
      .res-bar-main ul li {
      /* display: flex;
      align-items: center;
      justify-content: center; */
      height: 100%;
      width: 100%;
    }
    .res-bar-main ul li span {
      display: block;
      color: #666;
      font-size: 15px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 2px 10px;
      box-sizing: border-box;
      gap: 5px;
    }
    .res-bar-main ul li span i {
    color: #ff8c00;
    font-size: 23px;
    }
    .res-bar-main ul li button {
    background-color: #db230c;
    padding: 20px 15px;
    color: #fff;
    font-family: Rubik,sans-serif;
    font-weight: 400;
    text-transform: uppercase;
    font-size: 15px;
    line-height: 18px;
    width: 100%;
    border: none;
    outline: none;
    clip-path: polygon(12% 0,100% 0,100% 100%,0% 100%);
}
.res-bar-main ul li:last-child button {
    background-color: #F85606;
    clip-path: none;
    position: relative;
}
.res-bar-main ul li:last-child button:after {
    content: "";
    display: block;
    width: 0;
    height: 0;
    border-left: 25px solid #db230c;
    border-bottom: 59px solid transparent;
    position: absolute;
    left: 0px;
    top: 0px;
}
      @media only screen and (max-width: 767px) {
        .res-bar {
              display: block;
              bottom: 5px;
           }
           .res-bar-main ul {
                grid-template-columns: 1fr 1.2fr 1.5fr;
                margin-top: 0px;
                margin-bottom: 0px;
            }
           .res-bar-main li {
                margin-top: 0px;
                margin-bottom: 0px;
            }
            .phone-div {
                position: absolute;
                top: -53px;
                left: 0;
                display: flex;
                gap: 5px;
                align-items: self-end;
                font-size: 16px;
                font-weight: 900;
                color: green;
                background-color: #f1e0e0;
                padding: 8px 11px;
                border-radius: 5px;
            }
            .phone-div span i {
              color: red;
          }
    }

    </style>
    <div class="res-bar">
      <div class="res-bar-main">
        <ul>
          <li>
            <span><i class="fas fa-store"></i> Store</span>
          </li>
          <li>
            <form method="POST" action="{{ route('front.carts.store')}}" id="cart_form">
              @csrf

              @if($product->type=='single')
              <input type="hidden" name="variation_id" value="{{ $product->variation->id ?? ''}}">

              @endif

               <input class="qty1 qty-input" type="hidden" name="quantity" value="1" />

                  <!-- Start Quentity Action  -->
                  <input type="hidden" name="product_id" value="{{ $product->id}}">
                  @if($product->after_discount != '0')
                  <input type="hidden" name="price" id="price_val" value="{{ $product->after_discount }}">
                  @else
                  <input type="hidden" name="price" id="price_val" value="{{ $product->sell_price }}">
                  @endif

                  <input type="hidden" name="is_stock" value="{{ $product->is_stock }}">


                  <input type="hidden" class="qty qty-input quantity-input" value="1" name="quantity" />

                  <!-- End Quentity Action  -->
                  <!-- Start Product Action  -->


                  @if($product->is_free_shipping == 0)
                  <button>Buy Now</button>

                  @else
                  <button>Buy Now </button>
                  @endif


              </form>
              {{-- <button>Buy Now </button> --}}
          </li>
          <li>
            {{-- <button>Add to cart</button> --}}
            <form method="POST" action="{{ route('front.carts.store')}}" id="cart_form">
              @csrf

              @if($product->type=='single')
              <input type="hidden" name="variation_id" value="{{ $product->variation->id ?? ''}}">

              @endif

               <input class="qty1 qty-input" type="hidden" name="quantity" value="1" />

                  <!-- Start Quentity Action  -->
                  <input type="hidden" name="product_id" value="{{ $product->id}}">
                  @if($product->after_discount != '0')
                  <input type="hidden" name="price" id="price_val" value="{{ $product->after_discount }}">
                  @else
                  <input type="hidden" name="price" id="price_val" value="{{ $product->sell_price }}">
                  @endif

                  <input type="hidden" name="is_stock" value="{{ $product->is_stock }}">


                  <input type="hidden" class="qty qty-input quantity-input" value="1" name="quantity" />

                  <!-- End Quentity Action  -->
                  <!-- Start Product Action  -->


                          @if($product->is_free_shipping == 0)
                          <button>Add to cart</button>

                          @else
                          <button>Add to cart</button>
                          @endif


              </form>
          </li>
        </ul>
      </div>
    </div>
</main>
@endsection

@push('js')
<script type="text/javascript">

  $(document).on('submit','form#cart_submit', function(e) {
    e.preventDefault();

    let url=$(this).attr('action');
	let method=$(this).attr('method');
	let data= $(this).serialize();

	$.ajax({
	    url: url,
        method: method,
        data: data,
        success: function (res) {
            if (res.success) {
                toastr.success(res.msg);
                if (res.view) {
                	$(document).find('div#cart_section').html(res.view);
                }

                if (res.item) {
                	$(document).find('span.cart-count').text(res.item);
                }

                if(res.url){
                	document.location.href = res.url;
                } else {
                    window.location.reload();
                }

            }else{
                toastr.error(res.msg);
            }
        },
        error:function (response){
            $.each(response.responseJSON.errors,function(field_name,error){
                toastr.error(error);
            })
        }
	});

});

    $('li.size').click(function(){

        $('li.size').removeClass('active');

        $(this).addClass('active');

    });


    $('li.color').click(function(){

        $('li.color').removeClass('active');
        $(this).addClass('active');

    });

  	$(document).ready(function(){
        getRelatedProduct();

        function getRelatedProduct(){
            let url ='{{ route("front.products.relativeProduct",[$product->id])}}';
            $.ajax({
                url: url,
                method: 'GET',
                data:{},
                dataType :"JSON",
                success: function (res) {

                    if (res.success) {
                        $('div#relative_data').html(res.html);
                    }

                }
            });
        }

    });
</script>
  <script type="text/javascript">
//   $(document).ready(function(){
//       $('#sizes .size').on('click', function(){
//           $('#sizes .size').removeClass('active');
//           $(this).addClass('active');
//           var value = $(this).attr('value');
//           $("#size-value").val(value);
//           $("#size_value1").val(value);

//       })
//     });

$('#sizes .size').on('click', function(){
           $('#sizes .size').removeClass('active');
           $(this).addClass('active');
        //   $('#add_here').addClass('hide_span');
           let value = $(this).attr('value');
           $.ajax({
               type: 'get',
               url: '{{ route("front.get-variation_price") }}',
               data: {value},
               success: function(res)
               {
                   $('.current-price-product').text('৳'+res.price);
                   $('#price_val').val(res.price);
                   $('#price_val1').val(res.price);
                   console.log(res);
               }
           });

           $("#size_value").val(value);
           $("#size_value1").val(value);

       });

    $('.increase-qty').on('click', function () {
            var proQty = $('.qty1').val();
            var qtyInput = $(this).siblings('.qty');

            var newQuantity = parseInt(qtyInput.val()) + 1;

            $('.qty1').val(newQuantity);
            // proQty.val(newQuantity);
            qtyInput.val(newQuantity);
        });

        $('.decrease-qty').on('click', function () {
            var qtyInput = $(this).siblings('.qty');
            var newQuantity = parseInt(qtyInput.val()) - 1;
            if (newQuantity > 0) {
                qtyInput.val(newQuantity);
            }
            if(parseInt(qtyInput.val() != '0'))
            {
                $('.qty1').val(newQuantity);
            }

        });


    $(".rating-component .star").on("mouseover", function () {
  var onStar = parseInt($(this).data("value"), 10); //
  $(this).parent().children("i.star").each(function (e) {
    if (e < onStar) {
      $(this).addClass("hover");
    } else {
      $(this).removeClass("hover");
    }
  });
}).on("mouseout", function () {
  $(this).parent().children("i.star").each(function (e) {
    $(this).removeClass("hover");
  });
});

$(".rating-component .stars-box .star").on("click", function () {
  var onStar = parseInt($(this).data("value"), 10);
  var stars = $(this).parent().children("i.star");
  var ratingMessage = $(this).data("message");

  var msg = "";
  if (onStar > 1) {
    msg = onStar;
  } else {
    msg = onStar;
  }
  $(document).find('#review').val(onStar);
  $('.rating-component .starrate .ratevalue').val(msg);



  $(".fa-smile-wink").show();

  $(".button-box .done").show();

  if (onStar === 5) {
    $(".button-box .done").removeAttr("disabled");
  } else {
    $(".button-box .done").attr("disabled", "true");
  }

  for (i = 0; i < stars.length; i++) {
    $(stars[i]).removeClass("selected");
  }

  for (i = 0; i < onStar; i++) {
    $(stars[i]).addClass("selected");
  }

  $(".status-msg .rating_msg").val(ratingMessage);
  $(".status-msg").html(ratingMslick-slideressage);
  $("[data-tag-set]").hide();
  $("[data-tag-set=" + onStar + "]").show();
});

$(".feedback-tags  ").on("click", function () {
  var choosedTagsLength = $(this).parent("div.tags-box").find("input").length;
  choosedTagsLength = choosedTagsLength + 1;

  if ($(this).hasClass("choosed")) {
    $(this).removeClass("choosed");
    choosedTagsLength = choosedTagsLength - 2;
  } else {
    $(this).addClass("choosed");
    $(".button-box .done").removeAttr("disabled");
  }

  console.log(choosedTagsLength);

  if (choosedTagsLength <= 0) {
    $(".button-box .done").attr("enabled", "false");
  }
});



$(".compliment-container .fa-smile-wink").on("click", function () {
  $(this).fadeOut("slow", function () {
    $(".list-of-compliment").fadeIn();
  });
});


$(".done").on("click", function () {
  $(".rating-component").hide();
  $(".feedback-tags").hide();
  $(".button-box").hide();
  $(".submited-box").show();
  $(".submited-box .loader").show();

  setTimeout(function () {
    $(".submited-box .loader").hide();
    $(".submited-box .success-message").show();
  }, 1500);
});

</script>
@endpush
