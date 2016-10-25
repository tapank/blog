+++
title = "Product release"
date = "2011-02-25"
+++

The team is working on an upcoming product release. Long days and late nights. Sometimes weekends too. There is so much to do, but so little time! What's more — the test team is finding bugs as if there is no tomorrow. This is the time when developers are thinking about so many things that could have been done differently. 'Maybe we should have thought through a few things before', they say. And they are right. If we were to relive this release; if we could go back in time; if we could do this all over again….. it would be another story. A much better story. Every feature would be designed better. The code would be much cleaner. There would be fewer defects. And life would be much better.

This is not the time to think about what could have been done differently. This is the time to put our heads down and get back to work. The defect backlog needs to be contained. And we must do this while defect arrival rate shows no sign of slowing. We must release the product on schedule. That’s one non negotiable.

While this is happening, engineers are also thinking ahead. What will we do differently next time? How will the next release be better than this one? What lessons have we learnt from our mistakes this time? Ah, here are a few things we will definitely do differently. We will be careful to avoid feature bloat. We will analyze requirements better next time. We will plan ahead. Hey, how about starting to write unit tests as we code? Yes, that [JUnit] [1] the world has been using for almost a decade now. We should probably adopt [continuous integration] [2] (CI) for a change. It would be great if every checkin could be validated with a rapid feedback of build status, unit test results and acceptance tests results. That will require automated system tests too. Shit, we dont have hardware to spare for all that stuff. But we will figure that out. In fact, we will have to figure that out, because there is no doubt CI will improve team productivity. [Jenkins] [3] seems to fit the bill. It seems to be working for many teams, there’s no reason it will not work for us.

Sweet. The next release is going to be so much better.

Hey, we are not done with this release yet. Some new defects arrived while we were day dreaming about the next release, and these defects need to be thrashed out now. Get back to work folks.

[1]: http://junit.sourceforge.net/
[2]: http://martinfowler.com/articles/continuousIntegration.html
[3]: http://jenkins-ci.org/
