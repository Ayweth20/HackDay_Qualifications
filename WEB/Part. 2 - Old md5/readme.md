### Part. 2 - Old md5   
**Category:** WEB - **Points:** 210 - **Solves:**    
**Description:**   
Decrypt the user's password.  
This step is the result of a three-part challenge.  
*It is reset every 30min, so the platform may be unavailable for a few seconds.*  
Link : https://web3.hackday.fr/  


**Solution:**  
To solve this challenge you need to find a way to control the server and find the flag.  
The vulnerability was found in the Part. 1 - Uploads so we need to find the password of a special user.  
To find the special user, we need to analyze the *passwd* file.  
![image](https://user-images.githubusercontent.com/91023285/163721465-c5102e7c-795a-426d-a0c9-dfe78674bf17.png)  
There is a (strange) user who can execute bash command : `shrek`  
Also, we can see that his home directory is `/home/shrek` so we decide to go at this directory.  
In this directory there is the *fLaG2.txt* file but we can't open it because we don't have permissions.  
Go back to *home* and we see that there is a file named *important.txt*. With a `cat important.txt` we receive an instruction to execute a program :  
![image](https://user-images.githubusercontent.com/91023285/163721722-6c36183b-8658-47eb-b654-05c76ec4ceae.png)  
So before execute him, we prefer to analyze his content by `cat /.runme.sh` :  
![image](https://user-images.githubusercontent.com/91023285/163721779-1a3c0a54-63e4-4e66-8bb2-6c334ada5635.png)  
Oh ! We have the encrypted password for shrek : **cf4c2232354952690368f1b3dfdfb24d**  
With just 1 research on internet we find the md5 decrypted password => **onion**  
Now we can connect us by SSH with this command : `ssh shrek@51.255.172.76` and this password : `onion`  
We go back to the `home/shrek` directory and analyze the fLaG2.txt file and we get the flag :  
![image](https://user-images.githubusercontent.com/91023285/163722007-8615b4cb-7ff8-4a0c-bc66-b2ba23113cd9.png)



<details><summary>🚩 FLAG</summary>  

```  
  HACKDAY{ABVHDBRUshrekSKSDFMLOJFS654}
```  
</details>
