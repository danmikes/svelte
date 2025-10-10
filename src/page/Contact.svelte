<script>
  const topics = [
    { value: '', label: 'Select topic' },
    { value: 'coaching', label: 'Coaching' },
    { value: 'consulting', label: 'Consulting' },
    { value: 'management', label: 'Management' },
    { value: 'other', label: 'Other' }
  ];

  let formData = {
    name: '',
    email: '',
    topic: '',
    message: ''
  };
</script>

<section class="contact-page">
  <header class="title">
    <h1>Contact</h1>
  </header>

  <form
    action="https://formsubmit.co/00d30560e40ed766339958e949a092d7"
    method="POST"
    class="form"
  >
    <input type="hidden" name="_topic" value="New Contact Form Submission">
    <input type="hidden" name="_captcha" value="false">
    <input type="hidden" name="_template" value="table">

    <div class="form-grid">
      <div class="form-group">
        <label for="name">Name</label>
        <input
          type="text"
          id="name"
          name="name"
          placeholder="Your name"
          bind:value={formData.name}
          required
        >
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input
          type="email"
          id="email"
          name="email"
          placeholder="your.email@example.com"
          bind:value={formData.email}
          required
        >
      </div>

      <div class="form-group">
        <label for="topic">Topic</label>
        <select id="topic" name="topic" bind:value={formData.topic} required>
          {#each topics as { value, label }}
            <option value={value}>{label}</option>
          {/each}
        </select>
      </div>

      <div class="form-group full-width">
        <label for="message">Message</label>
        <textarea
          id="message"
          name="message"
          rows="5"
          placeholder="Your message..."
          bind:value={formData.message}
          required
        ></textarea>
      </div>
    </div>

    <button type="submit" class="btn-primary">Send Message</button>
  </form>
</section>

<style>
  .contact-page {
    max-width: 600px;
    margin: 0 auto;
    padding: 2rem;
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

  .form {
    background: var(--card-background-color, #2a2a2a);
    border-radius: 8px;
    padding: 2rem;
    border: 1px solid var(--card-border-color, #444);
  }

  .form-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1rem;
    margin-bottom: 1.5rem;
  }

  .form-group {
    display: flex;
    flex-direction: column;
  }

  .full-width {
    grid-column: 1 / -1;
  }

  label {
    margin-bottom: 0.5rem;
    color: white;
    font-weight: 500;
  }

  input, select, textarea {
    padding: 0.75rem;
    border: 1px solid #444;
    border-radius: 4px;
    background: #1a1a1a;
    color: white;
    font-size: 1rem;
  }

  input:focus, select:focus, textarea:focus {
    outline: none;
    border-color: #646cff;
  }

  .btn-primary {
    width: 100%;
    padding: 0.75rem;
    background: #646cff;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 1rem;
    font-weight: 600;
    cursor: pointer;
    transition: background-color 0.2s ease;
  }

  .btn-primary:hover {
    background: #535bf2;
  }

  @media (max-width: 768px) {
    .contact-page {
      padding: 1rem;
    }

    .form {
      padding: 1.5rem;
    }

    .form-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
