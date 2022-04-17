### Part. 1 - Uploads   
**Category:** WEB - **Points:** 200 - **Solves:**    
**Description:**   
Find a way to control the server.  
This step is the result of a three-part challenge.  
*It is reset every 30min, so the platform may be unavailable for a few seconds.*  
Link : https://web3.hackday.fr/  


**Solution:**  
To solve this challenge you need to find a way to control the server and find the flag.  
To find a "vulnerability" we can try to find the open ports on the server.  
To do that, we use the NMap tool with the `nmap 51.255.172.76` command. The results are displayed 1 minute later :  
(NMAP image)  
So there are 4 open ports that we can use.  
After some search I found a vulnerability (misconfiguration) on the FTP port where we can connect with the *anonymous* infos.  
We can try to connect on the FTP port server with the command : `ftp 51.255.172.76` and the credentials : `anonymous:anonymous`  
When we are connected to the server we can upload a [webshell](https://github.com/flozz/p0wny-shell) whith this command : `put shell.php` and we are allowed to access directly to all files server.  
When the webshell is ready we can use them and find the file who contain the flag.  
With just a simple `ls` command we can see the *fLaG1.txt* file.

<details><summary>🚩 FLAG</summary>  

```  
  HACKDAY{159753iKGJHORSFGDHTAQS3215}
```  
</details>