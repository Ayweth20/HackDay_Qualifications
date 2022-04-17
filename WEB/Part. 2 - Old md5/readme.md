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
(Image cat passwd)  
There is a (strange) user who can execute bash command : `shrek`  



<details><summary>🚩 FLAG</summary>  

```  
  HACKDAY{ABVHDBRUshrekSKSDFMLOJFS654}
```  
</details>