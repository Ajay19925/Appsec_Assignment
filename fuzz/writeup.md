# testing

* **cov1.gft**
	* **Explanation:**
		This gift card is created to increase the code coverage by accessing the JSON output part of the gift card reader code. Second argument for this code execution will be 2.

* **cov2.gft**
	* **Explanation:**
		We have created a gift card to access the different switch case in animate function. In our case we reached 'case 0x02' to increase the code coverage.
		
* **fuzz1.gft**
	* **Issue:**
		On running the afl fuzzer, it found a crash with 'segmentaion fault'. On debugging the issue we found that the issue was happening as arg2 in animate function moved out of bounds. 
		
	* **Fix:**
		We added boundry check for arg2 in 'case 0x04' of animate function to fix the issue. Added code: 'if (arg2 >= 0 && arg2 <= 15)' on 'case 0x04' of animate function.
		
* **fuzz2.gft**
	* **Issue:**
		On running the afl fuzzer, it found a hang in the gift card reader program. 'case 0x10' makes the animate functions, while loop executes infinitely.
	
	* **Fix:**
		This is happening because the pointer was moving backward. We need to cast arg1 as 'unsigned char', so that pointer will not move backwards in 'case 0x10' of animate function.