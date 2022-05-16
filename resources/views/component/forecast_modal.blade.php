<div class="modal fade" id="modal-{{$tile->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-xl">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Weather Forecast</h5>

                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                @foreach($tile->forecasts as $forecast)
                <div class="col tile">
                    <div class="card">
                        <div class="row">
                            <div class="col-xl-5">
                                <div class="text-center p-4 border-end">
                                    <div class=" avatar-sm mx-auto mb-3 mt-1">
                                        <span class="avatar-title rounded-circle bg-danger bg-soft text-danger font-size-16">
                                            <img src="{{ asset("assets/images/icon/$forecast->icon@2x.png") }}">
                                        </span>
                                    </div>
                                </div>
                                <div>
                                    <h5 class="text-center">{{$forecast->situation}}</h5>
                                    <p class="text-center">{{$forecast->description}}</p>
                                </div>
                            </div>

                            <div class="col-xl-7">
                                <div class="p-4 text-center text-xl-start">
                                    <div class="row">
                                        <div class="col-12">
                                            <div>
                                                <p class="text-muted mb-2 text-truncate">Date : </p>
                                                <h5>{{$forecast->time_format}}</h5>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div>
                                                <p class="text-muted mb-2 text-truncate">Temperature : </p>
                                                <h5>{{$forecast->temperature}} °C</h5>
                                            </div>
                                        </div>
                                    </div>
                                   
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>