<script>
  const topics = [
    { value: '', label: 'topic' },
    { value: 'coaching', label: 'coaching' },
    { value: 'consulting', label: 'consulting' },
    { value: 'management', label: 'management' },
    { value: 'other', label: 'other' },
  ];

  let data = {
    name: '',
    email: '',
    topic: '',
    message: '',
  };
</script>

<section class="contact-page">
  <section class="title">
    <h1>Contact</h1>
  </section>

  <div class="container">
    <div class="grid">
      <div>
        <form action="https://formsubmit.co/00d30560e40ed766339958e949a092d7" method="POST">

          <input type="hidden" name="_topic" value="topic">
          <input type="hidden" name="_captcha" value="false">
          <input type="hidden" name="_template" value="table">

          <label for="name">Name</label>
          <input type="text" id="name" name="name" placeholder="FAMILY Name" bind:value={data.name} required>

          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="email" bind:value={data.email} required>

          <label for="topic">Topic</label>
          <select id="topic" name="topic" bind:value={data.topic} required>
            {#each topics as { value, label }}
              <option value={value}>{label}</option>
            {/each}
          </select>

          <label for="message">Message</label>
          <textarea name="message" rows="5" placeholder="message" bind:value={data.message} required></textarea>

          <button type="submit" class="primary">SEND</button>
        </form>
      </div>
    </div>
  </div>
</section>

<style>
  .title {
    text-align: center;
  }
</style>
