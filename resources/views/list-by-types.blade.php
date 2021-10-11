@extends('layouts.master')

@section('content')

  <main id="main">

    <div class="container mt-5 mb-5">
      <div class="row">
        <div class="col-md-4">
          <div class="card">
            <img class="card-img-top" src="{{ $type->image ? asset('storage/'.$type->image) : asset('images/site-banner.jpg') }}" alt="Card image cap">
          </div>
        </div>
        <div class="col-md-8">
          <div class="card" style="border: 0px">
            <div class="card-body">
              <h3 class="card-title">{{ $type->title }}</h3>
              {{-- <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6> --}}
              <p class="card-text">{{ $type->description }}</p>
              <p class="card-text text-right text-muted" style="text-align: right">
                <small>Última actualización hace 5 días</small>
              </p>
            </div>
          </div>
        </div>
      </div>

    
      <div class="row mt-5">
        <div class="col-md-12">
          <div class="row">
            <div class="col-md-6"></div>
            <div class="col-md-6">
              <div class="input-group mb-5">
                <input type="text" class="form-control" placeholder="Realizar busqueda..." aria-label="Realizar busqueda..." aria-describedby="button-addon2">
                <button class="btn btn-outline-success" type="button" id="button-addon2"> <i class="bi bi-search"></i> Buscar</button>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-success">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-success">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 text-right mt-5">
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-end">
              <li class="page-item"><a class="page-link" href="#">Anterior</a></li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">Siguiente</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>

  </main><!-- End #main -->
@endsection

@section('script')
  <script>
    $(document).ready(function(){
        
    });
  </script>
@endsection