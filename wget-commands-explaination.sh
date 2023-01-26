Wget Command Examples
GNU Wget is a free software package for retrieving files using HTTP, HTTPS and FTP, the most widely-used Internet protocols. It is a non-interactive commandline tool, so it may easily be called from scripts, cron jobs, terminals without X-Windows support, etc.

GNU Wget has many features to make retrieving large files or mirroring entire web or FTP sites easy, including:

Can resume aborted downloads, using REST and RANGE
Can use filename wild cards and recursively mirror directories
NLS-based message files for many different languages
Optionally converts absolute links in downloaded documents to relative, so that downloaded documents may link to each other locally
Runs on most UNIX-like operating systems as well as Microsoft Windows
Supports HTTP proxies
Supports HTTP cookies
Supports persistent HTTP connections
Unattended / background operation
Uses local file timestamps to determine whether documents need to be re-downloaded when mirroring
GNU Wget is distributed under the GNU General Public License.
The source code for GNU Wget can be found on http://ftp.gnu.org/gnu/wget/ [via http] and ftp://ftp.gnu.org/gnu/wget/ [via FTP]. It can also be found on one of FTP mirrors.

wget documentation

Simple file download
To download a single file and store in a current directory:

# wget http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz

--2014-10-02 11:28:30--  http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
Resolving ftp.gnu.org... 208.118.235.20, 2001:4830:134:3::b
Connecting to ftp.gnu.org|208.118.235.20|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 446966 (436K) [application/x-gzip]
Saving to: wget-1.15.tar.gz
100%[===================================================================================>] 446,966     60.0K/s   in 7.4s
2014-10-02 11:28:38 (58.9 KB/s) - wget-1.15.tar.gz
Download file with different name
Using -O (uppercase) switch, downloads file with different file name:

# wget -O wget.zip http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz

--2014-10-02 11:55:54--  http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
Resolving ftp.gnu.org... 208.118.235.20, 2001:4830:134:3::b
Connecting to ftp.gnu.org|208.118.235.20|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 446966 (436K) [application/x-gzip]
Saving to: wget.zip
100%[===================================================================================>] 446,966     60.0K/s   in 7.5s
2014-10-02 11:56:02 (58.5 KB/s) - wget.zip
Download multiple file with http and ftp protocol
Here we see how to download multiple files using HTTP and FTP protocol with wget command at ones.

# wget http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz ftp://ftp.gnu.org/gnu/wget/wget-1.14.tar.gz.sig

--2014-10-02 12:11:16--  http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
Resolving ftp.gnu.org... 208.118.235.20, 2001:4830:134:3::b
Connecting to ftp.gnu.org|208.118.235.20|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 446966 (436K) [application/x-gzip]
Saving to: wget-1.15.tar.gz

100%[===================================================================================>] 446,966     56.7K/s   in 7.6s

2014-10-02 12:11:29 (57.1 KB/s) - wget-1.15.tar.gz

--2014-10-02 12:11:29--  ftp://ftp.gnu.org/gnu/wget/wget-1.14.tar.gz.sig
           => wget-1.14.tar.gz.sig

Logging in as anonymous ... Logged in!
==> SYST ... done.    ==> PWD ... done.
==> TYPE I ... done.  ==> CWD (1) /gnu/wget ... done.
==> SIZE wget-1.14.tar.gz.sig ... 65
==> PASV ... done.    ==> RETR wget-1.14.tar.gz.sig ... done.
Length: 65 (unauthoritative)

100%[===================================================================================>] 65          --.-K/s   in 0s

2014-10-02 12:11:33 (2.66 MB/s) - wget-1.14.tar.gz.sig

FINISHED --2014-10-02 12:11:33--
Downloaded: 2 files, 437K in 7.6s (57.1 KB/s)
Read URL’s from a file
You can store number of URL’s in text file and download them with -i switch.

# wget -i /wget/urls.txt

--2014-10-02 12:34:12--  http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz ftp://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz.sig
Resolving ftp.gnu.org... 208.118.235.20, 2001:4830:134:3::b
Connecting to ftp.gnu.org|208.118.235.20|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 446966 (436K) [application/x-gzip]
Saving to: wget-1.15.tar.gz.sig

100%[===================================================================================>] 446,966     35.0K/s   in 10s

2014-10-02 12:34:23 (42.7 KB/s) - wget-1.15.tar.gz.sig

--2014-10-02 12:34:23--  http://ftp.gnu.org/gnu/wget/wget-1.14.tar.gz
Resolving ftp.gnu.org... 208.118.235.20, 2001:4830:134:3::b
Connecting to ftp.gnu.org|208.118.235.20|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 446966 (436K) [application/x-gzip]
Saving to: wget-1.14.tar.gz

 45%[==========================================                                          ] 1,262,000   51.6K/s  eta 6s
