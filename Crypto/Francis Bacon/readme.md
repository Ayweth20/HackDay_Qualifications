### Francis Bacon   
**Category:** Crypto - **Points:** 100 - **Solves:**    
**Description:**   
Decipher the hidden [message](./chal2/)!  

**Solution:**  
To solve this challenge you need to decipher the flag in the [chal2](./chal2/) file.  
If we do a `file chal2` command, we can see that's an ASCII text file.  
To see the content file, we do `cat chal2` and this string is send back : *AAAABAAAAAAAABAABBABABBAAAAABAAAAAAABBAAAABABABAAABAAAAAABAABAABBABBBA*  
To find the string encryption, we can go on this [website](https://www.dcode.fr/identification-chiffrement)  
The [**Bacon Cipher**](https://www.dcode.fr/chiffre-bacon-bilitere) is detected and if we go on the website to decrypt this string the flag is decode.  
![image](https://user-images.githubusercontent.com/91023285/163720803-794f4ccf-cd23-4429-a7e2-033d25b7a14f.png)

<details><summary>🚩 FLAG</summary>  

```  
  HACKDAY{BACONCANFIREUP}
```  
</details>
