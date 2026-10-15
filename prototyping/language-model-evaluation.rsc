0:{"page:/prototyping/language-model-evaluation":"$L1","layout:/":"$L2","route:/prototyping/language-model-evaluation":"$L3","__route":"route:/prototyping/language-model-evaluation","__interceptionContext":null,"__layoutIds":["layout:/"],"__rootLayout":"/","__bfcacheSegmentIdentities":{"layout:/":"[\"layout\",\"layout:/\",\"root-boundary:/\",\"\"]","page:/prototyping/language-model-evaluation":"[\"page\",\"page:/prototyping/language-model-evaluation\",\"root-boundary:/\",\"[\\\"prototyping\\\",\\\"language-model-evaluation\\\"]\"]"},"__srcPage":["prototyping","language-model-evaluation","page"],"__layoutFlags":{"layout:/":"s"},"__artifactCompatibility":{"schemaVersion":1,"graphVersion":"app-route-graph:478ec700279885dc","deploymentVersion":"b991586a-4ce4-4785-a6d8-8b7b2024f2c4","appElementsSchemaVersion":1,"rscPayloadSchemaVersion":1,"rootBoundaryId":"/","renderEpoch":null}}
4:I["9da2d7181d4a",[],"default",1]
5:I["8c0f216c4604",[],"Children",1]
6:I["593f344dc510",[],"GlobalErrorBoundary",1]
7:I["0b874ad30386",[],"default",1]
8:I["593f344dc510",[],"ErrorBoundary",1]
9:I["15c18cfaeeff",[],"LayoutSegmentProvider",1]
a:I["8c0f216c4604",[],"Slot",1]
b:I["593f344dc510",[],"NotFoundBoundary",1]
c:I["9276801271d6",[],"AppRouterScrollTarget",1]
d:I["593f344dc510",[],"RedirectBoundary",1]
:HL["/_next/static/css/index.QZCwXgXa.css","style"     ]
2:[[["$","link","css:/_next/static/css/index.QZCwXgXa.css",{"rel":"stylesheet","precedence":"vite-rsc/importer-resources","href":"/_next/static/css/index.QZCwXgXa.css","data-rsc-css-href":"/_next/static/css/index.QZCwXgXa.css"}],"$undefined"],["$","html",null,{"lang":"en","children":["$","body",null,{"children":[["$","a",null,{"href":"#content","className":"skip","children":"Skip to content"}],["$","div",null,{"className":"site","children":[["$","header",null,{"className":"header","children":[["$","a",null,{"href":"/","className":"name","children":"Manny Akintayo"}],["$","$L4",null,{}]]}],["$","main",null,{"id":"content","children":["$","$L5",null,{}]}],["$","footer",null,{"className":"footer","children":["$","p",null,{"children":["© ",2026," ","Manny Akintayo",[" · ",["$","a",null,{"href":"https://getcbt.substack.com","children":"Substack"}]],[" · ",["$","a",null,{"href":"https://github.com/oea101","children":"GitHub"}]]]}]}]]}]]}]}]]
3:[[["$","meta",null,{"charSet":"utf-8"}],[["$","title","0",{"children":"Building a language model evaluation workflow—and a course around it · Manny Akintayo"}],["$","meta","1",{"name":"description","content":"A hands-on evaluation workflow and course for AI product managers, with a custom support task, diagnostic metrics, and reproducible experiments."}],["$","link","2",{"data-vinext-streamed-icon":"$undefined","rel":"icon","href":"/favicon.svg","type":"$undefined","sizes":"$undefined","color":"$undefined","media":"$undefined","fetchPriority":"$undefined"}]],[["$","meta","0",{"name":"viewport","content":"width=device-width, initial-scale=1"}]]],["$","$L6",null,{"fallback":"$7","children":["$","$L8",null,{"fallback":"$7","children":["$","$L9",null,{"providerId":"layout:/","segmentMap":{"children":["prototyping","language-model-evaluation"]},"children":["$","$La",null,{"id":"layout:/","parallelSlots":"$undefined","children":["$","$Lb",null,{"resetKey":"prototyping","fallback":[["$","title",null,{"children":"404: This page could not be found."}],["$","div",null,{"style":{"fontFamily":"system-ui,\"Segoe UI\",Roboto,Helvetica,Arial,sans-serif,\"Apple Color Emoji\",\"Segoe UI Emoji\"","height":"100vh","textAlign":"center","display":"flex","flexDirection":"column","alignItems":"center","justifyContent":"center"},"children":["$","div",null,{"children":[["$","style",null,{"dangerouslySetInnerHTML":{"__html":"body{color:#000;background:#fff;margin:0}.next-error-h1{border-right:1px solid rgba(0,0,0,.3)}@media (prefers-color-scheme:dark){body{color:#fff;background:#000}.next-error-h1{border-right:1px solid rgba(255,255,255,.3)}}"}}],["$","h1",null,{"className":"next-error-h1","style":{"display":"inline-block","margin":"0 20px 0 0","padding":"0 23px 0 0","fontSize":24,"fontWeight":500,"verticalAlign":"top","lineHeight":"49px"},"children":404}],["$","div",null,{"style":{"display":"inline-block"},"children":["$","h2",null,{"style":{"fontSize":14,"fontWeight":400,"lineHeight":"49px","margin":0},"children":"This page could not be found."}]}]]}]}]],"children":["$","$Lc",null,{"children":["$","$Ld",null,{"children":[["$","$L9",null,{"providerId":"page:/prototyping/language-model-evaluation","segmentMap":{"children":["__PAGE__"]},"children":["$","$La",null,{"id":"page:/prototyping/language-model-evaluation"}]}],null]}]}]}]}]}]}]}],null,null]
e:T2d83,<p>I wanted to understand what sits beneath a model evaluation score. What does the model actually receive? How does its response become a grade? And when a score improves, which behaviors have changed?</p>
<p>I explored those questions with EleutherAI’s Language Model Evaluation Harness, then turned the walkthrough into a hands-on course for AI product managers. It includes ten milestones, a custom customer-support task, controlled model and prompt comparisons, and checks for reproducing the results.</p>
<p>One small experiment made the value of this workflow clear. On the same five customer-support cases, applying Qwen’s chat template improved exact tool calls from one out of five to three out of five. But it also broke the refund case that had previously passed. The higher score was real; so was the regression.</p>
<p>Here’s the <a href="https://github.com/oea101/introduction-to-language-model-evaluation-harness">code and course</a>. Below, I’ll walk through the evaluation pipeline, the custom scorer, and what the experiments revealed. These are small teaching runs on synthetic support cases, not evidence of production readiness.</p>
<h2>Why build this?</h2>
<p>An AI product decision needs more than a leaderboard number. A support assistant can produce valid JSON while choosing the wrong action, or choose the right action while extracting the wrong refund amount. Those failures need different fixes.</p>
<p>I wanted an evaluation I could trace from a product requirement all the way to individual responses. I also wanted the learning process to be accessible to product managers: small local models, inspectable configuration, and a sequence of questions tied to product decisions.</p>
<h2>What I built</h2>
<p>The project combines an interactive curriculum with runnable evaluation exercises. It includes pinned model and task configurations, a custom YAML/Python task, a scorer with five diagnostic metrics, and scripts for controlled comparisons and regression checks.</p>
<p>The course can be taken interactively in Codex, one question at a time, or read through its lessons. The exercises use small open-weight models on a local CPU, so no model API key is required.</p>
<p>EleutherAI provides the underlying harness. My contribution is the course, the custom evaluation task, and the workflow around the experiments.</p>
<h2>Data, models, and the evaluation pipeline</h2>
<p>The exercises use Pythia-14M for an initial multiple-choice run, Pythia-70M for a larger-model comparison, and Qwen2.5-0.5B-Instruct for structured customer-support responses. The published course pins <code>lm_eval</code> 0.4.13, model revisions, and the PIQA dataset revision.</p>
<p>There are two different protocols here. For PIQA, the model scores candidate continuations by likelihood. For customer support, it generates text, which a custom scorer parses and grades. The protocol needs to match the behavior being tested.</p>
<pre><code class="language-text">Cases + task definition
        ↓
