@extends('frontend.app')
@section('content')

<!-- Start Categorie Area  -->
{{-- <div class="category-mobileview axil-categorie-area ">
    <div class="container-fluid">
        <div class="page-card card-channel" data-module-id="channels" data-spm="icons" style="">
          <ul class="card-content channel-content">
           <li class="channel-item">
           <a href="{{ route('front.categories')}}" class="channel-redirect" data-spm="1">
                 <div class="channel-icon">
                         <div class="img-wrap">
                             <img src="{{asset('images/category.png')}}" alt="Mart" />
                         </div>
                    </div>
                      <div class="channel-name">
                       <div class="text-wrap text-top">Categories</div>
                      </div>
                 </a>
             </li> 
            <div class="d-flex justify-content-between col-12 category-slider">
            	@foreach($cats as $cat)

              <li class="channel-item">
                  <a href="{{ route('front.products.index',['category_id'=>$cat->id])}}" class="channel-redirect" data-spm="2">
                      <div class="channel-icon">
                          <div class="img-wrap">
                              <img src="{{ getImage('categories', $cat->image) }}" alt="{{ $cat->name}}" />
                          </div>
                      </div>
                      <div class="channel-name">
                          <div class="text-wrap text-top">{{ $cat->name}}</div>
                      </div>
                  </a>
              </li>
            @endforeach
            </div>

             
          </ul>
      </div>
    </div>
</div> --}}
<!-- End Categorie Area  -->  

<div class="desktop home-menu">
    <div class="container-fluid-fluid">
        <div class="header-navbar">
            <div class="header-main-nav">
                <!-- Start Mainmanu Nav -->
                <nav class="mainmenu-nav pe-5">
                 
                    <ul class="mainmenu slick-mainmenu">                      
                      
                        @foreach($cats as $cat)
                        <li class="{{ $cat->subcats->count() >0? 'menu-item-has-children':'' }}">
                            
                            <a href="{{ route('front.subCategories',[$cat->url])}}">{{ $cat->name}}</a>
                            @if($cat->subcats->count())
                            <ul class="axil-submenu">
                                @foreach($cat->subcats as $sub)
                                <li><a href="{{ route('front.products.index')}}?category_id={{ $cat->id}}&sub_category_id={{ $sub->id}}">{{ $sub->name}}</a></li>
                                @endforeach
                            </ul>
                            @endif
                        </li>
                        @endforeach                  
                       
                    </ul>
                </nav>
                <!-- End Mainmanu Nav -->
            </div>
        </div>
    </div>
</div>
<!-- End Mainmenu Area -->
        
<main class="main-wrapper"> 

<!-- Start Desktop Slider Area -->
<div class="desktop-slide slider axil-main-slider-area main-slider-style-2">
    <div class="container-fluid">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach($sliders as $key=>$s)
                <div class="carousel-item  {{ $key==0 ?'active':''}}">
                  	<a href="{{$s->link}}">
                    	<img src="{{ getImage('sliders', $s->image) }}" class="d-block w-100 h-600" alt="..." />
                  	</a>
                </div>
                @endforeach
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
</div>
<!-- End Slider Area -->

<!-- Start Mobile Slider Area -->
<div class="mobile-slide slider axil-main-slider-area main-slider-style-2" style="padding-top: 18px;">
    <div class="container-fluid">
        <div id="McarouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach($sliders as $key=>$s)
                <div class="carousel-item  {{ $key==0 ?'active':''}}">
                  	<a href="{{$s->link}}">
                  		<img src="{{ getImage('sliders', $s->mobile_image) }}" style="display:none" class="d-block w-100" alt="..." />
                    </a>
                </div>
                @endforeach
            </div>            
        </div>
    </div>
</div>
<!-- End Slider Area -->

<!-- Start Axil Newsletter Area  -->
@foreach($images as $im)
@if($im->section=='3')
<div class="desktop-slide recommended axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              	<a href="{{$im->link}}">
                	<img src="{{ getImage('homeimages', $im->image) }}" class="d-block w-100" style="height: 125px;" alt="..." />
              	</a>
            </div>
        </div>
    </div>
</div>
  
<div class="mobile-slide recommended axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              	<a href="{{$im->link}}">
                <img src="{{ getImage('homeimages', $im->mobile_image) }}" class="d-block w-100" style="height: 80px;" alt="..." />
              </a>
            </div>
        </div>
    </div>
</div>
@endif
@endforeach
<!-- End Axil Newsletter Area  -->
  <div class="mobile-gap-trending"></div>
<!-- Start Expolre Product Area  -->
<div  class="service-area">
    <div  class="container">
      <div  class="service-main">
        <div  class="service-details">
          <div  class="service-icon">
            <span >
              <i  class="fas fa-truck"></i>
            </span>
          </div>
          <div  class="service-text">
            <h3 >HOME DELIVERY</h3>
            <p >24-72 Hours</p>
          </div>
        </div>
        <div  class="service-details">
          <div  class="service-icon">
            <span >
              <i  class="fas fa-sync-alt"></i>
            </span>
          </div>
          <div  class="service-text">
            <h3 >Best Warranty Policy</h3>
            <p >With A 30 Day</p>
          </div>
        </div>
        <div  class="service-details">
          <div  class="service-icon">
            <span >
              <i  class="fas fa-headset"></i>
            </span>
          </div>
          <div class="service-text">
            <h3 >SECURE SHOPPING</h3>
            <p >100% Safe Transactions</p>
          </div>
        </div>
        <div  class="service-details">
          <div  class="service-icon">
            <span >
              <i  class="fas fa-lock"></i>
            </span>
          </div>
          <div  class="service-text">
            <h3 >ORDER PLACED</h3>
            <p >Total 1,84,560 +</p>
          </div>
        </div>
      </div>
    </div>
