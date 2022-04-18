### Memory Investigation   
**Category:** Reverse - **Points:** 100 - **Solves:**    
**Description:**   
It's all about [execution](./challenge1.zip/).  
The flag is of the form HACKDAY{return}  

**Solution:**  
To solve this challenge you need to find the return value.  
So to find the flag, we need to understand how the program work.  
To test him we put the command `./challenge1.elf` then `./challenge1.elf FLAG`. The results are here :  
![image](https://user-images.githubusercontent.com/91023285/163860545-22b817d5-b57a-4e15-8442-1d1d774b2e1f.png)  
Without *key* we received the "*Segmentation Fault*" message but with a *key* we have a good message.  
So to decompile and see the program code, we need to use **Ghidra** and find the good function who generate the flag (return).  
To find them, we use the "*Search* > *For Strings...* > *Search*" and write "*LUCK*" in the input to find the place :  
![image](https://user-images.githubusercontent.com/91023285/163861311-f9386e9e-d6a4-4a7c-96c2-997212bed464.png)  
![image](https://user-images.githubusercontent.com/91023285/163861434-f3e79ab9-b2dc-4fe0-bb67-4c5c8510ea35.png)  
With the decompile code (right part), we can see that's the *func2* function who generate the flag.  
So now we want to run the program with **gdb-peda** to break at the func2 and see the return value :  




<details><summary>🚩 FLAG</summary>  

```  
  HACKDAY{}
```  
</details>
