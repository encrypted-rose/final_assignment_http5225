@extends('layouts/admin')
@section('content')

<div class="row">
    <div class="col">
        <h1 class="display-2">
            Deleted Games
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
                    <a href="{{ route('games.restore', $game -> id) }}" class="card-link">Restore</a>
                    <form action="{{ route('games.destroy', [$game -> id]) }}" method="POST">
                        {{ csrf_field() }}
                        {{ method_field('DELETE') }}
                        <button type="submit">Delete</button>
                    </form>

                    <!-- Restore is not working, I don't understand what may be causing the error -->

                </div>

            </div>
        </div>
    @endforeach
</div>
@endsection