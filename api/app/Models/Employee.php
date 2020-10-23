<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Employee
 * 
 * @property int $id
 * @property int $user_id
 * @property int $company_id
 * @property string $first_name
 * @property string $last_name
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 * 
 * @property Company $company
 * @property User $user
 * @property Collection|Schedule[] $schedules
 *
 * @package App\Models
 */
class Employee extends Model
{
	protected $table = 'employees';

	protected $casts = [
		'user_id' => 'int',
		'company_id' => 'int'
	];

	protected $fillable = [
		'user_id',
		'company_id',
		'first_name',
		'last_name'
	];

	public function company()
	{
		return $this->belongsTo(Company::class);
	}

	public function user()
	{
		return $this->belongsTo(User::class);
	}

	public function schedules()
	{
		return $this->hasMany(Schedule::class);
	}
}
