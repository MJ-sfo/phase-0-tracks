9.1 How the Web Works
Release 1: Research Web Servers

1- In phase-0-tracks/web_dev/request_cycle create a Markdown file called web_servers.md. Research the following questions and record your answers in that file.

2- What are some of the key design philosophies of the Linux operating system?
the living incarnation of chaos - BSD builds up a core system which is uniform, whereas Linux distributions takes pre-existing pieces and pretty much puts them together helter-skelter. 
The piecemeal-assembly methodology of Linux makes it easy (in theory) to just upgrade a single piece
Complaint with relevant POSIX (Portable Operating System Interface standards specified by the IEEE Computer Society) documents.

3- In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
Two great advantages of virtual machine:
1) if someone hacks inside, they aren't really in your computer, with cookies that have your credit card info.  And
2) If you accidentally enter a self-destruct command like 'rm -rf . : Force deletion of current folder and sub folders.' - you only destroy your virtual computer.  Your real #1000 muscle machine is fulling operational. 

4- Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
For one thing, as root you can edit files your computer uses to start up the operating system
Only the system administrator should have access to the core system. That privileged user is traditionally called root
