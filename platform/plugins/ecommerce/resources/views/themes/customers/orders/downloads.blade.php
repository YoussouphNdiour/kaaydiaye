@extends('plugins/ecommerce::themes.customers.master')

@section('content')

    <h2 class="customer-page-title">{{ __('Downloads') }}</h2>

    <div class="customer-list-order">
        <table class="table  table-hover">
            <thead>
                <tr class="success">
                    <th>{{ __('Product name') }}</th>
                    <th>{{ __('Created at') }}</th>
                    <th>{{ __('Times downloaded') }}</th>
                    <th>{{ __('Actions') }}</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($orderProducts as $orderProduct)
                    <tr>
                        <td>{{ $orderProduct->product_name }}</td>
                        <td>{{ $orderProduct->created_at->format('h:m d/m/Y') }}</td>
                        <td>{{ $orderProduct->times_downloaded }}</td>
                        <td>
                            <a class="btn btn-info btn-order-detail" href="{{ route('customer.downloads.product', $orderProduct->id) }}">{{ __('Download') }}</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <div class="text-center">
            {!! $orderProducts->links() !!}
        </div>

    </div>
@endsection
