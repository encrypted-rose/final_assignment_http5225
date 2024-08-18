<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Publisher extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'name',
        'date_created',
        'country',
        'status',
    ];

    public function games() {
        return $this->hasMany(Game::class);
    }

}

// A author/publisher can have many games/books; a game/book can only have one publisher/author.

//publisher = author
//game = book
