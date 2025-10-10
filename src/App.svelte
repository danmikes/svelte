<script lang="js">
	import Head from './component/Head.svelte';
	import Foot from './component/Foot.svelte';
	import Home from './page/Home.svelte';
	import Service from './page/Service.svelte';
	import Blog from './page/Blog.svelte';
	import Contact from './page/Contact.svelte';
	import { NavItem } from './constant/item';
	import { onMount } from 'svelte';

	const pages = {
		[NavItem.Home]: Home,
		[NavItem.Service]: Service,
		[NavItem.Blog]: Blog,
		[NavItem.Contact]: Contact
	};

	let currentPage = $state(NavItem.Home);
	const PageComponent = $derived(pages[currentPage]);

	$effect(() => {
		document.title = `Mikes Consult | ${currentPage}`;
	});

	onMount(() => {
		const update = () => {
			const hash = window.location.hash.slice(1);
			currentPage = Object.values(NavItem).includes(hash) ? hash : NavItem.Home;
		}
		update();
		window.addEventListener('hashchange', update);
		return () => window.removeEventListener('hashchange', update);
	});
</script>

<svelte:head>
	<title>Mikes Consult</title>
</svelte:head>

<Head />
<main>
	<PageComponent />
</main>
<Foot />
