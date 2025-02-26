  <!-- Start Footer Area  -->
@php
use App\Models\Information;
$info = Information::first();

@endphp


  <!-- End Footer Area  -->
  <div  class="footer-area">
    <div  class="container">
              <div class="footer-main">
        <div class="row">
          <div class="col-md-3">
            <div  class="footer-details">
              <div class="footer-logo">
                <a href="#">
                  <img src="{{ asset('uploads/img/'.$info->site_logo)}}" alt="Site Logo" />
                </a>
              </div>
              <div class="footer-discription">
                <!--<p >{{ $info->site_name }}</p>-->
              </div>
              <div  class="footer-social">
                <ul >
                  <li >
                    <a  target="_blank" href="{{ $info->facebook }}">
                      <i  class="fab fa-facebook-f"></i>
                    </a>
                  </li>
                  <!---->
                  <li >
                    <a  target="_blank" href="{{ $info->instagram }}">
                      <i  class="fab fa-instagram"></i>
                    </a>
                  </li>
                  <!---->
                  <li >
                    <a  target="_blank" href="{{ $info->youtube }}">
                      <i  class="fab fa-youtube"></i>
                    </a>
                  </li>
                  <!---->
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div  class="footer-address">
              <div class="footer-title">
                <h3 >Contact Us</h3>
              </div>
              <ul >
                <li >
                  <div >
                    <span >
                      <i  class="fa-solid fa-at"></i>
                    </span>
                  </div>
                  <div >
                    <p >{{ $info->owner_email }}</p>
                    <!---->
                  </div>
                </li>
                <li >
                  <div >
                    <span >
                      <i  class="fa-solid fa-phone"></i>
                    </span>
                  </div>
                  <div >
                    <p >{{ $info->owner_phone }}</p>
                    <!---->
                  </div>
                </li>
                <li >
                  <div >
                    <span >
                      <i  class="fa-solid fa-location-dot"></i>
                    </span>
                  </div>
                  <div >
                    <p > {{ $info->address }}</p>
                    <!---->
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-3 col-6">
            <div  class="footer-link">
              <div  class="footer-title">
                <h3 >Quick Links</h3>
              </div>
              <ul >
                <li >
                  <a  href="{{ route('front.aboutUs')}} ">About us</a>
                </li>
                <li >
                  <a href="{{ route('front.faq')}}">FAQ</a>
                </li>
                <li>
                  <a href="{{ route('front.privacyPolicy')}}">Privacy Policy</a>
                </li>
                <li >
                  <a href="{{ route('front.termCondition')}}">Terms and Conditions</a>
                </li>
                <li >
                  <a  href="{{ route('front.returnPolicy')}}">Return policy</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-3 col-6">
            <div  class="footer-link">
              <div  class="footer-title">
                <h3>Categories</h3>
              </div>
              <ul >
                @foreach(DB::table('categories')->whereNull('parent_id')->take(5)->get() as $cat)
                <li>
                  <a  href="{{ route('front.products.index')}}?category_id={{$cat->id}}">{{ $cat->name}}</a>
                </li>
                @endforeach
               
    
              </ul>
            </div>
          </div>
        </div>
       
      </div>
      <div  class="ntt">
        <div  class="ntt-main">
          <div  class="ntt-left">
            <h3 >{!! $info->copyright !!} | <a href="https://absoft-bd.com" target="_blank"><span style="color: white;">Website Designed by: ABSoft-BD.COM</span></a>
            </h3>
          </div>
        </div>
      </div>
    </div>
  </div>

  


<div class="cart-dropdown" id="cart-dropdown">
    
</div>

    
@include('frontend.partials.js')

</body>

<html>