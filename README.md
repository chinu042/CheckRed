# Server Management Tasks

This repository contains solutions to various server management tasks.

## Tasks

1. **Analyzing Server Load and Memory**
   - Your client chipkart has a tig trillion day sale & the server has got a sudden spike of requests, you need to analyze the load appearing on the server before it reaches the max limit, so that you can analyze within how much time you can scale out your infrastructure. Find out the average load, server is taking here along with the free memory available.

2. **Setting up Nginx with Custom Configurations**
   - During the nginx setup on the server, you have written your own custom config file, now you need to place this file in /etc/nginx/sites-available/ & /etc/nginx/sites-enabled/ directories. Also, after you move this config file in relevant directory(s), you also need to make sure that if you update your config file in /etc/nginx/sites-available/ It should get auto updated in /etc/nginx/sites-enabled/ directory without the need to manually update it.

3. **Real-time Monitoring of Nginx Access Logs**
   - You are closely working with a developer to catch an error in the API call, so you are asked to monitor real-time access logs of nginx webserver, this log file has a huge amount of data which you cannot risk to open all at once which might take time. Assuming recent data gets appended in the access log file, write your step to check the real-time logs.

4. **Handling Port Conflict with Django Application Server**
   - You were running a Django application server & you stopped the executing process & next time you went to start the app server, you found out that the port is already in use. What steps will you take to analyze the issue & then start the Django app server?

5. **Identifying Typos in Source Code**
   - Your server went down & your developer found that a recent commit had a typo in the source code which had put the server down. Now you have to find the number of occurrences of that typo in the source code file without opening the file. Also, find the occurrence of that typo with respect to the line number of the file.

6. **Monitoring Systemd Service Logs**
   - You created a systemd service for running a backend application program & you would like to check the logs of that service to know whether it failed & caused your application to stop.

7. **Creating Directory Structure**
   - Create a directory structure of below hierarchy. Constraint: Write a 1 line command to create the entire below directory structure in one go.
     ```
     p1
     |
     |----p2
     |  |
     |  |--p4
     |  |--p5
     |
     |--------p6
     |   |-----p7
     ```

8. **Creating and Modifying Files and Directories**
   - Create 100 files in one go with a single command executed only once in a directory named f1. Execute the directory structure creation question (7) inside the f1 directory. Then change the permission of all files & directories inside f1 to "r--------" using a single execution of the command. But f1 permissions shouldn't be changed or impacted. Then change the owner of all files & directories inside f1 to root using a single execution of the command.

9. **Implementing Self-healing Daemon Service**
   - Bemazon server has a daemon service of a backend application which failed on the production server during critical business hours & created a huge loss for the client, your client wants his application to be running 24 x 7. You are appointed to fix this, the production server runs on a Linux-based distribution. Provide your approach in points & specify the solution with implementation details to fix this on the server so that if this service fails, it should self-heal itself & keep running.

## Usage

Each task is documented with its respective solution in the repository. Follow the instructions provided in each task's folder for implementation details.

## Contributing

Feel free to contribute by adding more tasks or improving existing solutions through pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
