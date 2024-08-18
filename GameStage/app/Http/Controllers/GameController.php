<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Publisher;
use App\Http\Requests\StoreGameRequest;
use App\Http\Requests\UpdateGameRequest;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class GameController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('games.index', [
            'games' => Game::all()
        ]);
    }

    public function trashed()
    {
        return view('games.trashed', [
            'games' => Game::onlyTrashed() -> get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('games.create', [
            'publishers' => Publisher::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreGameRequest $request)
    {
        $game = Game::create($request->validated());
        $game -> publishers() -> attach($request -> publisher);

        Session::flash('success', 'Game added successfully');
        return redirect()->route('games.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Game $game)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Game $game)
    {
        return view('games.edit', compact('game'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateGameRequest $request, Game $game)
    {
        $game -> update($request -> validated());
    }

    /**
     * Remove the specified resource from storage.
     */

    public function trash($id)
    {
        Game::destroy($id);
        Session::flash('success', 'Game deleted sucessfully!');
        return redirect() -> route('games.index');
    }

    public function destroy($id)
    {
        $game = Game::withTrashed() -> where("id", $id) ->first();
        $game -> forceDelete();
        Session::flash('success', 'Game deleted sucessfully!');
        return redirect() -> route('games.index');
    }

    public function restore($id)
    {
        $game = Game::withTrashed() -> where("id", $id) ->first();
        $game->restore();
        Session::flash('success', 'Game restored sucessfully!');
        return redirect() -> route('games.trashed');
    }
}
