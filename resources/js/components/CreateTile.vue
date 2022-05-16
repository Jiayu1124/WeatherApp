    <template>
        <form action="" @submit="createTile(tile)">
            <h5 class="card-header bg-transparent border-bottom text-uppercase">Create Weather Tile</h5>
            <div class="form-group" style="margin-top:15px;">
                 <label for="city">Insert Your City</label>
                <input type="text" placeholder="City Name" v-model="tile.city" class="form-control">
    
            </div>
            <div class="form-group" style="margin-top:15px;">
                <label for="refresh_interval" style="margin-top:30px;">Refresh Interval</label>
                  <select class="form-select" id="refresh_interval" name="refresh_interval" v-model="tile.refresh_interval">
                        <option v-for="option in options" v-bind:value="option.value">{{option.name}}</option>
                    </select>
            </div>
            <div class="form-group" style="margin-top:15px;">
                <button :disabled="!isValid" class="btn btn-block btn-primary" @click.prevent="createTile(tile)">Submit
                </button>
            </div>
        </form>
    </template>
    
    <script>
        export default {
            name: "CreateTile",
            data() {
                return {
                    tile: {
                        city: '',
                        refresh_interval: ''
                    },
                    options: [
                        { value:1, name:'Every Minute'}, 
                        { value:5, name:'Every 5 Minutes'}, 
                        { value:10, name:'Every 10 Minutes'}
                    ]
                }
            },
            methods: {
                createTile: function(tile) {
                    this.$store.dispatch('createTile', tile);
                    window.location.reload();
                }
            },
            computed: {
                isValid() {
                    return this.tile.city !== '' && this.tile.refresh_interval !== ''
                }
            }
        }
    </script>
    
    <style scoped>
    
    </style>