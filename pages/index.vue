<template>
	<section class="main">
		<span v-text="'MAIN PAGE'"/>
		<span v-text="cur_load_simbol"/>
	</section>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
	data() {
		return {
			cur_load_simbol: '/',
			loading_simbols: ['--', '\\', '|', '/'],
			loading_counter: 0
		}
	},
	methods: {
		init() {
			setInterval(()=>{
				this.cur_load_simbol = this.loading_simbols[this.loading_counter++];
				if(this.loading_counter >= this.loading_simbols.length) {
					this.loading_counter = 0;
				}
			},500);
		}
	},
	beforeMount() {
		console.log('Started');
	},
	mounted() {
		this.init();
	}
})
</script>

<style>
.main {
	user-select: none;
}
</style>
