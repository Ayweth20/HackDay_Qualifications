### Part. 3 - sudo python   
**Category:** WEB - **Points:** 220 - **Solves:**    
**Description:**   
Find a way to elevate the privileges of the current user.  
This step is the result of a three-part challenge.  
*It is reset every 30min, so the platform may be unavailable for a few seconds.*  
Link : https://web3.hackday.fr/  


**Solution:**  
To solve this challenge you need to find a way to control the server and find the flag.  
The vulnerability was found in the Part. 1 - Uploads and the `shrek` user password was found in the Part. 2 - Old md5.  
To find the the third (and last) flag we need to find a way to become *root* with a Python command.  
Before, we've seen that `shrek` user isn't a root user but he can execute *bash* commands.  
So with some researches, we found that the `os` module can help us to execute machine commands.  
After some trials, the command to become root is : `sudo python3.5 -c 'import os; os.system("/bin/bash")'`  
With this command we become *root* and we can see the `/root` folder content.  
This folder contain the `FlaG3.txt` so we have the flag.

<details><summary>🚩 FLAG</summary>  

```  
  HACKDAY{987oiuhgfytrJGFUYTR152649}
```  
</details>
