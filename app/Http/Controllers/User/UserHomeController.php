<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\CategoryPost;
use App\Models\CategoryProduct;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Page;
use App\Models\Post;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductImage;
use App\Models\Slider;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserHomeController extends Controller {
    //
    function __construct() {
    }
    function index() {

        $sliders = Slider::where('status', 1)->latest()->get();
        $products = Product::where('featured', 1)->where('status', 1)->latest()->take(8)->get();

        //Product Tui xach
        $catChildIphone = CategoryProduct::where('parent_id', function ($query) {
            $query->select('id')->from('category_products')->where('slug', '=', 'tui-xach');
        })->get();
        // $catIphoneIds = [];
        foreach ($catChildIphone as $item) {
            $catIphoneIds[] = $item->id;
        }
        $productIphone = Product::whereIn('category_product_id', $catIphoneIds)->where('status', 1)->latest()->take(8)->get();

        //Product Giay dep
   
        $catChildLaptop = CategoryProduct::where('parent_id', function ($query) {
            $query->select('id')->from('category_products')->where('slug', '=', 'giay-dep');
        })->get();
        // $catLaptopIds = [];
        foreach ($catChildLaptop as $item) {
            $catLaptopIds[] = $item->id;
        }
        $productLaptop = Product::whereIn('category_product_id', $catLaptopIds)->where('status', 1)->latest()->take(8)->get();

        return view('user.index', compact('sliders', 'products', 'productIphone', 'productLaptop'));
    }

    function page($id) {
        $page = Page::find($id);
        return view('user.page', compact('page'));
    }
}