Resume download
In some cases ( when you download huge files ) your download can be interrupted for some reason. You can resume your download with -c switch. If you start your download without specifying -c switch wget will add .1 extension at the end of file and start a new download. It’s a good practice to add -c switch when you download big files.

# wget -c http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz

--2014-10-02 12:46:57--  http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
Resolving ftp.gnu.org... 208.118.235.20, 2001:4830:134:3::b
Connecting to ftp.gnu.org|208.118.235.20|:80... connected.
HTTP request sent, awaiting response... 206 Partial Content
Length: 446966 (436K) [application/x-gzip]
Saving to: wget-1.15.tar.gz

 51% [=================================================                                  ] 277,262   47.0K/s  eta 3s ^
 .1 in file name
When you start a download without -c switch wget adds .1 at the end of file and start with fresh download. If .1 already exist .2 append at the end of file.

# wget  http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz

--2014-10-02 12:50:49--   http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
Resolving ftp.gnu.org... 208.118.235.20, 2001:4830:134:3::b
Connecting to ftp.gnu.org|208.118.235.20|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 446966 (436K) [application/x-gzip]
Saving to: wget-1.15.tar.gz.1

 18% [==================                                                                 ] 292,436     59.2K/s
Download files in background
With -b switch you can send download in background immediately after download start and logs are written in /wget/log.txt file.

# wget -b /wget/log.txt http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz

Continuing in background, pid 3550.
Limit download speed
With Option –limit-rate=100k, the download speed limit is restricted to 100k and the logs will be created under /wget/log.txt as shown below.

# wget -c --limit-rate=100k  /wget/log.txt http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz

/wget/log.txt: Scheme missing.
--2014-10-02 13:16:21--  http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
           => wget-1.15.tar.gz
Resolving ftp.gnu.org... 208.118.235.20, 2001:4830:134:3::b
Connecting to ftp.gnu.org|208.118.235.20|:80... connected.
Logging in as anonymous ... Logged in!
==> SYST ... done.    ==> PWD ... done.
==> TYPE I ... done.  ==> CWD (1) /wget-1.15.tar.gz ... done.
==> SIZE wget-1.15.tar.gz ... 446966
==> PASV ... done.    ==> REST 2825236 ... done.
==> RETR dwget-1.15.tar.gz ... done.
Length: 446966 (436K), 446966 (436K) remaining (unauthoritative)

 0% [                                                                                    ] 172,160   35.5K/s  eta 8s
Restricted FTP and HTTP downloads
With Options –http-user=username, –http-password=password & –ftp-user=username, –ftp-password=password, you can download password restricted HTTP or FTP sites as shown below.

# wget --http-user=username --http-password=password http://some-network.net/some-file.txt
# wget --ftp-user=username --ftp-password=password ftp://some-network.net/some-file.txt
Increase Retry Attempts.
You can increase the number of retry attempts using ‘–tries‘ switch. By default wget command retries 20 times to make the download successful.

This switch becomes very useful when you have internet connection problem and you are downloading a large file

# wget --tries=75 http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
Redirect wget logs
We can redirect the wget command logs to a log file using ‘-o‘ switch.

#wget -o download.log http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz
Download.log file will be created in the user’s current directory.

Setting Download Quota
We can force wget command to quit downloading when download size exceeds certain size using ‘-Q’ switch

# wget -Q10m -i download-list.txt
Note: quota will never affect downloading a single file.

Download Entire Website
If you ever need to download an entire Web site, ( for off-line viewing, analysis, inspection or vulnerability assessment)  wget can do that for you

$ wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains some-site.com --no-parent www.some-site.com
This command downloads the site www.some-site.com.

The options are:

–recursive: download the entire Web site.
–domains some-site.com: don’t follow links outside some-site.com.
–no-parent: don’t follow links outside the directory /.
–page-requisites: get all the elements that compose the page (images, CSS and so on).
–html-extension: save files with the .html extension.
–convert-links: convert links so that they work locally, off-line.
–restrict-file-names=windows: modify filenames so that they will work in Windows as well.
–no-clobber: don’t overwrite any existing files (used in case the download is interrupted and
resumed).
Reject file types while downloading.
When you are planning to download full website , then we can force wget command not to download images using ‘–reject’ switch .

# wget --reject=png www.some-site.com
Download Only Certain File Types
You can use this under following situations:

Download all images from a website
Download all videos from a website
Download all PDF files from a website
$ wget -r -A .pdf http://some-site.com/

$ wget --mirror --page-requisites --convert-link --no-clobber --no-parent --domains <domain name> <website url> 
