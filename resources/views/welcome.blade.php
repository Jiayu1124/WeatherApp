@extends('shared.layout')


@push('styles')
@endpush

@section('content')

<div class="main-content">

    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-xl-12">
                    <div class="card overflow-hidden">
                        <div class="bg-primary bg-soft">
                            <div class="row">
                                <div class="col-12">
                                    <div class="text-primary p-3 text-center">
                                        <h5 class="text-primary">Weather TIle</h5>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>

            </div>
            <!-- end row -->

            <div id="app">

                @component('component.tile_layout', ['tiles'=> $tiles])
                @endcomponent

                <div class="row">
                    <div class="card offset-4 col-4">
                        <div class="card-body text-left">
                            <create-tile></create-tile>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- container-fluid -->
    </div>
    <!-- End Page-content -->



</div>

@endsection

@push('page-script')
<script>
    $('.deletebtn').on('click', function(){
        alert('hi');
    });
</script>
@endpush