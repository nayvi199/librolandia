<?php

namespace App\Http\Controllers\Auth;

use App\Repositories\Users;
use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/';
    protected $users;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(Users $users)
    {
    	$this->users = $users;
        $this->middleware('guest');
    }

    public function store(UserRequest $user)
    {
		$user = $user->all();
		
        $user = $this->users->save($user);

		
        return redirect('/login')->back()->with('message','Gracias por Registrase! Inicia Sesion.');
    }

    
}
