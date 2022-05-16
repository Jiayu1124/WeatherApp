<div class="flex-box">
    @forelse($tiles as $tile)

    @component('component.tile', ['tile'=> $tile])
    @endcomponent

    @component('component.forecast_modal', ['tile'=> $tile])
    @endcomponent

    @empty
    <p>There are no weather tile yet.</p>
    @endforelse

</div>