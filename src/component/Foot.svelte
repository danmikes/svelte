<script>
  const contacts = {
    phone: {
      icon: 'fa-phone',
      color: 'yellow',
      href: 'https://wa.me/+31647443505?text=Hello%20Mikes%20Consult%2C%20I%20would%20like%20to%20get%20in%20touch',
      text: '[NL]6.4744.3505'
    },
    email: {
      icon: 'fa-envelope',
      color: 'cyan',
      href: 'mailto:max8@post.cz',
      text: 'max8[@]post[.]cz'
    },
    location: {
      icon: 'fa-location-dot',
      color: 'magenta',
      href: 'https://maps.google.com/?q=2135RB+Hoofddorp+Netherlands',
      text: '2135RB Hoofddorp [NL]',
      target: '_blank'
    }
  };
</script>

<footer>
  <p class="foot-contact">
    {#each Object.entries(contacts) as [key, contact]}
      <span class="contact-item">
        <i class="fas {contact.icon} foot-icon" style="color: {contact.color};"></i>
        <a href={contact.href} target={contact.target || ''} class={key}>
          {contact.text}
        </a>
      </span>
    {/each}
  </p>
  <p class="foot-brand">Mikes Consult</p>
</footer>

<style>
  footer {
    text-align: center;
    padding: 1rem 0;
  }

  .foot-contact {
    margin-bottom: 1rem;
  }

  .contact-item {
    display: inline-block;
    margin: 0 0.5rem;
  }

  .foot-icon {
    margin-right: 0.1rem;
  }

  a {
    text-decoration: none;
    color: white;
    transition: color 0.2s ease;
  }

  .phone:hover { color: #aa0; }
  .email:hover { color: darkcyan; }
  .location:hover { color: darkmagenta; }
</style>
