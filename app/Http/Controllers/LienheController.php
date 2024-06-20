<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\KhachHang;
class LienheController extends Controller
{
    public function store(Request $request)
    {
        // Xác thực dữ liệu từ form
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|numeric',
        ]);

        // Tạo một instance mới của KhachHang và lưu vào cơ sở dữ liệu
        $khachHang = new KhachHang();
        $khachHang->ten_kh = $validatedData['name'];
        $khachHang->email = $validatedData['email'];
        $khachHang->sdt = $validatedData['phone'];
        $khachHang->save();

        // Chuyển hướng hoặc trả về một phản hồi
        return redirect()->back()->with('success', 'Thông tin đã được lưu thành công!');
    }
}
