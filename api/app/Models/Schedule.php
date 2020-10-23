<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Schedule
 * 
 * @property int $id
 * @property int $user_id
 * @property int $employee_id
 * @property int $service_id
 * @property Carbon $schedulling_date
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 * 
 * @property Employee $employee
 * @property Service $service
 * @property User $user
 *
 * @package App\Models
 */
class Schedule extends Model
{
	protected $table = 'schedules';

	protected $casts = [
		'user_id' => 'int',
		'employee_id' => 'int',
		'service_id' => 'int'
	];

	protected $dates = [
		'schedulling_date'
	];

	protected $fillable = [
		'user_id',
		'employee_id',
		'service_id',
		'schedulling_date'
	];

	public function employee()
	{
		return $this->belongsTo(Employee::class);
	}

	public function service()
	{
		return $this->belongsTo(Service::class);
	}

	public function user()
	{
		return $this->belongsTo(User::class);
	}
}
