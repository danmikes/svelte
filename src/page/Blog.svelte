<script>
  const blogSections = [
    {
      category: 'Coaching',
      articles: [
        { title: 'Improving Team Cohesion', description: 'Strategies for building stronger team relationships and collaboration.' },
        { title: 'Effective Communication', description: 'Techniques for clear and productive team communication.' }
      ]
    },
    {
      category: 'Codebase',
      articles: [
        { title: 'Clean Code Principles', description: 'Best practices for maintainable and readable code.' },
        { title: 'User Experience Design', description: 'Creating intuitive and engaging user interfaces.' }
      ]
    },
    {
      category: 'Management',
      articles: [
        { title: 'Project Planning Strategies', description: 'Effective approaches to project planning and execution.' },
        { title: 'Team Coordination', description: 'Methods for smooth team collaboration and task management.' }
      ]
    },
    {
      category: 'Workflow',
      articles: [
        { title: 'Efficient Coding Workflows', description: 'Streamlining your development process for better productivity.' },
        { title: 'Feedback Integration', description: 'Incorporating feedback effectively into your workflow.' }
      ]
    }
  ];
</script>

<section class="blog-page">
  <header class="title">
    <h1>Blog</h1>
  </header>

  <div class="container">
    {#each blogSections as section}
      <section class="blog-section">
        <h2>{section.category}</h2>
        <div class="grid">
          {#each section.articles as article}
            <article class="card">
              <h3>{article.title}</h3>
              <p>{article.description}</p>
            </article>
          {/each}
        </div>
      </section>
    {/each}
  </div>
</section>

<style>
  .blog-page {
    padding: 2rem;
    max-width: 1200px;
    margin: 0 auto;
  }

  .title {
    text-align: center;
    margin-bottom: 2rem;
  }

  .title h1 {
    font-size: 2.5rem;
    margin: 0;
    color: white;
  }

  .blog-section {
    margin-bottom: 3rem;
  }

  .blog-section h2 {
    margin-bottom: 1rem;
    color: white;
    font-size: 1.5rem;
  }

  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 1.5rem;
  }

  .card {
    background: var(--card-background-color, #2a2a2a);
    border-radius: 8px;
    padding: 1.5rem;
    border: 1px solid var(--card-border-color, #444);
    transition: transform 0.2s ease, border-color 0.2s ease;
  }

  .card:hover {
    transform: translateY(-2px);
    border-color: #666;
  }

  .card h3 {
    margin: 0 0 1rem 0;
    color: white;
    font-size: 1.2rem;
  }

  .card p {
    margin: 0;
    color: #ccc;
    line-height: 1.5;
  }

  @media (max-width: 768px) {
    .blog-page {
      padding: 1rem;
    }

    .grid {
      grid-template-columns: 1fr;
    }
  }
</style>
