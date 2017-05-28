May 28, 2017
Here's the source files for http://sample-env.h3tq4n7wkp.us-east-1.elasticbeanstalk.com/
Using this MVC framework, I think we can knock this out easily in eight weeks. Right now, it is missing authentication, authorization, logging, and SQL functions. However, those items can easily be implemented. Like I said before, I see the sprints as:
- Phase 1 - Implement basic functionality (Almost done; just need to connect the database and modify the views)
- Phase 2 - Implement authentication for editing (A separate sprint to focus on PA-DSS, NIST, and other standards)
- Phase 3 - Add premium information (e.g., side-effects, contraindications, etc.) and authorization (Easily added to the two previous sprints, allowing time for unexpected surprises)
Here's the list of files currently included in the project:
- web.xml - I modified this file to make index.java the entry point for the application.
- index.java (com.cmsc495test2.controllers) - This controller determines if the user is on a phone, tablet, or desktop, and redirects him or her to the appropriate view. Later, this file will check for authentication and authorization as well.
- mobileHome.jsp / desktopHome.jsp - These are the landing pages. Normally, for SEO purposes, I would use only one landing page and manipulate the view based on the device using CSS. However, for this application, since the mobile version and desktop version will have much different functionality, I created separate landing pages.
- mobileResults.jsp / desktopResults.jsp - These are where the results of the user queries will display. Eventually, this will link in with a details page.
- style.css - This is the fallback CSS file.
- mobileSyle.css / desktopStyle.css - These are the stylesheets for each device.
- dataAccess.java (com.cmsc495test2.models) - This is where the data queries to the database will go. Currently, it only opens and reads data from states.txt.
- states.txt (com.cmsc495test2.models) - This is just a flat data file for demonstration purposes only.
I also included sqlite-jdbc-3.18.0.jar for the database (easy to implement and portable) and javax.mail.jar (for multi-factor authentication, error emails, etc.)
Other controllers and models to think about:
- A details page for more information about the medication or condition
- A login page
- An error page
- A data administration page to edit or update medications
- A user administration page to add, edit, or delete users (hashes, no passwords!)
The cmsc495test2.war is located in the dist folder. Any questions, IM me or hit me up at rgarcia92@student.umuc.edu
