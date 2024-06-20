@extends('layouts.index')
@section('css')
    <style>
        .list-view {
            margin-top: 5rem;
        }

    </style>
@endsection
@section('content')

    <!-- end:fh5co-header -->
    <div class="fh5co-parallax" style="background-image: url({{ url('upload/slide/222.jpg') }});"
        data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div
                    class="col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
                    <div class="fh5co-intro fh5co-table-cell">
                        <h1 class="text-center">ĐẶT LỊCH XEM CĂN HỘ VỚI CHÚNG TÔI</h1>
                        <p>BĐS GALAXYNG hân hạnh được phục vụ bạn</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="list-view">
        <div class="wrap">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title text-center" style="margin-bottom: 0rem">
                            <h1>DANH SÁCH CĂN HỘ</h1>
                        </div>
                    </div>
                    <div id="availability" style="display: flex;
                                        justify-content: space-between;
                                        align-items: center width: 100%;
                                        background-color: white">
                        <div class="a-col">
                            Chọn loại căn hộ
                            <select name="" id="" class="form-control"
                                style="color: #db4118; font-weight: 16px; font-weight: 700;"
                                onchange="changeLoaiPhong(this.value)">
                                <option value="" disabled selected>Chọn loại căn hộ</option>
                                @foreach ($loaiphong as $lp)
                                    <option value="{{ $lp->id }}">{{ $lp->tenloaiphong }}</option>
                                @endforeach
                                <option value="all">Tất cả</option>
                            </select>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>

        <div id="fh5co-hotel-section" style="padding: 4rem">
            <div class="container">
                <div class="row" id="list-phong">
                    {{-- Hiển thị căn hộ theo slect loại căn hộ
                    --}}
                    @if (isset($phong))
                        @foreach ($phong as $item)
                            <div class="col-md-4">
                                <div class="hotel-content">
                                    <div class="hotel-grid"
                                        style="background-image: url({{ url('upload/phong/' . $item->hinhanh) }});">
                                        <div class="price"><small>GIÁ</small><span>{{ number_format($item->gia) }}
                                                VNĐ</span></div>
                                        <a class="book-now text-center"
                                            href="{{ route('cart.addCart', ['id' => $item->id]) }}"
                                            onclick="addCartBooking($item->id)" data-id="{{ $item->id }}"><i
                                                class="ti-calendar"></i> LIÊN HỆ</a>
                                    </div>
                                    <div class="desc">
                                        <h3><a>{{ $item->tenphong }}</a></h3>
                                        <h4><i>{{ $item->loaiphong->tenloaiphong }}</i></h4>
                                        <p>{{ $item->chuthich }}</p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')

    <script>
   

        function changeLoaiPhong(id) {
            $.ajax({
                url: 'ajax/booking/loaiphong/' + id,
                type: 'GET',
            }).done(function(response) {
                $("#list-phong").empty();
                $("#list-phong").html(response);
            })
        }

        function addCartBooking(id) {
            $.ajax({
                url: 'cart/add-cart-booking/' + id,
                type: 'GET',
            }).done(function(respone) {
                $("#content-booking").empty();
                $("#content-booking").html(response);
            })
        }

    </script>


@endsection
