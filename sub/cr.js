Vue.component('coin-price', {
	props: ["name"],
	data: function () {
		return {
			price: " - "
		}
	},
	created() {
		url='https://api.coingecko.com/api/v3/simple/price?ids='+this.name+'&vs_currencies=eur%2Cbtc'
		fetch(url)
				.then(response => response.json())
				.then(json => {
					this.price = json[this.name].eur
				})

	},
	template: '<tr class="coin"><td>{{ name }}</td>{{ price }} Eur<td></tr>'
})


var app = new Vue({
	el: '#crapp',
	data: {
		coins: [
			{ name: "bitcoin" },
			{ name: "ethereum" },
			{ name: "monero" }
		]
	},
	created() {

	}
})


