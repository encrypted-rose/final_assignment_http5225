<?php

namespace App\Http\Controllers;


use App\Http\Requests\StorePublisherRequest;
use App\Http\Requests\UpdatePublisherRequest;

use App\Models\Publisher;
use App\Models\Game;

class PublisherController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('publishers.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StorePublisherRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Publisher $publisher, $id)
    {
        $publisher = Publisher::find($id);
        $game = $publisher->games;
        return view ('publishers.show', ['publisher' => $publisher, 'games' => $game]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Publisher $publisher)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatePublisherRequest $request, Publisher $publisher)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Publisher $publisher)
    {
        //
    }
}
