@extends('layouts/admin')
@section('content')


<!-- Unable to get this part running, getting an error regarding $publishers and the controller that I can't figure what exactly is causing it. -->


<div class="row">
    <div class="col">
        <h1 class="display-2">
            View all Publishers
        </h1>
    </div>
</div>
<div class="row">
    @foreach ($publisher as $publisher)
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
                        {{ $publisher -> name}}
                    </h5>
                    <p class="card-text">{{ $publisher -> country}}</p>
                    <span class="badge rounded-pill text-bg-dark">{{ $publisher -> status}}</span>
                    <span class="badge rounded-pill text-bg-secondary">{{ $game -> date_created}}</span>
                </div>

            </div>
        </div>
    @endforeach
</div>
@endsection