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
 * @property int $employee_id
 * @property string $name
 * @property float $cost
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 * 
 * @property Employee $employee
 * @property Collection|Schedule[] $schedules
 *
 * @package App\Models
 */
class Service extends Model
{
	protected $table = 'services';

	protected $casts = [
		'employee_id' => 'int',
		'cost' => 'float'
	];

	protected $fillable = [
		'employee_id',
		'name',
		'cost'
	];

	public function employee()
	{
		return $this->belongsTo(Employee::class);
	}

	public function schedules()
	{
		return $this->hasMany(Schedule::class);
	}
}
