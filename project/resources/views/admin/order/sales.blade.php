@extends('layouts.admin')
@section('styles')

<link href="{{asset('assets/admin/css/product.css')}}" rel="stylesheet"/>

@endsection
@section('content')
    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ __('Point of Sales (POS)') }}</h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                            <a href="javascript:;">{{ __('POS') }} </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="add-product-content">
            <div class="col-lg-12">
                <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                    <div class="row">
                        <div class="col-lg-8">
                            <form id="salesall" action="{{route('admin-prod-store')}}" method="POST" enctype="multipart/form-data">
                                {{-- {{csrf_field()}} --}}
                                <div class="row">
                                    <div class="col-lg-10">
                                        <input type="text" class="input-field" placeholder="{{ __('Enter Product Name') }}" name="name" required="">
                                    </div>
                                    <div class="col-lg-2">
                                        <a class="add-btn" style="top: 5px; position:relative;"><i class="fas fa-search"></i> Search</a>
                                    </div>
                                </div>
                            </form>
                            <div class="row">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">SL</th>
                                            <th scope="col">Item ID</th>
                                            <th scope="col">Item Name</th>
                                            <th scope="col">Description</th>
                                            <th scope="col">Qty</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td scope="row">1</td>
                                            <td>984651</td>
                                            <td>Lenovo</td>
                                            <td>Lenovo ITL ThinkPad 1015</td>
                                            <td><input type="number" name="qty" value="1" style="width:50px"> </td>
                                            <td>75,000.00</td>
                                            <td>75,000.00</td>
                                        </tr>
                                        <tr>
                                            <td scope="row">2</td>
                                            <td>986558</td>
                                            <td>HP DeskJet 110</td>
                                            <td></td>
                                            <td><input type="number" name="qty" value="1" style="width:50px"> </td>
                                            <td>8,500.00</td>
                                            <td>8,500.00</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-4" style="background: #e9e8e8">
                            <form id="salesall" action="{{route('admin-prod-store')}}" method="POST">
                                {{-- {{csrf_field()}} --}}
                                <div class="row">
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" placeholder="{{ __('Enter Customer Name or Mobile') }}" name="customer_id">
                                    </div>
                                    <div class="col-lg-5">
                                        <a class="add-btn" href="#" style="top: 5px; position:relative;"><i class="fas fa-search"></i> Add New</a>
                                    </div>
                                </div>
                            </form>
                            <form id="salesall" action="{{route('admin-prod-store')}}" method="POST">
                                {{-- {{csrf_field()}} --}}
                                <hr />
                                <div class="row">
                                    <div class="col-lg-8">Invoice Date</div>
                                    <div class="col-lg-4 text-right">{{date("Y-m-d")}}</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8">Subtotal</div>
                                    <div class="col-lg-4 text-right">0.00</div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-lg-8">Total Amount</div>
                                    <div class="col-lg-4 text-right">0.00</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8">Amount Due</div>
                                    <div class="col-lg-4 text-red text-right">0.00</div>
                                </div>
                            </form>
                            <form id="salesall" action="{{route('admin-prod-store')}}" method="POST">
                                {{-- {{csrf_field()}} --}}
                                <hr />
                                <div class="row">
                                    <div class="col-lg-8">Other Cost</div>
                                    <div class="col-lg-4 text-right"><input type="number" class="input-field" name="other_cost" value="0"></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8">Discount</div>
                                    <div class="col-lg-4 text-right"><input type="number" class="input-field" name="discount" value="0"></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8">Payment Type</div>
                                    <div class="col-lg-4 text-right">Cash</div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8">Amount Tendered</div>
                                    <div class="col-lg-4 text-right"><input type="number" class="input-field" name="amount" value="0"></div>
                                </div>
                            </form>
                            <form id="salesall" action="{{route('admin-prod-store')}}" method="POST">
                                {{-- {{csrf_field()}} --}}
                                <hr />
                                <div class="row">
                                    <div class="col-lg-6"><a class="add-btn" href="#" style="top: 5px; position:relative;"><i class="fas fa-search"></i> Cancel</a></div>
                                    <div class="col-lg-6 text-right"><a class="add-btn" href="#" style="top: 5px; position:relative;"><i class="fas fa-search"></i> Make Invoice</a></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('scripts')

<script src="{{asset('assets/admin/js/product.js')}}"></script>
@endsection