let actions = {
    createTile({commit}, tile) {
        axios.post('api/tiles', tile)
            .then(res => {
                if(res.status == 'error'){
                    this.errors = response.errors;
                }else{
                    commit('CREATE_TILE', res.data)
                }
            }).catch(err => {
            console.log(err)
        })
      
    },
    fetchTiles({commit}) {
        axios.get('api/tiles')
            .then(res => {
                commit('FETCH_TILES', res.data)
            }).catch(err => {
            console.log(err)
        })
    },
    deleteTile({commit}, tile) {
        axios.delete('api/tiles/${tile.id}')
            .then(res => {
                if (res.data === 'ok')
                    commit('DELETE_TILE', tile)
            }).catch(err => {
            console.log(err)
        })
    }
}

export default actions