</div> 
<div class="axil-product-area  pt--10">
    <div class="container-fluid">
       
        <div class="section-title-wrapper">
            <h2 class="title"> New Arivals </h2>
        </div>      
        <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
            <div class="slick-single-layout" id="trending_data">
                
            </div>
            <!-- End .slick-single-layout -->
        </div>
        <a class="viewall-right" href="{{ route('front.products.index')}}"><span class="title-highlighter view all highlighter-primary"><i class="fa fa-eye"></i> VIEW ALL DEALS</span>
        </a>
    </div>
</div>
<!-- End Expolre Product Area  -->

<div class="mobile-gap-recommended"></div>
<!-- Start Expolre Product Area  -->
<div class="axil-product-area  pt--10">
    <div class="container-fluid">
      
       
        <div class="section-title-wrapper">            
            <h2 class="title">Recommended Product</h2>
        </div>
      
        <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
            <div class="slick-single-layout" id="recommended_data">
                
            </div>
            <!-- End .slick-single-layout -->
        </div>
        <a class="viewall-right" href="{{ route('front.products.index')}}"><span class="title-highlighter view all highlighter-primary"> <i class="fa fa-eye"></i> VIEW ALL DEALS
        </span></a>

    </div>
</div>
<!-- End Expolre Product Area  -->


<!--
@foreach($images as $im)
@if($im->section=='2')
<div class="desktop-slide hot-deals axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
            <div class="etrade-newsletter-wrapper bg_image">
                <div class="newsletter-content">
                  	<a href="{{$im->link}}">
                    <img src="{{ getImage('homeimages', $im->image) }}" class="d-block w-100" style="height: 125px;" alt="..." />
                  </a>
                </div>
            </div>
            </div>
        </div>
    </div>
     
</div>
  
<div class="mobile-slide hot-deals axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
            <div class="etrade-newsletter-wrapper bg_image">
                <div class="newsletter-content">
                  	<a href="{{$im->link}}">
                    <img src="{{ getImage('homeimages', $im->mobile_image) }}" class="d-block w-100" style="height: 80px;" alt="..." />
                  </a>
                </div>
            </div>
            </div>
        </div>
    </div>
    -->
</div>
@endif
@endforeach
<!-- End Image Area  -->



<!-- Start Expolre Product Area  -->
<div class="axil-product-area  pt--10">
    <div class="container-fluid">
        <div class="section-title-wrapper">
            <h2 class="title">Best Offers</h2>
        </div>
        <div class="hotdeal-data" style="padding-top:12px">
            <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide" id="hotdeal_data">
                
            </div>
        </div>       
        <a class="viewall-right" href="{{ route('front.discountProduct')}}"><span class="title-highlighter view all highlighter-primary"><i class="fa fa-eye"></i> VIEW ALL DEALS</span></a>   
    </div>
</div>
<!-- End Expolre Product Area  -->


<!-- Start Image Area  -->
@foreach($images as $im)
@if($im->section=='1')
<div class="desktop-slide trending axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              	<a href="{{$im->link}}">
                  <img src="{{ getImage('homeimages', $im->image) }}" class="d-block w-100" style="height: 125px;" alt="..." />
                </a>
            </div>
        </div>
    </div>
    <!-- End .container-fluid -->
</div>
  
<div class="mobile-slide trending axil-newsletter-area pt--10">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              	<a href="{{$im->link}}">
                	<img src="{{ getImage('homeimages', $im->mobile_image) }}" class="d-block w-100" style="height: 80px;" alt="..." />
              	</a>
            </div>
        </div>
    </div>
</div>
  
@endif
@endforeach
<!-- End Image Area  -->

<!-- Start Image Area  -->
@foreach($images as $im)
@if($im->section=='4')
<div class="desktop-slide top-brands axil-newsletter-area pt--10 pb-6">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              <a href="{{$im->link}}">
                <img src="{{ getImage('homeimages', $im->image) }}" class="d-block w-100" style="height: 125px;" alt="..." />
              </a>
            </div>
        </div>
    </div>
    <!-- End .container-fluid -->
</div>
  
<div class="mobile-slide top-brands axil-newsletter-area pt--10 pb-6">
    <div class="container-fluid">
        <div class="etrade-newsletter-wrapper bg_image">
            <div class="newsletter-content">
              <a href="{{$im->link}}">
                <img src="{{ getImage('homeimages', $im->mobile_image) }}" class="d-block w-100" style="height: 80px;" alt="..." />
              </a>
            </div>
        </div>
    </div>
    <!-- End .container-fluid -->
</div>
  
@endif
@endforeach
<!-- End Image Area  -->

</main>

@endsection

@push('js')

<script type="text/javascript">
    $(document).ready(function(){
        getTrending();
        getHotDeal();
        getRecommended();

        function getTrending(){
            let url='{{ route("front.trendingProduct")}}';
            $.ajax({
                url: url,
                method: 'GET',
                data:{},
                dataType :"JSON",
                success: function (res) {

                    if (res.success) {
                        $('div#trending_data').html(res.html);
                    }
                   
                }
            });
        }

        function getHotDeal(){
            let url='{{ route("front.hotdealProduct")}}';
            $.ajax({
                url: url,
                method: 'GET',
                data:{},
                dataType :"JSON",
                success: function (res) {

                    if (res.success) {
                        $('div#hotdeal_data').html(res.html);
                    }
                   
                }
            });
        }

        function getRecommended(){
            let url='{{ route("front.recommendedProduct")}}';
            $.ajax({
                url: url,
                method: 'GET',
                data:{},
                dataType :"JSON",
                success: function (res) {

                    if (res.success) {
                        $('div#recommended_data').html(res.html);
                    }
                   
                }
            });
        }


    });
</script>
@endpush