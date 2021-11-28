---
title: "Amazon Web Services"
excerpt: "Built a versatile, scalable customer notification tool for Route 53 service teams."
image: "/images/experiences/aws_logo.png"
collection: experiences
date: 2021-06-01
end_date: 2021-08-26
type: Software Engineering
venue: Herndon, VA
---

In summer of 2021, I interned at [Amazon Web Services](https://aws.amazon.com/) (AWS) in Herndon, Virginia. I worked on a domain name system service called [Route 53](https://aws.amazon.com/route53/), which translates web addresses like "amazon.com" to IP addresses such as "192.0.2.1." My team, Frontier Resolver, worked on developing a new service that would let clients host their own Route 53 instances (basically, letting them do DNS from their own hardware instead of AWS's servers).

To support the expansion, the team needed a tool that could rapidly and reliably notify customers. Whether it's an unexpected outage or a regular maintenance, the clients need to know. My project entailed building an API around an existing internal service to make it easier for service teams to send notifications. It needed to:
* Send thousands of notifications within minutes via email and other channels.
* Support a variety of events that could trigger notifications.
* Minimize unnecessary work for those using the tool.
* Support both manual and programmatic use.
* Integrate across teams.

<img align="right" width="500px" src="/images/experiences/aws_tools.png">

I built a Java wrapper around the existing tool and moved most parameters to uploadable configuration files. After verifying that the basic tool worked, I restructured the package as a [Lambda function](https://aws.amazon.com/lambda/), which would enable faster, serverless computing. I set the function to be triggered by an [SQS queue](https://aws.amazon.com/sqs/) and deployed it via the AWS Clout Development Kit. Finally, I set up [X-Ray](https://aws.amazon.com/xray/), a tracing system which let me time each step the function executation. I also wrote a short Python script to write and modify configuration files.