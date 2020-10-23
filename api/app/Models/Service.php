<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Service
 * 
 * @property int $id
 * @property string $name
 * @property float $cost
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 * 
 * @property Collection|Schedule[] $schedules
 *
 * @package App\Models
 */
class Service extends Model
{
	protected $table = 'services';

	protected $casts = [
		'cost' => 'float'
	];

	protected $fillable = [
		'name',
		'cost'
	];

	public function schedules()
	{
		return $this->hasMany(Schedule::class);
	}
}
