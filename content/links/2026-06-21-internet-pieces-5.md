+++
title = "Pieces from the internet #5"
authors = [ "Max Crone",]
+++
It's been another two weeks since the last link dump.
I spent some time playing with my automated collection system for pieces from the internet (i.e., web pages) that's basically just my single-user implementation of Pocket.
It has river views now, grouped by week, to easily let me walk back through what I've been reading (and saving) over time.
<!-- more -->

---

[Hong Kong Travelogue – Travel and Street Photographer in Asia](https://blog.roycruz.com/hong-kong-travelogue-travel-and-street-photographer-in-asia/) by Roy Cruz.

A simple travelogue that I pulled from my archives, but with some pretty cool photos. This is actually a nice reminder for what I could also do with some of my batches of photos I keep postponing for sorting. The other thing I'd like to experiment with is making zines from my photo collection; small, printed, tightly-scoped magazines. Would love to do one with portraits, for example.

---

[AI agent runs amok in Fedora and elsewhere](https://lwn.net/SubscriberLink/1077035/c7e7c14fbd60fae9/) by Joe Brockmeier for LWN.net.

We're probably only going to see more attempts at an XZ-type of open source attack, now that AI agents can do this at scale. Though I've heard other people make claims that AI can be a much bigger boon for defense rather than offense.But this flows from the argument that there had already been actors that could reasonably hack into any target, because they had enough resources and state-backing (e.g., the NSA) to pull it off. And though probably true, this ignores the point that capable AI lowers the bar for resources and attention needed for sophisticated campaigns. Though not just any actor can get the same impunity from the law, hehe.

---

[Statement on the US government directive to suspend access to Fable 5 and Mythos 5](https://www.anthropic.com/news/fable-mythos-access) by Anthropic.

It feels like the world is role-playing existential doomerism.

---

[Due to DMA, Siri AI delayed in EU for iOS 27 and iPadOS 27](https://www.apple.com/newsroom/2026/06/due-to-dma-siri-ai-delayed-in-eu-for-ios-27-and-ipados-27/) by Apple.

An unusually aggressive press statement by Apple aimed at the European Commission. I've heard other people mistake this for "Apple doesn't want users to be able to choose different AI models", which seems like a subtly misguided conclusion. What matters more to Apple is that they don't want to give access to all these privileged platform API's to any arbitrary "AI company" building "chatbots". But the EU's Digital Markets Act requires an equal playing field and thus can be interpreted to mean that "Apple [...] give any AI system nearly unlimited access to a user’s device". 

Apple's Private Cloud Computer is built to give them the least access possible to any user data from inference. Other AI systems... absolutely not. The EC might argue that other AI systems would of course still be subject to all data and privacy regulations, downplaying the risk of misuse of the broader system access. But it'd be a theoretical reality, with the threat of penalties after the fact. In Apple's model, there's a much lower exfiltration risk to begin with.

It's a perfect dilemma.

---

[Andrea Wulf on Enlightenment, Nature, Romanticism, and Modernity](https://www.preposterousuniverse.com/podcast/2026/06/08/356-andrea-wulf-on-enlightenment-nature-romanticism-and-modernity/) in Sean Carroll's Mindscape

Andrea Wulf talks about the beauty of subjectivity in our scientific history. Hearing her talk about the smart and creative people of the late seventeen hundreds is very inspiring. I'm also excited to be catching up on her two most recent books in the trilogy that started with "The invention of nature" about Alexander von Humboldt that I got from my father as a present and read during my studies in Finland. 

---

[Think for Yourself](https://www.nybooks.com/articles/2026/06/25/think-for-yourself-ai-dan-chiasson/) by Dan Chiasson in The New York Review of Books.

This resonates with my own growing revulsion of AI-mediated human communication. But at the same time I wonder how many moral standards there were to begin with in the highly transactional intra-company bureaucracy. What exactly are we losing when people no longer write their own reports or plans anymore? It still feels disrespectful to me to burden another human with artificially generated prose. But does it matter how it was produced if the company only values the outcomes?

---

[Application Layer Transport Security](https://docs.cloud.google.com/docs/security/encryption-in-transit/application-layer-transport-security) by Google.

It's interesting to read through Google's internal transport security protocol while working on similar stuff for my current employer. Except ALTS is doing way more of course.

A colleague talked to some people at a conference recently who told him that the U.S. government is looking to move away from TLS for internal transport as well, because pre-shared keys make them uncomfortable.

---

[AI Economics for Dummies](https://www.mcsweeneys.net/articles/ai-economics-for-dummies) by Andrew Singleton in McSweeney's.

Hilarious satirical piece on the bizarre money loops going around in the machinery of capitalism.

---

[On hybrid signatures](https://keymaterial.net/2026/06/18/on-hybrid-signatures/) by Sophie Schmieg.

Sophie Schmieg (from Google) expands on her reasoning about hybrid signatures (classical and post-quantum).
The [current IETF draft](https://datatracker.ietf.org/doc/draft-ietf-lamps-pq-composite-sigs/) is particularly complex as a result of what people often call "designed by committee", I guess.
There's just a bunch of combinatorics you have to start considering when standardizing hybrid constructions.
Also see [Bas Westerbaan's blog post](https://bas.westerbaan.name/notes/2026/06/17/hybrid.html) from a day earlier for an illustration.

From the Google Bug Hunters blog at the beginning of the month, there was a piece talking about [what Google will actually do for quantum-safe certificates](https://bughunters.google.com/blog/next-with-quantum-safe-certificates) (Merkle Tree Certificates (MTCs)).
