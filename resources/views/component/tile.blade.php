<div class="col tile" id="tile-{{$tile->id}}">
    <div class="card">
        <div class="row">
            <div class="col-xl-5">
                <div class="text-center p-4 border-end">
                    <div class=" avatar-sm mx-auto mb-3 mt-1">
                        <span class="avatar-title rounded-circle bg-danger bg-soft text-danger font-size-16">
                            <img src="{{ asset("assets/images/icon/$tile->icon@2x.png") }}">
                        </span>
                    </div>
                </div>
                <div>
                    <h5 class="text-center">{{$tile->situation}}</h5>
                    <p class="text-center">{{$tile->description}}</p>
                </div>
            </div>

            <div class="col-xl-7">
                <div class="p-4 text-center text-xl-start">
                    <div class="row">
                        <div class="col-12">
                            <div>
                                <p class="text-muted mb-2 text-truncate">Name : </p>
                                <h5>{{$tile->city}}, <small>{{$tile->state}} , {{$tile->country_code}}</small></h5>
                            </div>
                        </div>
                        <div class="col-12">
                            <div>
                                <p class="text-muted mb-2 text-truncate">Temperature : </p>
                                <h5>{{$tile->temperature}} °C</h5>
                            </div>
                        </div>
                    </div>
                    <div class="mt-4">

                        <a type="button" data-bs-toggle="modal" data-bs-target="#modal-{{$tile->id}}" class="text-decoration-underline text-reset mb-10">See Forecast<i class="mdi mdi-arrow-right"></i></a>
                        <br>
                        <br>
                        <a type="button" href="{{route('tile.delete', $tile->id)}}" class="btn btn-danger btn-rounded waves-effect waves-light">Delete</a>
                        <br>
                        <br>
                        <small class="text-right">Update interval : {{$tile->refresh_interval}} minute</small>
                        <br>
                        <small class="text-right">last update {{$tile->updated_at}}</small>
                        
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
