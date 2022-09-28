# BUGS

* **crash1.gft**
	* **Issue: **
		There are two scenarios in this issue.
		1. The giftcardreader.c program is expecting a file as second arugument, when we pass any other value like '1' or 'a', the program crashes.
		2. The giftcardreader.c program is expecting exactly two arguments, when we pass third argument to the program then it crashes.
	* **Fix: **
		Below are the fix for each scenarios
		1. We need validate the second arugument to check whether it is a file. If yes proceed with the flow or throw error to submit correct file.
		2. We need validate number of acceptable aruguments for the program and throw error if the arugument count doesn't matches.

* **crash2.gft**
	* **Issue:**
		Sending negative value to the num_bytes crashed the program.
	* **Reason for the issue:**
		On checking the giftcardreader.c program, we could see while reading the gift card file 'ptr' is set to NULL pointer as we are passing negative value to num_bytes [ptr = malloc(ret_val->num_bytes); line 189]. When we try to read 'ptr' in the next line, we are receving segmentation error (crash).
	*Fix:
		We need to validate the value of num_bytes to check whether it contains positive value.

* **hang.gft**
	* **Issue:**
		We could see arg1 inside animate function is casted as 'char' beacuse of which 'pc' pointer value will will decrease by 3 in line 56. Then 'pc' value is increased again by 3 in line 62. This causes the loop to execute without any termination.
	* **Fix:**
		We need cast arg1 as 'unsigned char', so that pointer will not move backwards.
