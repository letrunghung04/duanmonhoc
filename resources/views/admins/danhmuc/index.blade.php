@extends ('layouts.admin')


@section('css')
@endsection

@section('title')
    {{ $title }}
@endsection

@section('content')
    <h1 class="h1 text-center mt-3 mb-3">{{ $title }}</h1>
    {{-- Hiển thị thông báo --}}
    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    <div class="container mt-3">
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Stt</th>
                    <th>Tên danh mục</th>
                    <th>Mô tả</th>
                    <th style="width: 1px;" class="text-nowrap">
                        <a style="width: 100%;" class="btn btn-success btn-sm" href="{{ route('danh_muc.create') }}">Thêm</a>
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($listDanhMuc as $index => $item)
                    <tr>
                        <td>{{ $index + 1 }}</td>
                        <td>{{ $item->ten_danh_muc }}</td>
                        <td>{{ $item->mo_ta }}</td>
                        <td style="width: 1px;" class="text-nowrap">
                            <a class="btn btn-warning btn-sm" href="{{route('danh_muc.edit', $item->id)}}">Sửa</a>
                            <form action="{{ route('danh_muc.destroy', $item->id) }}" method="POST"
                                class="d-inline" onsubmit="return confirm('Bạn có đồng ý xóa không?')">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger btn-sm">Xóa</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
