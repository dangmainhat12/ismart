@if(Session::has('messageRegister'))
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-delay="20000" style="position: absolute; top: 1rem; right: 1rem;">
    <div class="toast-header">

        <strong class="mr-auto">Bootstrap</strong>
        <small>11 mins ago</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="toast-body">
        Đăng ký bản tin thành công
    </div>
</div>
@endif
<div id="footer-wp">
    <div id="foot-body">
        <div class="wp-inner clearfix">
            <div class="block" id="info-company">
                <h3 class="title">MINTBOUTIQUE</h3>
                <p class="desc">MintBoutique luôn cung cấp luôn là sản phẩm chính hãng có thông tin rõ ràng, chính
                    sách ưu đãi cực lớn cho khách hàng có thẻ thành viên.</p>
                <div id="payment">
                    <div class="thumb">
                        <img src="{{ asset('public/users/images/img-foot.png') }}" alt="">
                    </div>
                </div>
            </div>
            <div class="block menu-ft" id="info-shop">
                <h3 class="title">Thông tin cửa hàng</h3>
                <ul class="list-item">
                    <li>
                        <p>235 Hoàng Quốc Việt - Bắc Từ Liêm - Hà Nội</p>
                    </li>
                    <li>
                        <p>0987.654.321 - 0989.989.989</p>
                    </li>
                    <li>
                        <p>dangmainhat12@gmail.com</p>
                    </li>
                </ul>
            </div>
            <div class="block menu-ft policy" id="info-shop">
                <h3 class="title">Chính sách mua hàng</h3>
                <ul class="list-item">
                    <li>
                        <a href="" title="">Quy định - chính sách</a>
                    </li>
                    <li>
                        <a href="" title="">Chính sách bảo hành - đổi trả</a>
                    </li>
                    <li>
                        <a href="" title="">Chính sách hội viện</a>
                    </li>
                    <li>
                        <a href="" title="">Giao hàng - lắp đặt</a>
                    </li>
                </ul>
            </div>
            <div class="block" id="newfeed">
                <h3 class="title">Bảng tin</h3>
                <p class="desc">Đăng ký với chung tôi để nhận được thông tin ưu đãi sớm nhất</p>
                <div id="form-reg">
                    <form method="POST" action="{{ url('/send-mail') }}">
                        <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                        <input type="email" name="email" id="email" placeholder="Nhập email tại đây">
                        <button type="submit" id="sm-reg">Đăng ký</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div id="foot-bot">
        <div class="wp-inner">
            <p id="copyright">© Bản quyền thuộcvề dangmainhat12@gmail.com | Php Master</p>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('.toast').toast('show')
        // var slider = $('#imageGallery').lightSlider({
        //     gallery: true,
        //     item: 1,
        //     loop: true,
        //     thumbItem: 6,
        //     slideMargin: 0,
        //     enableDrag: false,
        //     currentPagerPosition: 'left',
        //     onSliderLoad: function(el) {
        //         el.lightGallery({
        //             selector: '#imageGallery .lslide'
        //         });
        //     }
        // });
        // $('.desc .product-color').click(function() {
        //     var id = $(this).data('id')
        //     slider.goToSlide(id);
        // });
    });
</script>