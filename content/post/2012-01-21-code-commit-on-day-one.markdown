+++
title = "Code commit on day one"
date = "2012-01-21"
+++

As a software developer, what do you expect to accomplish on the first day on your job? Certainly not checking in code. But here is an example of a company where you would be expected to do [just that][1].

Ok, so why does this matter? In a small to mid sized team, say up 20 people, new engineers do not join your every other week. So why solve the problem of having a new engineer commit code on day one? The answer is: to make this happen, you will need to take a look at and fix/improve multiple things in your software development process; as a result, your team's productivity and effectiveness will improve.

Here are a few things that are required to make this possible. This list is not comprehensive, but compelling enough for us to take action.

###Logistics

####Machine ready
Give your new employee a computer, along with his login credentials and an email account, within 5 minutes of him reporting at work.

####Software development tools
Provide the location of the team's software tools repository so he can start setting up the development environment, e.g. IDE, source code control, etc.

###Technical

####Product's technical documentation
[Technical documentation][2] is any type of documentation that describes handling, functionality and architecture of a technical product or a product under development or use. For an engineer to be productive on day one, the technical documentation needs to be up to date and readable.

####Compact code base
Keep the code base clean and compact. It should be possible to checkout a branch (or clone a repository if you are using a distributed source code control like [Git][5]) within minutes. This requires that the versioned files do not include derived artifacts or third party libraries. For example, if your application ships java, don't check in the java binaries into the source code control -- archive it in a separate repository instead, from where the packaging script can retrieve it while creating an installer. Most java projects use Maven these days and the jdk binaries are stored in a Maven repository for such projects. Another example is the product documentation, which is usually authored and stored as xml and the end user documentation is generated from these xml files and transformed into pdfs, html, MS Word or other format. Do not version these derived files in your source code control because it bloats your repository without adding value.

Bottom line: cloning a repository or checking out from a branch should not take more than a few minutes.

####Code quality
Code needs to be readable, should follow a consistent style, should contain necessary comments (too little comments or too many comments can both work against readability of code -- a fine balance is needed). It should be possible to understand the code (with help of a mentor) on reading it once or twice. If most of the code does not make sense without somebody explaining it in detail, take that as a sign that the code needs to be improved or cleaned up.

Maintain and follow a coding standard (example [here][6]) or a code style guide. It is important for the readablity and consistency of your project's source code. The new engineer needs to adhere to this coding style starting with this first commit.

####Unit test coverage
Almost all of the code needs to be covered by [XUnit][3] tests. Without a healthy suite of XUnit based unit tests, checking in any new code (even by a senior member of the team) adds risk and every checkin needs to pass the test: "Is this change worth the risk?" To avoid this situation, a good unit test suite is a must. A few rules about unit tests (see more on [Test Driven Development here][4]):

1. The entire unit test suite is run as a part of the build every time
2. The unit tests do not have any external dependency to ensure that the unit tests can stand on their own.
3. Checkins not allowed if there is even one unit test failure
4. Every code change that is checked-in accompanies supporting unit test(s).

In absence of the above, the risk of allowing a new engineer to add or change code is simply too high, let alone allowing him to checkin code on day one.

####System test coverage
Automated system tests are the next level of checks after unit tests. A healthy automated test suite is required to ensure that changes in source code do not generate hours or days of testing to ensure regression has not happened due to the change. Also, if anything is broken, it should be detected as soon as possible. The automated system test suite needs to run at the end of the build and packaging tasks every time. System test failure should be treated seriously and issues found in this phase should be fixed within hours. The team should be in the habit of seeing the system tests pass every time. This can be many times a day or at least once a day as part of the nightly build. 

####Time to compile and run unit tests
The team should have a collective goal to keep the time it takes to build the entire system, down to the smallest duration possible. If it takes the build (which includes code compilation and xunit test run) more than two minutes, take that as a sign to investigate what is taking so long. For example, if you have multiple unit tests which have tests that put the main thread to sleep because it is waiting for a result -- that is a bad test. Either it needs to be reimplemented in a way where waiting is not required, or it is a system test that has been implemented as a unit test.

The bottom line: compiling your entire project and running the unit tests should complete in a matter of minutes.

###Conclusion
Even if you don't have new engineers joining your team every week, meet the requirement that it will be possible for a new member of your team to contribute on day one and checkin a fix or a small feature. This will force you to review every aspect of your development process and improve it. Your entire team will benefit from spend more time improving the product than fixing defects. Your business will do better because it will be possible for the team to quickly turn in new features without impacting the quality of the product.


[1]: http://www.scottporad.com/2010/11/01/cheezburger-network-doesnt-show-its-new-employees-the-bathroom-until-theyve-checked-in-code/
[2]: http://en.wikipedia.org/wiki/Technical_documentation
[3]: http://en.wikipedia.org/wiki/XUnit
[4]: http://www.agiledata.org/essays/tdd.html
[5]: http://git-scm.com/
[6]: http://www.cwu.edu/~gellenbe/javastyle/
