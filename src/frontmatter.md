# 前言

Linux® is an open source operating system developed by people from all over the world. The 
source code is freely available and can be used under the GNU General Public License. The 
operating system is made available to users in the form of distributions from companies such 
as Red Hat and Novell. Some desktop Linux distributions can be downloaded at no charge 
from the Web, but the server versions typically must be purchased.
Over the past few years, Linux has made its way into the data centers of many corporations 
worldwide. The Linux operating system is accepted by both the scientific and enterprise user 
population. Today, Linux is by far the most versatile operating system. You can find Linux on 
embedded devices such as firewalls, cell phones, and mainframes. Naturally, performance of 
the Linux operating system has become a hot topic for scientific and enterprise users. 
However, calculating a global weather forecast and hosting a database impose different 
requirements on an operating system. Linux must accommodate all possible usage scenarios 
with optimal performance. Most Linux distributions contain general tuning parameters to 
accommodate all users.
IBM® recognizes Linux as an operating system suitable for enterprise-level applications that 
run on IBM systems. Most enterprise applications are now available on Linux, including file 
and print servers, database servers, Web servers, and collaboration and mail servers.
The use of Linux in an enterprise-class server requires monitoring performance and, when 
necessary, tune the server to remove bottlenecks that affect users. This IBM Redpaper 
publication describes the methods you can use to tune Linux, tools that you can use to 
monitor and analyze server performance, and key tuning parameters for specific server 
applications. The purpose of this paper is to explain how to analyze and tune the Linux 
operating system to yield superior performance for any type of application you plan to run on 
these systems.
The tuning parameters, benchmark results, and monitoring tools used in our test environment 
were executed on Red Hat and Novell SUSE Linux kernel 2.6 systems running on IBM 
System x™ servers and IBM System z™ servers. However, the information in this paper 
should be helpful for all Linux hardware platforms

## How this paper is structured

To help those of you who are new to Linux or performance tuning get started quickly, we have 
structured this book the following way:
Chapter 1, “Understanding the Linux operating system” on page 1
This chapter introduces the factors that influence system performance and the way the 
Linux operating system manages system resources. You are introduced to several 
important performance metrics that are needed to quantify system performance.
Chapter 2, “Monitoring and benchmark tools” on page 39
The second chapter introduces the various utilities that are available for Linux to measure 
and analyze systems performance.
Chapter 3, “Analyzing performance bottlenecks” on page 77
This chapter introduces the process of identifying and analyzing bottlenecks in the system.
Chapter 4, “Tuning the operating system” on page 91
With the basic knowledge of how the operating system works and how to use performance 
measurement utilities, you are ready to explore the various performance tweaks available 
in the Linux operating system.

## The team that wrote this paper

Eduardo Ciliendo is an Advisory IT Specialist working as a performance specialist on 
IBM Mainframe Systems in IBM Switzerland. He has more than 10 years of experience in 
computer sciences. Eddy studied Computer and Business Sciences at the University of 
Zurich and holds a post-diploma in Japanology. Eddy is a member of the zChampion team 
and holds several IT certifications including the RHCE title. As a Systems Engineer for 
IBM System z™, he works on capacity planning and systems performance for z/OS® and 
Linux for System z. Eddy has authored several publications on systems performance and 
Linux.
Takechika Kunimasa is an Associate IT Architect in IBM Global Services in Japan. He 
studied Electrical and Electronics engineering at Chiba University. He has more than 10 years 
of experience in IT industry. He worked as a network engineer for five years, and he has been 
working for Linux technical support. His areas of expertise include Linux on System x™, 
Linux on System p™, Linux on System z, high availability system, networking, and 
infrastructure architecture design. He is a Cisco Certified Network Professional and a Red 
Hat Certified Engineer.

Byron Braswell is a Networking Professional at the International Technical Support 
Organization, Raleigh Center. He received a B.S. degree in Physics and an M.S. degree in 
Computer Sciences from Texas A&M University. He writes extensively in the areas of 
networking, application integration middleware, and personal computer software. Before 
joining the ITSO, Byron worked in IBM Learning Services Development in networking 
education development.
Thanks to the following people for their contributions to this project:
Margaret Ticknor
Carolyn Briscoe
International Technical Support Organization, Raleigh Center
Roy Costa
Michael B Schwartz
Frieder Hamm
International Technical Support Organization, Poughkeepsie Center
Christian Ehrhardt
Martin Kammerer
IBM Böblingen, Germany
Erwan Auffret
IBM France