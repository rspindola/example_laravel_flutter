<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * @property integer $id
 * @property string $name
 * @property string $latitude
 * @property string $longitude
 * @property string $phone
 * @property string $social_link
 * @property string $created_at
 * @property string $updated_at
 * @property Employee[] $employees
 */
class Company extends Model
{
    use HasFactory;
    
    /**
     * The "type" of the auto-incrementing ID.
     * 
     * @var string
     */
    protected $keyType = 'integer';

    /**
     * @var array
     */
    protected $fillable = ['name', 'latitude', 'longitude', 'phone', 'social_link', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function employees()
    {
        return $this->hasMany('App\Employee');
    }
}
