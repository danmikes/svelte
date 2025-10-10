<section class="service-page">
  <section class="title">
    <h1>IT Consulting</h1>
  </section>

  <div class="container">
    <div class="grid">
      <div class="card">
        <div class="card-head">
          <i class="fas fa-users fa-2x" style="color: green;"></i>
          <h3>Coaching</h3>
        </div>
        <ul>
          <li>Cohesion</li>
          <li>Communication</li>
          <li>Conflict</li>
          <li>Instruction</li>
        </ul>
      </div>

      <div class="card">
        <div class="card-head">
          <i class="fas fa-file-code fa-2x" style="color: magenta;"></i>
          <h3>Codebase</h3>
        </div>
        <ul>
          <li>Design</li>
          <li>Functionality</li>
          <li>Structure</li>
          <li>User Experience</li>
        </ul>
      </div>

      <div class="card">
        <div class="card-head">
          <i class="fas fa-cogs fa-2x" style="color: cyan;"></i>
          <h3>Management</h3>
        </div>
        <ul>
          <li>Coordination</li>
          <li>Project Planning</li>
          <li>Project Management</li>
          <li>Technical Advice</li>
        </ul>
      </div>

      <div class="card">
        <div class="card-head">
          <i class="fas fa-route fa-2x" style="color: yellow;"></i>
          <h3>Workflow</h3>
        </div>
        <ul>
          <li>Coding</li>
          <li>Feedback</li>
          <li>Requirements</li>
          <li>Support</li>
        </ul>
      </div>
    </div>
  </div>
</section>

<style>
  .title {
    text-align: center;
  }

  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
    margin-top: 2rem;
  }

  .card {
    background: var(--card-background-color, #2a2a2a);
    border-radius: 8px;
    padding: 1rem;
    border: 1px solid var(--card-border-color, #444);
  }

  .card-head {
    display: flex;
    align-items: center;
    gap: 1rem;
    margin-bottom: 1rem;
  }

  .card-head h3 {
    margin: 1rem 0;
  }

  .card ul {
    text-align: left;
  }
</style>
