# Nordcloud Senior AWS DevOps Engineer

To start the Solution outline, I first identified the core functionality from the requirement.

Solution should be based on cloud native infrastructure.


create
store
shared
downloaded
upload

sharing
cater
anticipated
generate

## Requirements

A client would like to build a new image sharing platform for people to use. This platform will take an image provided by a user, and create copies of it at multiple resolutions, and store them ready to be shared or downloaded.

We’d like you to create a cloud native infrastructure design you'd use to meet these requirements. You only need to produce a diagram.

## Core Features:

       A user can upload an image through a web browser or mobile device anonymously
       After upload, links provided to multiple resolutions of the uploaded image for sharing
       The platform must be cost effective

## Advanced Features:

       Cater for regular spikes for image uploads that are anticipated at certain times in the day without manual intervention
       A link shortener service that can generate a short link for individual images
       
## Extra Discussion Points:

       How will you manage building this infrastructure and application(s)?
       How would you store secrets that are used by the application (database passwords, etc)

Join Nordcloud and make your mark on the European IT industry. Help our clients thrive on their cloud journey in solution areas such as infrastructure, migration, data, and security.

Currently, we are looking for a Senior AWS DevOps Engineer for our team in the UK.

## Your daily responsibilities:

Understanding Application Architectures and Systems Design
pro-actively making recommendations on simplifying and improving clients products
Finding opportunities to exploit cloud native technologies with clients' products
Being part of designing and delivering cloud-native applications that deliver on key architectural requirements (scalability, reliability, observability, secure etc) and DevOps best practices
Providing technical guidance, mentoring, and support to the development teams and other architects
Designing applications that can be supported and maintained

## Your key skills:

Strong background in AWS, understanding a breadth of key technologies. Some key technology areas for us are Serverless, Private Networking, NoSQL and Kubernetes
Experience with building and orchestrating containers
Expertise with hosting and deployment of applications (CI Pipelines, Web Servers, DNS Configuration, Certificates etc.)
Knowledge of software development in a major language and API framework
Experienced in developing automations in at least one scripting language (Bash, Powershell, etc.). Scripting in a Linux environment is preferred
Great communicator and responsible team player, this role is client facing
Fluent communication skills in English




                                              +--------------------------+
                                              |         Users            |
                                              | (Web Browser/Mobile App) |
                                              +-----------+--------------+
                                                          |
                                                          v
                                              +-----------+--------------+
                                              |    API Gateway / Load    |
                                              |       Balancer           |
                                              +-----------+--------------+
                                                          |
                                                          v
                                       +------------------+------------------+
                                       |                                     |
                             +---------+---------+                +---------+---------+
                             |       Web Server   |                |  Link Shortener   |
                             |    (e.g., Nginx)   |                |     Service       |
                             +---------+---------+                +---------+---------+
                                       |                                     |
                                       v                                     v
                             +---------+---------+                +---------+---------+
                             |     Image Upload   |                |   URL Shortener   |
                             |     Microservice   |                |     Database       |
                             +---------+---------+                +---------+---------+
                                       |
                                       v
                             +---------+---------+
                             |     Message Queue  |
                             |     (e.g., SQS)    |
                             +---------+---------+
                                       |
                                       v
                             +---------+---------+
                             |   Image Processing |
                             |    Microservice    |
                             +---------+---------+
                                       |
                                       v
                             +---------+---------+
                             |  Image Storage     |
                             | (e.g., S3 Bucket)  |
                             +---------+---------+
                                       |
                                       v
                             +---------+---------+
                             |   Metadata Store   |
                             |   (e.g., DynamoDB) |
                             +---------+---------+
