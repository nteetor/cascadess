
<h1 id="cascadess">cascadess</h1>
<h2 id="what-can-i-use-cascadess-for">What can I use cascadess for?</h2>
<h3 id="change-background-colors">Change background colors</h3>
<div class="sourceCode" id="cb1"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">div</span>(</span>
<span id="cb1-2"><a href="#cb1-2" aria-hidden="true" tabindex="-1"></a>  .style <span class="sc">%&gt;%</span></span>
<span id="cb1-3"><a href="#cb1-3" aria-hidden="true" tabindex="-1"></a>    <span class="fu">background_color</span>(<span class="fu">theme_primary</span>()) <span class="sc">%&gt;%</span></span>
<span id="cb1-4"><a href="#cb1-4" aria-hidden="true" tabindex="-1"></a>    <span class="fu">border_color</span>(<span class="fu">theme_primary</span>()) <span class="sc">%&gt;%</span></span>
<span id="cb1-5"><a href="#cb1-5" aria-hidden="true" tabindex="-1"></a>    <span class="fu">padding_vertical</span>(<span class="dv">3</span>)  <span class="do">## to give the box some height</span></span>
<span id="cb1-6"><a href="#cb1-6" aria-hidden="true" tabindex="-1"></a>)</span></code></pre></div>
<div class="bg-primary border-primary py-3"></div>
<h3 class="mt-4" id="vertically-stack-action-buttons">Vertically stack action buttons</h3>
<div class="sourceCode" id="cb2"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a><span class="fu">div</span>(</span>
<span id="cb2-2"><a href="#cb2-2" aria-hidden="true" tabindex="-1"></a>  .style <span class="sc">%&gt;%</span></span>
<span id="cb2-3"><a href="#cb2-3" aria-hidden="true" tabindex="-1"></a>    <span class="fu">flex_display</span>() <span class="sc">%&gt;%</span></span>
<span id="cb2-4"><a href="#cb2-4" aria-hidden="true" tabindex="-1"></a>    <span class="fu">flex_direction</span>(<span class="st">&quot;column&quot;</span>) <span class="sc">%&gt;%</span></span>
<span id="cb2-5"><a href="#cb2-5" aria-hidden="true" tabindex="-1"></a>    <span class="fu">gap_vertical</span>(<span class="dv">2</span>),</span>
<span id="cb2-6"><a href="#cb2-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 1&quot;</span>),</span>
<span id="cb2-7"><a href="#cb2-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 2&quot;</span>),</span>
<span id="cb2-8"><a href="#cb2-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 3&quot;</span>)</span>
<span id="cb2-9"><a href="#cb2-9" aria-hidden="true" tabindex="-1"></a>)</span></code></pre></div>
<div class="d-flex flex-column row-gap-2">
<button class="btn btn-secondary">Button 1</button>
<button class="btn btn-secondary">Button 2</button>
<button class="btn btn-secondary">Button 3</button>
</div>
<p>
</p>
<p>Or use the <code>stack_vertical()</code> shortcut function.</p>
<div class="sourceCode" id="cb3"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" tabindex="-1"></a><span class="fu">div</span>(</span>
<span id="cb3-2"><a href="#cb3-2" aria-hidden="true" tabindex="-1"></a>  .style <span class="sc">%&gt;%</span></span>
<span id="cb3-3"><a href="#cb3-3" aria-hidden="true" tabindex="-1"></a>    <span class="fu">stack_vertical</span>() <span class="sc">%&gt;%</span></span>
<span id="cb3-4"><a href="#cb3-4" aria-hidden="true" tabindex="-1"></a>    <span class="fu">gap_vertical</span>(<span class="dv">2</span>),</span>
<span id="cb3-5"><a href="#cb3-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 1&quot;</span>),</span>
<span id="cb3-6"><a href="#cb3-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 2&quot;</span>),</span>
<span id="cb3-7"><a href="#cb3-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 3&quot;</span>)</span>
<span id="cb3-8"><a href="#cb3-8" aria-hidden="true" tabindex="-1"></a>)</span></code></pre></div>
<div class="vstack row-gap-2">
<button class="btn btn-secondary">Button 1</button>
<button class="btn btn-secondary">Button 2</button>
<button class="btn btn-secondary">Button 3</button>
</div>
<h3 class="mt-4" id="adjust-to-the-screen-size">Adjust to the screen size</h3>
<p>On small screens this example will look like the column of buttons above. On
large screens though the buttons will display in a single row.</p>
<div class="sourceCode" id="cb4"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" tabindex="-1"></a><span class="fu">div</span>(</span>
<span id="cb4-2"><a href="#cb4-2" aria-hidden="true" tabindex="-1"></a>  .style <span class="sc">%&gt;%</span></span>
<span id="cb4-3"><a href="#cb4-3" aria-hidden="true" tabindex="-1"></a>    <span class="fu">flex_display</span>() <span class="sc">%&gt;%</span></span>
<span id="cb4-4"><a href="#cb4-4" aria-hidden="true" tabindex="-1"></a>    <span class="fu">flex_direction</span>(<span class="at">xs =</span> <span class="st">&quot;column&quot;</span>, <span class="at">md =</span> <span class="st">&quot;row&quot;</span>) <span class="sc">%&gt;%</span></span>
<span id="cb4-5"><a href="#cb4-5" aria-hidden="true" tabindex="-1"></a>    <span class="fu">gap_all</span>(<span class="dv">2</span>),</span>
<span id="cb4-6"><a href="#cb4-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 1&quot;</span>),</span>
<span id="cb4-7"><a href="#cb4-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 2&quot;</span>),</span>
<span id="cb4-8"><a href="#cb4-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">demo_button</span>(<span class="st">&quot;Button 3&quot;</span>)</span>
<span id="cb4-9"><a href="#cb4-9" aria-hidden="true" tabindex="-1"></a>)</span></code></pre></div>
<div class="d-flex flex-column flex-md-row gap-2">
<button class="btn btn-secondary">Button 1</button>
<button class="btn btn-secondary">Button 2</button>
<button class="btn btn-secondary">Button 3</button>
</div>
<h3 class="mt-4" id="combine-with-bslib">Combine with {bslib}</h3>
<div class="sourceCode" id="cb5"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb5-1"><a href="#cb5-1" aria-hidden="true" tabindex="-1"></a><span class="co"># install.packages(&quot;bslib&quot;)</span></span>
<span id="cb5-2"><a href="#cb5-2" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(bslib)</span></code></pre></div>
<div class="sourceCode" id="cb6"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb6-1"><a href="#cb6-1" aria-hidden="true" tabindex="-1"></a><span class="fu">card</span>(</span>
<span id="cb6-2"><a href="#cb6-2" aria-hidden="true" tabindex="-1"></a>  .style <span class="sc">%&gt;%</span></span>
<span id="cb6-3"><a href="#cb6-3" aria-hidden="true" tabindex="-1"></a>    <span class="fu">border_color</span>(<span class="fu">theme_info</span>()) <span class="sc">%&gt;%</span></span>
<span id="cb6-4"><a href="#cb6-4" aria-hidden="true" tabindex="-1"></a>    <span class="fu">text_color</span>(<span class="fu">theme_info</span>()),</span>
<span id="cb6-5"><a href="#cb6-5" aria-hidden="true" tabindex="-1"></a>  <span class="st">&quot;An info-styled card&quot;</span></span>
<span id="cb6-6"><a href="#cb6-6" aria-hidden="true" tabindex="-1"></a>)</span></code></pre></div>
<div class="card bslib-card bslib-mb-spacing border-info text-info html-fill-item html-fill-container" data-bslib-card-init data-require-bs-caller="card()" data-require-bs-version="5">
<div class="card-body bslib-gap-spacing html-fill-item html-fill-container" style="margin-top:auto;margin-bottom:auto;flex:1 1 auto;">An info-styled card</div>
<script data-bslib-card-init>bslib.Card.initializeAllCards();</script>
</div>
<div class="sourceCode" id="cb7"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb7-1"><a href="#cb7-1" aria-hidden="true" tabindex="-1"></a><span class="fu">card</span>(</span>
<span id="cb7-2"><a href="#cb7-2" aria-hidden="true" tabindex="-1"></a>  .style <span class="sc">%&gt;%</span></span>
<span id="cb7-3"><a href="#cb7-3" aria-hidden="true" tabindex="-1"></a>    <span class="fu">border_color</span>(<span class="st">&quot;dark&quot;</span>),</span>
<span id="cb7-4"><a href="#cb7-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">card_header</span>(</span>
<span id="cb7-5"><a href="#cb7-5" aria-hidden="true" tabindex="-1"></a>    .style <span class="sc">%&gt;%</span></span>
<span id="cb7-6"><a href="#cb7-6" aria-hidden="true" tabindex="-1"></a>      <span class="fu">background_color</span>(<span class="st">&quot;dark&quot;</span>),</span>
<span id="cb7-7"><a href="#cb7-7" aria-hidden="true" tabindex="-1"></a>    <span class="st">&quot;A header&quot;</span></span>
<span id="cb7-8"><a href="#cb7-8" aria-hidden="true" tabindex="-1"></a>  ),</span>
<span id="cb7-9"><a href="#cb7-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">card_body</span>(</span>
<span id="cb7-10"><a href="#cb7-10" aria-hidden="true" tabindex="-1"></a>    <span class="st">&quot;Some body text&quot;</span></span>
<span id="cb7-11"><a href="#cb7-11" aria-hidden="true" tabindex="-1"></a>  )</span>
<span id="cb7-12"><a href="#cb7-12" aria-hidden="true" tabindex="-1"></a>)</span></code></pre></div>
<div class="card bslib-card bslib-mb-spacing border-dark html-fill-item html-fill-container" data-bslib-card-init data-require-bs-caller="card()" data-require-bs-version="5">
<div class="card-header bg-dark">A header</div>
<div class="card-body bslib-gap-spacing html-fill-item html-fill-container" style="margin-top:auto;margin-bottom:auto;flex:1 1 auto;">Some body text</div>
<script data-bslib-card-init>bslib.Card.initializeAllCards();</script>
</div>
