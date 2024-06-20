@extends('layouts.index')

@section('css')
    <style>
        #img3 {
            width: 100%;
            height: 100%;
        }

        #content1 {
            display: flex;
            align-items: flex-start;
            justify: flex-start;
            padding-left: 5rem;
            padding-right: 5rem;
        }

    </style>
@endsection

@section('content')
    <div class="fh5co-parallax" style="background-image: url({{ url('upload/slide/111.jpg') }});"
        data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div
                    class="col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
                    <div class="fh5co-intro fh5co-table-cell">
                        <h1 class="text-center">LIÊN HỆ VỚI CHÚNG TÔI</h1>
                        <p>Khách sạn GALAXYNG hân hạnh được phục vụ bạn</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="fh5co-contact-section">
        <div class="row" id="content1">
            <div class="col-md-6">
                <div id="map" class="fh5co-map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.588366962893!2d105.82623291040271!3d21.009131388372538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac800f450807%3A0x419a49bcd94b693a!2zSOG7jWMgVmnhu4duIE5nw6JuIEjDoG5n!5e0!3m2!1svi!2s!4v1718790432548!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    {{-- <img id="img3" src="{{ url('upload/slide/maps.png') }}" />
                    --}}
                </div>
            </div>
            <div class="col-md-6">
                <div class="col-md-12">
                    <h3>ĐẾN VỚI CHÚNG TÔI</h3>
                    <p>Hãy cùng gia đình và bạn bè đến với Khách sạn GALAXYNG để trải nghiệm những dịch vụ sang trọng, đẳng cấp
                        nhất thể giới.</p>
                    <ul class="contact-info">
                        <li><i class="ti-map"></i>Số 12, Trùa Bộc, Đống Đa, Hà Nội, Việt Nam</li>
                        <li><i class="ti-mobile"></i>+84 888 88 66 66</li>
                        <li><i class="ti-envelope"></i><a href="#">contact.galaxynghotel@gmail.com</a></li>
                        <li><i class="ti-home"></i><a href="{{ route('website') }}">www.galaxynghotel.com</a></li>
                    </ul>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <form action="{{ route('submit.form') }}" method="Post">
                            @csrf
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" placeholder="Họ và tên">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="Địa chỉ Email">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="phone" name="phone" class="form-control"  
                                        placeholder="Số điện thoại">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="submit" value="LIÊN HỆ" class="btn btn-primary">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
