@extends('layouts/admin')
@section('content')

<div class="row">
    <div class="col">
        <h1 class="display-2">
            View all Games
        </h1>
    </div>
</div>
<div class="row">
    @foreach ($games as $game)
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
                        {{ $game -> game_name}}
                    </h5>
                    <p class="card-text">{{ $game -> summary}}</p>
                    <span class="badge rounded-pill text-bg-dark">{{ $game -> genre}}</span>
                    <span class="badge rounded-pill text-bg-secondary">{{ $game -> release_date}}</span>
                </div>
                <div class="card-footer">
                    <a href="{{ route('games.edit', $game -> id) }}" class="btn btn-primary">Edit</a>
                    <a href="{{ route('games.trash', $game -> id) }}" class="btn btn-danger">Delete</a>
                </div>

            </div>
        </div>
    @endforeach
</div>
@endsection