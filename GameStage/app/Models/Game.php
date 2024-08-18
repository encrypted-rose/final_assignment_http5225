<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Game extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'game_name',
        'publisher_id',
        'genre',
        'release_date',
        'summary',
    ];

    public function publisher() {
        return $this->belongsTo(Publisher::class);
    }

}

// A author/publisher can have many games/books; a game/book can only have one publisher/author.

//publisher = author
//game = book

