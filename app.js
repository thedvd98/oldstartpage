var app = new Vue({
	el : '#app',
	data: {
		categorie: []
	},
	created() {
		fetch('indirizzi.json')
			.then(response => response.json())
			.then(json => {
				this.categorie = json.urls
			})
	}
	
})
