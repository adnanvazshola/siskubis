<?php

namespace App\Http\Controllers\Profile;

use DB;
use Auth;
use App\User;
use App\ProfilUser;
use App\Http\Controllers\Controller;
use App\Http\Requests\UpdateProfilRequest;

class ProfileUserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function index()
    {
        $data['data'] = User::where(['users.inkubator_id' => Auth::user()->inkubator_id, 'users.id' => 3])->join('role_user', ['users.id' => 'role_user.user_id'])->leftJoin('profil_user', ['users.id' => 'profil_user.user_id'])->select('users.id as uid', 'profil_user.*')->first();
        return view('profile.index', $data);
        // return $data;
    }

    public function indexMentor()
    {
        $data['data'] = User::where(['users.inkubator_id' => Auth::user()->inkubator_id, 'users.id' => auth()->user()->id])->join('role_user', ['users.id' => 'role_user.user_id'])->leftJoin('profil_user', ['users.id' => 'profil_user.user_id'])->select('users.id as uid', 'profil_user.*')->first();
        $dataProfil = ProfilUser::where('user_id', '=', auth()->user()->id);
        if ($dataProfil->count() == 0) {
            request()->session()->now('message', 'Tolong lengkapi data profil anda');
            request()->session()->now('alert-type', 'warning');
        }
        return view('profile.index', $data);
    }

    public function indexTenant()
    {
        $data['data'] = User::where(['users.inkubator_id' => Auth::user()->inkubator_id, 'users.id' => auth()->user()->id])->join('role_user', ['users.id' => 'role_user.user_id'])->leftJoin('profil_user', ['users.id' => 'profil_user.user_id'])->select('users.id as uid', 'profil_user.*')->first();
        return view('profile.index', $data);
    }


    public function update(UpdateProfilRequest $request)
    {
        $profil = ProfilUser::where('user_id', Auth::user()->id)->first();
        $tujuan_upload = 'img/mentor/profile';

        if (!$profil) {
            $file = $request->foto;
            $filename = time() . \Str::slug($request->get('nama')) . '.' . $file->getClientOriginalExtension();
            $file->move($tujuan_upload, $filename);
        } elseif ($profil && !$request->foto) {
            $filename = $profil->foto;
        } elseif ($profil && $request->file('foto')) {
            \Storage::delete($profil->foto);
            $file = $request->foto;
            $filename = time() . \Str::slug($request->get('nama')) . '.' . $file->getClientOriginalExtension();
            $file->move($tujuan_upload, $filename);
        }

        ProfilUser::updateOrCreate(
            ['user_id'  =>  Auth::user()->id],
            [
                'nama' =>  $request->nama,
                'jenkel' =>  $request->jenkel,
                'kontak' =>  $request->kontak,
                'alamat' =>  $request->alamat,
                'nik' =>  $request->nik,
                'foto' =>  $filename,
                'deskripsi' =>  $request->deskripsi,
                'status' =>  $request->status,
            ],
        );
        $notification = array(
            'message' => 'Data Profil Berhasil Diperbarui',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }
}
