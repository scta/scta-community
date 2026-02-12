# How to Contribute to **scta-texts**: An Introduction to Pull Requests

The *scta-texts* repository is a collaborative, open scholarly edition of XML-encoded texts.

You do **not** need to be a programmer to contribute.
In fact, many contributors begin by editing directly in the GitHub website. This post explains how to do that safely — and *why* we organize contributions the way we do.

The goal is simple:

> A pull request is a scholarly proposal that other editors can review.

GitHub just gives us a very precise way to compare the current text with your proposed improvement.

---

## First: What a Pull Request Actually Is

A pull request is not just a way to upload changes.

It is closer to submitting a suggested correction to a critical edition.

When you open a pull request you are saying:

> “I propose the edition should change *here*, in *this exact way*.”

Reviewers then inspect your proposal line-by-line.
Because of this, *small and focused* contributions are far more valuable than large ones.

---

## The Three Copies of the Project

Even if you never install Git, three versions of the project still exist:

1. **Upstream** – the official `scta-texts` repository (the public edition)
2. **Your fork** – your personal working copy on GitHub
3. **(Optional later)** a local copy or GitHub Codespace

Beginners will usually work entirely in the GitHub website inside their fork.
That is perfectly fine and encouraged.

Your work always flows:

your fork → pull request → upstream repository

Your fork is your personal workspace. You cannot break the edition there.

---

## Step 1 — Fork the Repository

On the `scta-texts` GitHub page click **Fork**.

This creates your own copy of the entire edition.
All of your editing will happen there first.

You should **never edit directly in the upstream repository**.

---

## The Most Important Rule: One Contribution = One Branch

Every distinct change must happen in its own branch.

If you want to edit *chapter 5*, create a branch named:

```
chapter-5
```

When editing inside GitHub:

1. Open the file
2. Click the ✏️ “Edit” button
3. Choose **Create a new branch for this commit**

While working on this branch:

* Only work on chapter 5
* Only modify the chapter 5 XML file
* The pull request should show one file changed

Why?

Because reviewers are evaluating a scholarly decision.
If many unrelated files change, no one can responsibly review the proposal.

We want the pull request to read like:

> “Here is a corrected encoding of this specific passage.”

---

## Why You Must Return to `master` Before Starting Another Chapter

After finishing chapter 5, you might begin chapter 6.

**Do not keep editing on the same branch.**
And do not create the new branch from the old one.

Wrong:
You finish chapter 5 and immediately start editing chapter 6 from that same branch.

GitHub will think chapter 6 depends on chapter 5.
Your pull request will contain both.

Instead:

1. Go back to your fork’s **master** branch
2. Start a new edit
3. Create a new branch called:

```
chapter-6
```

Now each chapter can be reviewed independently.

---

## Before Starting Work: Sync Your `master`

This step is very important.

The edition is constantly changing. Other contributors may have:

* corrected typos
* changed xml:id values
* fixed references
* adjusted structure

Before making a new branch:

1. Open your fork on GitHub
2. Click **Sync fork**
3. Update from upstream

Why this matters:

If you edit an outdated version of a file, GitHub must merge two different states of the text.
In XML files this often creates conflicts that break the document.

You should always begin work from the most current state of the edition.

Think of this as:

> Always edit the latest witness of the text.

---

## Why We Prefer Pull Requests That Modify One File

This project is closer to a critical edition than to software.

A reviewer is evaluating:

* transcription accuracy
* abbreviation expansion
* paragraph structure
* tagging interpretation

A one-file pull request lets a reviewer carefully read your change and approve it confidently.

Large pull requests are very hard to review and will often be rejected simply because they cannot be responsibly evaluated.

Small pull requests get merged quickly.

### Even Within One File: Focus on One Kind of Improvement

There is an additional principle that is just as important:

> A pull request should ideally perform one kind of editorial task.

This is sometimes a gray area.

If a text is in very poor condition, many things may need fixing.
We do **not** expect a separate pull request for every single word. Instead, group changes by *type of work*.

For example, a single pull request might reasonably focus on:

**“transcription clean-up”**

* correcting obvious typos
* normalizing spacing
* fixing clear transcription mistakes

This should be separate from another kind of task, such as:

**“source identification”**

* identifying biblical citations
* marking quotations
* adding reference attributes

Why separate them?

Because isolating the *task* makes the review meaningful.
A reviewer then knows exactly what question they are answering:

> “Are these transcription corrections accurate?”
> rather than
> “Are these corrections, references, and structural changes all acceptable together?”

When the text is already in very good condition, we often become even more precise.
A pull request may change only a single word — and that is appropriate.

At that stage, we usually want:

* a justification
* a brief discussion
* perhaps manuscript evidence

The better the text becomes, the more each individual change matters.
Small, well-explained proposals allow real scholarly conversation to happen inside the pull request.

---

## When It *Is* Appropriate to Modify Many Files

Sometimes a contribution applies across the whole corpus.

Example:

A branch named:

```
marking-romans
```

The goal: add markup identifying quotations from Romans.

This may modify many files — and that is acceptable — **if every change is the same type of change**.

A reviewer can then read the pull request knowing:

> Every change I see should be a quotation marking.

This is good scholarly practice because the proposal is still clear and reviewable.

However, the pull request will be rejected if it mixes in other edits such as:

* new paragraphs
* whitespace cleanup
* spelling fixes
* restructuring

Why?

Because the reviewer no longer knows what claim is being evaluated.

The rule:

> A pull request may contain many edits, but it should express only one kind of editorial decision.

---

## Growing Into More Advanced Workflows

Many contributors begin by editing directly in GitHub.

Later you may want to:

* use a GitHub Codespace
* edit locally on your computer
* validate XML automatically

Those workflows are helpful, but **not required** to make valuable contributions.

The most important skill is not Git.

It is making a clear, focused editorial proposal.

---

## Final Thought

GitHub is not just a technical platform for this project.

It is our **peer-review system**.

Branches isolate a proposal.
Pull requests present it.
Review incorporates it into the edition.

If you keep contributions small, focused, and intentional, your work will be reviewed quickly and will directly improve the shared scholarly text.

We are very glad you’re contributing.
