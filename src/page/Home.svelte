<script>
  const features = [
    {
      icon: 'fa-handshake',
      color: 'yellow',
      title: 'Cohesion',
      description: 'Close collaboration for mutual benefit'
    },
    {
      icon: 'fa-chart-bar',
      color: 'cyan',
      title: 'Analysis',
      description: 'Solid preparation for effective strategy'
    },
    {
      icon: 'fa-rocket',
      color: 'magenta',
      title: 'Speed',
      description: 'Swift implementation for optimum result'
    }
  ];
</script>

<section class="home-page">
  <header class="title">
    <h1>IT Consulting</h1>
  </header>

  <div class="features-grid">
    {#each features as feature}
      <article class="feature-card">
        <div class="feature-header">
          <i class="fas {feature.icon} fa-2x" style="color: {feature.color};"></i>
          <h3>{feature.title}</h3>
        </div>
        <p>{feature.description}</p>
      </article>
    {/each}
  </div>
</section>

<style>
  .home-page {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
  }

  .title {
    text-align: center;
    margin-bottom: 3rem;
  }

  .title h1 {
    font-size: 3rem;
    margin: 0;
    color: white;
  }

  .features-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 2rem;
  }

  .feature-card {
    background: var(--card-background-color, #2a2a2a);
    border-radius: 12px;
    padding: 2rem;
    border: 1px solid var(--card-border-color, #444);
    transition: all 0.3s ease;
  }

  .feature-card:hover {
    transform: translateY(-5px);
    border-color: #646cff;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
  }

  .feature-header {
    display: flex;
    align-items: center;
    gap: 1rem;
    margin-bottom: 1rem;
  }

  .feature-header h3 {
    margin: 0;
    font-size: 1.5rem;
    color: white;
  }

  .feature-card p {
    margin: 0;
    color: #ccc;
    line-height: 1.6;
    font-size: 1.1rem;
  }

  @media (max-width: 768px) {
    .home-page {
      padding: 1rem;
    }

    .title h1 {
      font-size: 2.5rem;
    }

    .features-grid {
      grid-template-columns: 1fr;
      gap: 1.5rem;
    }

    .feature-card {
      padding: 1.5rem;
    }
  }
</style>
