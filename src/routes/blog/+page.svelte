<section class="blog-page">
  <section class="title">
    <h1>Blog</h1>
  </section>

  <div class="container">
    <!-- Coaching Articles -->
    <section class="blog-section">
      <h2>Coaching</h2>
      <div class="grid">
        <article class="card">
          <h3>Improving Team Cohesion</h3>
          <p>Strategies for building stronger team relationships and collaboration.</p>
        </article>
        <article class="card">
          <h3>Effective Communication</h3>
          <p>Techniques for clear and productive team communication.</p>
        </article>
      </div>
    </section>

    <!-- Codebase Articles -->
    <section class="blog-section">
      <h2>Codebase</h2>
      <div class="grid">
        <article class="card">
          <h3>Clean Code Principles</h3>
          <p>Best practices for maintainable and readable code.</p>
        </article>
        <article class="card">
          <h3>User Experience Design</h3>
          <p>Creating intuitive and engaging user interfaces.</p>
        </article>
      </div>
    </section>

    <!-- Management Articles -->
    <section class="blog-section">
      <h2>Management</h2>
      <div class="grid">
        <article class="card">
          <h3>Project Planning Strategies</h3>
          <p>Effective approaches to project planning and execution.</p>
        </article>
        <article class="card">
          <h3>Team Coordination</h3>
          <p>Methods for smooth team collaboration and task management.</p>
        </article>
      </div>
    </section>

    <!-- Workflow Articles -->
    <section class="blog-section">
      <h2>Workflow</h2>
      <div class="grid">
        <article class="card">
          <h3>Efficient Coding Workflows</h3>
          <p>Streamlining your development process for better productivity.</p>
        </article>
        <article class="card">
          <h3>Feedback Integration</h3>
          <p>Incorporating feedback effectively into your workflow.</p>
        </article>
      </div>
    </section>
  </div>
</section>

<style>
  .title {
    text-align: center;
  }

  .blog-section {
    margin-bottom: 3rem;
  }

  .blog-section h2 {
    margin-bottom: 1rem;
    color: white;
  }

  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 1rem;
  }

  .card {
    background: var(--card-background-color, #2a2a2a);
    border-radius: 8px;
    padding: 1rem;
    border: 1px solid var(--card-border-color, #444);
  }

  .card h3 {
    margin: 0 0 1rem 0;
    color: white;
  }

  .card p {
    margin: 0;
    color: #ccc;
    line-height: 1.5;
  }
</style>
