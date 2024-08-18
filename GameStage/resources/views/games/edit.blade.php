@extends('layouts/admin')
@section('content')
<div class="row">
    <div class="col">
        <h1 class="display-2">
            Update a Game
        </h1>
    </div>
</div>

<div class="row">
    <form method="POST" action="{{ route('games.update', $game -> id) }}">
        @method('PUT')

        @if ($errors -> any())
          <div class="alert alert-danger">
            <ul>
                @foreach ($errors -> all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
          </div>
        @endif

        {{ csrf_field() }}
        <div class="mb-3">
          <label for="game-name" class="form-label">Game Title</label>
          <input type="text" class="form-control" name="game-name" id="game-name" aria-describedby="game-title" value="{{ $game -> game_name }}">
        </div>
        <div class="mb-3">
            <label for="genre" class="form-label">Genre</label>
            <input type="text" class="form-control" name="genre" id="genre" aria-describedby="genre" value="{{ $game -> genre }}">
          </div>
          <div class="mb-3">
            <label for="release-date" class="form-label">Release Date</label>
            <input type="date" class="form-control" name="release-date" id="release-date"  aria-describedby="release_date" value="{{ $game -> release_date }}">
          </div>
          <div class="mb-3">
            <label for="summary" class="form-label">Game Summary</label>
            <input type="text" class="form-control" name="summary" id="summary"  aria-describedby="summary" value="{{ $game -> summary }}">
          </div>


          <!-- Unable to get this part running, getting an error regarding $publishers and the controller that I can't figure what exactly is causing it. -->

          <!-- <div class="mb-3">
            <label for="publishers" class="form-label">Publisher</label>
            <select name="publisher" id="publisher">
                @foreach ($publishers as $publisher)
                    <option value="{{ $publisher -> id }}">{{ $publisher -> name }}</option>
                @endforeach
            </select>
          </div> -->

        <button type="submit" class="btn btn-primary">Update Game</button>
      </form>
</div>

@endsection