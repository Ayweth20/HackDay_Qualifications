### GIT!   
**Category:** WEB - **Points:** 100 - **Solves:**    
**Description:**   
Best practices have not been used on this site. Find the administrator password.  
Link : https://sso.hackday.fr/  


**Solution:**  
To solve this challenge you need to find the flag.  
So to find the flag, we need to find a file who contain confidential infos.  
To do that, we need to do some research. After some website and differents test, we can find that there is a *.git* file stored on the website server.  
We can find this file, but we can't find any interesting infos in them.  
(Photo ./git)  
Now we need to find how to download the file on our computer to analyse them.  
A tool to dump a git repo from a website is available [here](https://github.com/arthaud/git-dumper)  
With this [tool](https://github.com/arthaud/git-dumper) we can download the .git file and all the website files.  
In the downloaded file we have the *login.php* file and the source code contain a credential verification :  
(Photo login.php)  
With these info, we can connect on the login panel and we are redirected to webpage who displayed the flag.

<details><summary>🚩 FLAG</summary>  

```  
  HACKDAY{6549871545354dsfrgOIHIGIGIUFYGUTFIHI}
```  
</details>