<div class="row">
            <div class="col-md-12">
                <div class="section text-center">
                    <h4>DANH SÁCH CĂN HỘ ĐÃ ĐẶT</h4>
                </div>
            </div>
        </div>
<div class="container2">
    <div class="table">
        <table class="table header-fixed">
            <thead>
                <tr>
                    <th scope="col">Hình ảnh</th>
                    <th scope="col">Tên căn hộ</th>
                    <th scope="col">Loại căn hộ</th>
                    <th scope="col">Giá</th>
                    
                </tr>
            </thead>
            @if (Session::has('Cart') != null)
                <tbody>
                    @foreach (Session::get('Cart')->phong as $item)
                        <tr>
                            <td> <img src="{{ url('/upload/phong/' . $item['phongInfo']->hinhanh) }}" width="150px"
                                    height="100px" alt="Hình ảnh căn hộ"></td>
                            <td> {{ $item['phongInfo']->tenphong }}</td>
                            <td> {{ $item['phongInfo']->loaiphong->tenloaiphong }}</td>
                            

                    <td>{{ number_format($item['phongInfo']->gia) }}</td>
                    <td class="delete"><i class="fa fa-remove"
                            onclick="deleteItemCart({{ $item['phongInfo']->id }})"
                            style="font-size: 30px; cursor: pointer; color: #FF5722;"></i></td>
                    </tr>
            @endforeach
            </tbody>
        @else
            <tbody>
                <tr>
                    <th colspan="7">
                        Bạn chưa đặt căn hộ nào!
                    </th>
                </tr>
            </tbody>
            @endif
        </table>
    </div>
    <div class="total" id="list-cart">
        <ul class="list-group">
            <li class="list-group-item active">THANH TOÁN</li>
            <li class="list-group-item">Tổng tiền:
                @if (isset(Session::get('Cart')->tongGia))
                    {{ number_format(Session::get('Cart')->tongGia) }} VNĐ
                @else
                    0 VNĐ
                @endif
            </li>
            <li>
                <a href="{{route('payment')}}" class="btn btn-primary btn-lg btn-block">CHECK OUT</a>
            </li>
        </ul>
    </div>

</div>
