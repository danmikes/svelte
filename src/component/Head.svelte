<script>
  import { NavItem, SocialItem, enumKey } from '../constant/item';
    import Home from '../page/Home.svelte';

    const navItems = [
		{
			name: enumKey(NavItem.Home),
			href: `#${NavItem.Home}`,
			icon: 'fas fa-home',
			color: 'yellow',
		},
		{
			name: enumKey(NavItem.Service),
			href: `#${NavItem.Service}`,
			icon: 'fas fa-cogs',
			color: 'cyan',
		},
		{
			name: enumKey(NavItem.Blog),
			href: `#${NavItem.Blog}`,
			icon: 'fas fa-feather-alt',
			color: 'cyan',
		},
		{
			name: enumKey(NavItem.Contact),
			href: `#${NavItem.Contact}`,
			icon: 'fas fa-envelope',
			color: 'magenta',
		}
	];

	const socialItems = [
		{
			label: enumKey(SocialItem.GitHub),
			href: 'https://github.com/danmikes',
			icon: 'fab fa-github',
			color: 'yellow',
		},
		{
			label: enumKey(SocialItem.LinkedIn),
			href: 'https://linkedin/in/dmikes',
			icon: 'fab fa-linkedin',
			color: 'cyan',
		},
		{
			label: enumKey(SocialItem.ResearchGate),
			href: 'https://researchgate.net/profile/Daniel-Mikes',
			icon: 'fab fa-researchgate',
			color: 'magenta',
		}
	];
</script>

<header>
	<nav class="container-fluid">
		<ul>
			<li>
				<i class="fas fa-circle-nodes mr-2" style="color: yellow;"></i>
				<a href="#home">
					<strong>Mikes Consult</strong>
				</a>
			</li>
		</ul>
		<ul>
			{#each navItems as { name, href, icon, color }}
				<li>
					<a href={href}>
						<i class={icon} style="color: {color};"></i>
						{name}
					</a>
				</li>
			{/each}
		</ul>
		<ul>
			{#each socialItems as { label, href, icon, color }}
				<li>
					<a class="icon" href={href} aria-label={label}>
						<i class={icon} style="color: {color};"></i>
					</a>
				</li>
			{/each}
		</ul>
	</nav>
</header>

<style>
	.icon:hover {
		transform: scale(1.5);
	}
</style>
