# Maven+Java+Jenkins
This Jenkins build needs many plugins for correct work:
1. Build Timestamp
2. Build Name and Description Setter
3. Pipeline Utility Steps
4. Role-based Authorization Strategy
#
In Nexus, repository should will be name maven and this repo should has Mixed and Rewritable settings
#
IP-Adresses are static and was writed into docker-compose file and other 2 slaves may have random IP-adresses
Port-forwarding need for open UI in web on host.
And other settings will be up, when I will have display how it works.
Maven should be install first then other plugins before pipline starts.
#
For correct work need to create two pipelines:
1. backend, where java.app will have pull into Jenkins with dynamic name and start checking with Maven, which was been installed in 'dev' slave, when checking finished, our built artifact, he will be upload in Nexus repository with custom name
2. test, where starts only if boolean parameter, which stay in backend pipeline code, be 'True'. In next step test will have make random value and create if-else job, which will have be true if random value takes digit 7 and stop with SUCCESS, in other case first pipeline will have stop with bad
#
Jenkins will have two users with different permissions:
1. dev user can see only 'backend' pipeline
2. test user can see only 'test' pipeline

## Script for fast base build
