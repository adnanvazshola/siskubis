@extends('layouts.app')

@section('content')
<div class="main-content pt-4">
    <div class="breadcrumb">
        <h1>Disposisi</h1>
        <ul>
            <li><a href="href">Form</a></li>
            <li>Persuratan</li>
        </ul>
    </div>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card card-primary">
            <!-- /.card-header -->
            <div class="card-body">
              <div id="exaple2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                <div class="row">
                  <div class="col-sm-12 col-md-6"></div>
                  <div class="col-sm-12 col-md-6"></div>
                </div>
                <div class="row">
                <div class="col-sm-12">
                  <form action="/inkubator/disposisi/{{ $surat->id}}" method="post"  enctype="multipart/form-data">
                    @method('patch')
                    {{ csrf_field() }}
                    @include('layouts.alert', ['$errors' => $errors])
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="nama">Judul</label>
                          <p>{{ $surat->title }}</p>
                          <input type="hidden" id="custId" name="custId" value="{{ $surat->title }}">
                        </div>
                      </div>
                      <div class="col-sm-6">
                      <div class="form-group">
                          <label for="picker1">Disposisi Kepada</label>
                          <select class="form-control" name="kepada" >
                          @foreach ($user as $u)
                            <option value="{{ $u->id }}" {{ ($surat->kepada == $u->id) ? 'selected' : null }}>{{ $u->email}}</option>
                            @endforeach
                          </select>
                          </div>
                      </div>

                        <!-- <div class="col-sm-3">
                        <div class="form-group">
                          <label for="file">File</label>
                          <div class="custom-file">
                          <input type="" class="custom-file-input" id="exampleInputFile" name="file" required="required">
                            <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                          </div> -->
                        </div>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button class="btn btn-success" type="submit">Kirim</button>
                      <button type="reset" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Reset</button>
                    </div>
                  </form>
                </div>
                </div>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->


          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      </div>
      <!-- /.row -->
    </section>
@endsection


@section('css')
    <link rel="stylesheet" href="{{asset('theme/css/plugins/datatables.min.css')}}" />
@endsection
@section('js')
	<script src="{{asset('theme/js/plugins/datatables.min.js')}}"></script>
    <script src="{{asset('theme/js/scripts/contact-list-table.min.js')}}"></script>
    <script src="{{asset('theme/js/scripts/datatables.script.min.js')}}"></script>
	<script src="{{asset('theme/js/plugins/datatables.min.js')}}"></script>
    <script src="{{asset('theme/js/scripts/tooltip.script.min.js')}}"></script>
    <script>
        $('#masuk').DataTable({
			responsive:true,
		});
		
		$('#keluar').DataTable({
			responsive:true,
		});
    </script>
    <script>
        $("#file").change(function(){
        $("#custom-file-label").text(this.files[0].name);
      }); 
    </script>
@endsection