Rendered prompts and model requests
        ↓
Raw responses → parsing and grading
        ↓
Per-case evidence + aggregate metrics
        ↓
Comparison and regression decision
</code></pre>
<p>The result JSON preserves the aggregate. Sample JSONL preserves the evidence needed to explain it.</p>
<h2>Starting with a score I could inspect</h2>
<p>The first controlled exercise used Pythia-14M on 20 two-choice PIQA examples. Those 20 examples produced 40 likelihood requests: one for each candidate answer. The harness scored the candidates rather than asking the model to generate an answer letter.</p>
<p>The saved teaching run scored 65% accuracy, or 13 out of 20, with a standard error of roughly 11 percentage points. That was enough to inspect how the pipeline worked, but far too small a sample to make a broad claim about the model.</p>
<p>The distinction between aggregate results and sample logs mattered. The aggregate told me how many answers were correct. The sample logs let me inspect the prompts, candidate scores, and individual failures behind that number.</p>
<h2>Turning a product requirement into an evaluation</h2>
<p>For the custom task, I used a customer-support assistant that must return one structured tool call. Its available actions include tracking or canceling an order, creating a replacement, issuing a refund, and escalating to a human.</p>
<p>An expected response has a simple shape:</p>
<pre><code class="language-json">{&quot;name&quot;:&quot;track_order&quot;,&quot;arguments&quot;:{&quot;order_id&quot;:&quot;ORDER-123&quot;}}
</code></pre>
<p><em>Illustrative output shape; not a quoted model response.</em></p>
<p>A single pass/fail metric would hide useful information, so I separated the evaluation into five questions:</p>
<ul>
<li>Is the response valid JSON?</li>
<li>Does it follow the allowed tool schema?</li>
<li>Did it choose the correct tool?</li>
<li>Are the arguments correct?</li>
<li>Does the complete call match the reference?</li>
</ul>
<p>These metrics diagnose different kinds of failure. They are not a strict funnel: choosing the right tool does not necessarily mean the rest of its schema is valid.</p>
<p>The scorer makes the final success condition explicit:</p>
<pre><code class="language-python">valid_tool_schema = _has_valid_tool_schema(actual)
correct_tool = isinstance(actual, dict) and actual.get(&quot;name&quot;) == expected[&quot;name&quot;]
correct_arguments = (
    isinstance(actual, dict)
    and actual.get(&quot;arguments&quot;) == expected[&quot;arguments&quot;]
)
exact_tool_call = valid_tool_schema and actual == expected
</code></pre>
<p><a href="https://github.com/oea101/introduction-to-language-model-evaluation-harness/blob/main/custom_tasks/customer_support_tool_calls/utils.py">Full scorer</a></p>
<h2>A formatting change with visible consequences</h2>
<p>I compared three conditions on the same five synthetic regression cases: Pythia-70M with a plain prompt, Qwen2.5-0.5B-Instruct with a plain prompt, and the same Qwen model using its chat template.</p>
<p><img alt="Five diagnostic metrics across three evaluation conditions" src="/images/projects/lm-eval/tool-call-results.svg" /></p>
<p><em>Chart generated from the saved local result files. Each case represents 20 percentage points; these are teaching results, not production estimates.</em></p>
<p>Qwen’s plain-prompt run produced one exact call out of five. With its chat template, it produced three. Valid JSON improved from one case to all five, while correct tool selection reached four out of five.</p>
<p>The relevant setting in the Qwen configuration is:</p>
<pre><code class="language-yaml">apply_chat_template: true
fewshot_as_multiturn: false
</code></pre>
<p>The task prompt becomes a user message, and the tokenizer applies the model’s chat formatting. Comparing the two Qwen runs isolates the formatting condition; comparing Pythia with Qwen changes the model as well and is a separate comparison.</p>
<p>The five metrics make the improvement easier to diagnose. JSON parsing succeeded on every chat-formatted response, but only three passed the schema check. Four selected the correct tool, which means a correct tool name could still appear in an otherwise invalid call. Three matched the complete reference.</p>
<p>The most revealing finding was at the case level. Chat formatting fixed cancellation, replacement, and escalation. But the refund case, which passed with the plain prompt, failed with the chat template. Tracking failed in both.</p>
<table>
<thead>
<tr>
<th>Regression case</th>
<th>Qwen, plain prompt</th>
<th>Qwen, chat template</th>
</tr>
</thead>
<tbody>
<tr>
<td>Track order</td>
<td>Fail</td>
<td>Fail</td>
</tr>
<tr>
<td>Cancel order</td>
<td>Fail</td>
<td>Pass</td>
</tr>
<tr>
<td>Create replacement</td>
<td>Fail</td>
<td>Pass</td>
</tr>
<tr>
<td>Issue refund</td>
<td>Pass</td>
<td>Fail</td>
</tr>
<tr>
<td>Escalate to human</td>
<td>Fail</td>
<td>Pass</td>
</tr>
</tbody>
</table>
<p>The overall score improved while one previously successful behavior regressed. That is exactly the kind of detail I want an evaluation workflow to preserve.</p>
<p><a href="https://github.com/oea101/introduction-to-language-model-evaluation-harness/blob/main/examples/milestone-09-model-comparison.md">Comparison snapshot</a></p>
<h2>Turning the walkthrough into a course</h2>
<p>I organized the project into ten milestones. The first five build a mental model of the harness: its components, task definitions, model requests, and scoring. The next three cover a controlled run, reading its evidence, and changing one experimental factor at a time. The last two introduce the custom task and a reproducible workflow.</p>
<p>Each milestone connects a technical mechanism to a product question. Reading task YAML helps identify what a benchmark measures. Inspecting sample logs helps explain failures. Comparing fixed cases helps separate an improvement from a change in the test itself.</p>
<p>The repository includes an interactive teaching contract and facilitator material so the walkthrough can be taken one question at a time. It also works as a self-guided set of lessons.</p>
<h2>Making the results auditable</h2>
<p>The last part of the project focuses on reproducing an evaluation rather than just rerunning a command. The published course pins dependencies, model revisions, and evaluation inputs. It includes manifests, accepted regression thresholds, clean-checkout checks, and sample-level verification.</p>
<p>I also separated development, regression, and final-test data. Development examples support iteration; regression cases protect known behaviors; the final test is reserved for a predeclared decision. The course leaves that final test unrun. Because its cases are visible in the repository, it illustrates the process rather than providing a blind holdout.</p>
<h2>What I took away</h2>
<p>A useful evaluation connects a product requirement to cases, prompts, grading rules, and evidence that someone else can inspect. The score is only one part of that chain.</p>
<p>This project evaluates text representing tool calls. It does not execute the tools or test a complete agent handling failures across multiple steps. The datasets are deliberately small. The value of the exercise is learning to ask better questions of an evaluation, not declaring a model ready for production.</p>
<p>If you are an AI product manager who wants to understand what sits beneath a benchmark score, <a href="https://github.com/oea101/introduction-to-language-model-evaluation-harness/blob/main/START_HERE.md">start with the course</a>.</p>
<h2>Try it locally</h2>
<p>Clone the repository and run the setup script:</p>
<pre><code class="language-bash">git clone https://github.com/oea101/introduction-to-language-model-evaluation-harness.git
cd introduction-to-language-model-evaluation-harness
./scripts/setup_course.sh
</code></pre>
<p>The setup requires Git, <code>uv</code>, <code>jq</code>, and <code>ripgrep</code>, internet access for the initial downloads, and roughly 5 GB of disk space. Open the folder in Codex and ask:</p>
<blockquote>
<p>Start Introduction to the Language Model Evaluation Harness. Teach me interactively, one question at a time.</p>
</blockquote>
<p>For the full instructions, see <a href="https://github.com/oea101/introduction-to-language-model-evaluation-harness/blob/main/START_HERE.md">Start Here</a>. The <a href="https://github.com/oea101/introduction-to-language-model-evaluation-harness/blob/main/lessons/lm-eval-course-recap.md">course recap</a> collects the evaluation patterns from all ten milestones.</p>1:["$","article",null,{"className":"project-post","children":[["$","a",null,{"className":"project-back","href":"/prototyping/","children":"← All projects"}],["$","h1",null,{"children":"Building a language model evaluation workflow—and a course around it"}],["$","p",null,{"className":"project-meta","children":"AI evaluation · Developer tools · Learning · 7 min read"}],["$","div",null,{"dangerouslySetInnerHTML":{"__html":"$e"}}]]}]
