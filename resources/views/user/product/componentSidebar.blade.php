<div class="sidebar fl-left">
    {{-- categoryProduct --}}
    @include('user.components.categoryProduct')
    {{-- endCategoryProduct --}}
    {{-- filter product --}}
    <div class="section" id="filter-product-wp">
        <div class="section-head">
            <h3 class="section-title">Bộ lọc</h3>
        </div>
        <div class="section-detail">
            <form>
                <table>
                    <thead>
                        <tr>
                            <td colspan="2">Phân loại</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($catFilter as $item)
                            <tr>
                                <td><input type="checkbox" name="r-brand[]" value="{{ $item->slug }}"
                                        id="{{ $item->id }}" @if (is_array($checkBrand)) {{ in_array($item->slug, $checkBrand) ? 'checked' : '' }} @endif
                                        {{ $item->slug == $catCheck ? 'checked' : '' }} />
                                </td>
                                <td><label for="{{ $item->id }}">{{ $item->name }}</label></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <table>
                    <thead>
                        <tr>
                            <td colspan="2">Giá</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="radio" {{ $checkPrice == 'duoi-2-tram' ? 'checked' : '' }}
                                    name="r-price" value="duoi-2-tram" id="-200000"></td>
                            <td><label for="-200000">Dưới 200.000đ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" {{ $checkPrice == 'tu-2-3-tram' ? 'checked' : '' }}
                                    name="r-price" value="tu-2-3-tram" id="200000-300000"></td>
                            <td><label for="200000-300000">200.000đ - 300.000đ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" {{ $checkPrice == 'tu-3-4-tram' ? 'checked' : '' }}
                                    name="r-price" value="tu-3-4-tram" id="300000-400000"></td>
                            <td><label for="300000-400000">300.000đ - 400.000đ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" {{ $checkPrice == 'tu-4-5-tram' ? 'checked' : '' }}
                                    name="r-price" value="tu-4-5-tram" id="400000-500000">
                            </td>
                            <td><label for="400000-500000">400.000đ - 500.000đ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" {{ $checkPrice == 'tren-5-tram' ? 'checked' : '' }}
                                    name="r-price" value="tren-5-tram" id="+500000"></td>
                            <td><label for="+500000">Trên 500.000đ</label></td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-center">
                    <input type="submit" class="btn btn-outline-primary" value="Xem kết quả">
                </div>
            </form>
        </div>
    </div>
    {{-- end --}}
    <div class="section" id="banner-wp">
        <div class="section-detail">
            <a href="{{ route('user.index') }}" title="" class="thumb">
                <img src="{{ asset('public/users/images/banner.png') }}" alt="">
            </a>
        </div>
    </div>

</div>
