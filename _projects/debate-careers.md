---
title: "Debate Careers"
excerpt: "Analysis of high school debater career pathways."
image: "/images/projects/e_debate_2/banner.jpg"
collection: projects
date: 2021-12-20
---

## Introduction

The specter of college and beyond haunts the halls of high school tournaments. Hang around debaters and you'll hear conversations like this:

> Debater 1: Do you think you'll go into law?
> Debater 2: Nah, these days debaters just go onto finance or consulting.
> Debater 1: Oh yeah! I heard someone describe finance as "PF in the real world."
> Debater 2: And they all go to... 
> Debater 1 and Debater 2, in unison: U-Chi-ca-go!

Or maybe something like this:

> Debater 1: Framework Cap again huh... do they actually believe in the communism stuff?
> Debater 2: Probably not. I mean, half of them end up as business majors.
> Debater 1: Really? But I thought debaters were really into liberal arts.
> Debater 2: Not policy debaters... maybe LDers?
> Debater 1: You think they teach tricks in college?

Well, who's right? Sometimes it matters. Debaters like to make arguments about "subjectivity" and what happens after leave debate. Unfortnately, case studies and anecdotes only goes so far—answering these questions requires a lot more data.

## Dataset

So we collected a lot of it. We two weeks compiling a [database](https://docs.google.com/spreadsheets/d/17iOX450tddbqoxGwd3JU_ToF6Q3AtVn7_O2ytShZxcA/edit#gid=0) documenting the performance, argument style, and career trajectories of nearly every debater in the [2016 Tournament of Champions](https://www.tabroom.com/index/tourn/index.mhtml?tourn_id=5019). Take a peak:

<iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQXNzztispODkYBgSxeuh1jiimSJxP15KHnz0VX4Tu7acEbYZIRA0TCKbGxzYYJHt126JXw9zuUhLVS/pubhtml?widget=true&amp;headers=true" height="500" width="100%"></iframe>

Here's how we did it.

First, we collected the names, schools, and results of every entry in Lincoln-Douglas (LD), Public Forum (PF), and Policy directly off Tabroom. Results included the final place, ballots, and speaker points (which were not available in full for policy). In all, we had **438 competitors**.

Next, we brought in our **[previous work](https://www.vbriefly.com/2021/01/22/disclosure-in-numbers-by-peter-zhang/) on disclosure**, adding wiki cites, cites, round reports to the Policy and LD tabs. PF did not have a wiki in 2016. We corrected names in our wiki data as necessary.

Overall, we had wiki information on all but 5 LD debaters (~94.5% disclosure rate) and 1 policy team (~98.7% disclosure rate).

Finally—and this is the hard part—we manually searched for the **LinkedIn** URL, undergraduate **college and major**, and **industry and employers** for every debater. Our Google searches tried to pull information from:
- their LinkedIns, which we found for 329 debaters (about three-quarters).
- Tabroom paradigms, which often mentioned their college, and sometimes their major.
- high school, college, and employer websites, creepy but effective.
- social media, which sometimes listed the college too.

When these didn't work, we used personal connections (lots of texting/calling) to fill the gaps. When we still coudln't find anything, we marked the cell as "N/A." **If you have information we're missing or got wrong, please reach out!**

All in all, we were **missing**:
- 37 colleges;
- 56 majors;
- 98 industries; and
- 100 employers.

Some more details. We coded majors as either *Business*, *STEM*, *Social Science*, *Liberal Arts*, or *Interdisciplinary*. We also did a rough coding of the industries. Some poeple worked in multiple industries, so we prioritized the most recent, full-time employer.

## Analysis

With the boring stuff out of the way, who's right?

### Schools

Here's are the top 10 schools. The most common school is **Harvard**. A surprising **33** TOC debaters went off to Boston, about 7.5% of them.

But interestingly, Harvard doesn't hold the top spot in any single event. Instead, the next 3 schools—**UChicago, UC Berkeley, and UT Austin**—are the top school for one event each. Can you guess which is which?

<details>
<summary>Click for the Answer!</summary>
LD - UT Austin: LD is popular in Texas!

PF - UChicago: It is a debate school!
Policy - UC Berkeley: A smashing policy debate program!

</details>

The other six are Stanford, Columbia (prefers LD), Duke (prefers PF), UMich, Northwestern, and Emory (prefer policy).

<iframe title="Embedded cell output" src="https://embed.deepnote.com/c7deb6bf-b812-49e0-a064-b09db2fc04ec/6451f0f0-2b51-4274-beb3-301f73a633c7/00006-7a2a6dd2-d717-4093-ab5f-ee7e3462754f?height=601" height="601" width="500"></iframe>

For all the tiger parents out there: debate looks pretty good for your children's college prospects!

### Majors

The most common field is **social science**, closely followed by STEM. Policy debaters have a bias towards the liberal arts. PFers love business. LDers prefer STEM and stay away from double or triple majors.

<iframe title="Embedded cell output" src="https://embed.deepnote.com/c7deb6bf-b812-49e0-a064-b09db2fc04ec/6451f0f0-2b51-4274-beb3-301f73a633c7/00015-f8dfbc47-1e58-47c6-800a-dda46a5f4ee8?height=601" height="601" width="100%"></iframe>


The most common major, by a substantial margin, is **economics**. After that is **computer science**, **political science**, and **philosophy**. We probably underestimated the popularity of governance-related majors because they went by so many names. Either way, debaters are much more likely to study social sciences, which comprise less than [10%](https://nces.ed.gov/programs/digest/d20/tables/dt20_322.10.asp) of bachelor's degrees nationally.

<iframe title="Embedded cell output" src="https://embed.deepnote.com/c7deb6bf-b812-49e0-a064-b09db2fc04ec/6451f0f0-2b51-4274-beb3-301f73a633c7/00012-404473d0-252a-4ea1-a875-83de3f35389f?height=601" height="601" width="100%"/>


### Industries

Lo and behold! **Debaters *are* financiers and consultants.** Exactly 100 work in those two fields, or roughly **24%** of TOC attendees. But, as the social studies teachers say, debaters do **love studying law** as well, with 39 budding lawyers, and many more young politicians and policy analysts.

<iframe title="Industries" src="https://embed.deepnote.com/c7deb6bf-b812-49e0-a064-b09db2fc04ec/6451f0f0-2b51-4274-beb3-301f73a633c7/00006-fc47f8c9-96da-4b8a-af4d-52f557f815e5?height=43" height="625" width="100%"></iframe>

Since we categorized full-time debate coaches as educators, a whole lot work in education. Research too. But there were differences between events:
- Policy debaters have the **least affinity** for consulting and finance.
- LDers tend to **go into tech**—software engineering and machine learning—at higher rates.
- PFers **don't come back to coach** very often, probably because of the sheer size of their event.

Now, everyone is unique, but some people have more unique careers than others. The rarest industry awards go to...
1. PF's Akshat Chowksey, somehow the only person in product management.
2. LD's Louisa Melcher, working in the art industry.
3. Policy's Spencer Brents, a part-time aviation instructor.
4. PF's Josie Slovut, who works in forestry.
5. Policy's Dan Bannister, 2nd Lieutenant and Logistics Officer in the United States Marine Corps.

### The Big Threes

Finance and consulting also boast the biggest employers, but probably only because these are concentrated industries. The Big Three—McKinsey, Bain, and BCG (MBB)—dominate. Take a look:

<iframe title="Embedded cell output" src="https://embed.deepnote.com/c7deb6bf-b812-49e0-a064-b09db2fc04ec/6451f0f0-2b51-4274-beb3-301f73a633c7/00010-1e611227-0a38-42bc-9d0a-7ecb372a73fd?height=713" height="713" width="100%"></iframe>

A quick back-of-the-envelope-calculation. Let's assume that [Bain](https://poetsandquants.com/2019/04/03/meet-bain-companys-mba-class-of-2018/3/), McKinsey, and BCG each take 500 associates every year. In 2016, there were [10 million](https://nces.ed.gov/programs/digest/d16/tables/dt16_303.70.asp) full-time students, so let's assume 3 million for the freshman class.

The overall college to MBB rate is 0.05%. The rate for TOC debaters is 18/438, or about 2%. TOC debaters are at least ***400 times* more likely to work at MBB** than the average college student!

A similar story is true for finance, where 17/438 TOC debaters work at Morgan Stanley, JP Morgan, or Goldman Sachs, which take around [1,000](https://www.analystforum.com/t/morgan-stanley-gets-90-000-summer-program-applications-bloomberg/94588) interns a summer.

Now, here's the cool part. We counted the number of cites that had the word "Cap."" People who read the Cap K at least once were **half as likely** to go into finance. Wow!

<iframe title="Embedded cell output" src="https://embed.deepnote.com/c7deb6bf-b812-49e0-a064-b09db2fc04ec/6451f0f0-2b51-4274-beb3-301f73a633c7/00012-c3eb07cb-ab87-43f2-b55a-10b92ea314f4?height=601" height="601" width="100%"></iframe>

Of course, this is probably *not causal*. The types of debaters who read the Cap K just happen to not like finance as much.

### All Together Now

Putting it all together, here's a diagram relating event to undergraduate field of study and industry. Play around with it!

<iframe title="Embedded cell output" src="https://embed.deepnote.com/c7deb6bf-b812-49e0-a064-b09db2fc04ec/6451f0f0-2b51-4274-beb3-301f73a633c7/00004-70aff64d-652d-40ac-b6f2-6c4c84f63d0c?height=601" height="670" width="100%"></iframe>

## Conclusion

The overall picture: TOC debaters tend to go to prestigious schools. They prefer to study social science, although the details vary by event. Although finance and consulting are indeed popular, debaters do have a love for law, public policy, and politics. Finally, argument style does seem to be related to choice of career—the way you debate might matter.

Thanks for reading! Please feel free to our [data](https://docs.google.com/spreadsheets/d/17iOX450tddbqoxGwd3JU_ToF6Q3AtVn7_O2ytShZxcA/edit#gid=0) and [code](https://deepnote.com/project/Debate-Career-Pathways-x962v7gSSeCgZLCdsvwE7A/%2Fnotebook.ipynb/#00004-70aff64d-652d-40ac-b6f2-6c4c84f63d0c). If you have a cool idea or question, reach out to Peter on [Facebook](https://www.facebook.com/petejzh/)!