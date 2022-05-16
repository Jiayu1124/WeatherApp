let mutations = {
    CREATE_TILE(state, tile) {
        state.tiles.unshift(tile)
    },
    FETCH_TILES(state, tiles) {
        return state.tiles = tiles
    },
    DELETE_TILE(state, tile) {
        let index = state.tiles.findIndex(item => item.id === tile.id)
        state.tiles.splice(index, 1)
    }
    
}
export default mutations