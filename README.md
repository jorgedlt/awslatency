# awslatency

I wanted a portable script to be able to test or verify relitive ping times between AWS data cetners worldwide. Searching the web I found a really nice web based script at http://www.cloudping.info/. This was very nice, but I neede something portable that I could deploy from my differnt sites and be able to capture the data.

awslatency.sh is what I came up with, please feel fork away.

Using these as my anchor nodes ...
### AWS DataCenters Data - 27 JAN2017
* dynamodb.us-east-1.amazonaws.com	US-East (Virginia)
* dynamodb.us-west-1.amazonaws.com	US-West (California)
* dynamodb.us-west-2.amazonaws.com	US-West (Oregon)
* dynamodb.eu-west-1.amazonaws.com	Europe (Ireland)
* dynamodb.eu-central-1.amazonaws.com	Europe (Frankfurt)
* dynamodb.ap-south-1.amazonaws.com	Asia-Pacific (Mumbai)
* dynamodb.ap-northeast-2.amazonaws.com	Asia-Pacific (Seoul)
* dynamodb.ap-southeast-1.amazonaws.com	Asia-Pacific (Singapore)
* dynamodb.ap-southeast-2.amazonaws.com	Asia-Pacific (Sydney)
* dynamodb.ap-northeast-1.amazonaws.com	Asia-Pacific (Tokyo)
* dynamodb.sa-east-1.amazonaws.com	South-America (Sao Paulo)
* dynamodb.cn-north-1.amazonaws.com.cn	China (Beijing)

to run, it requires no parameters

	$ ./awslatency.sh
	(Virginia)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 33.969 ms
	(California)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 87.137 ms
	(Oregon)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 99.186 ms
	(Ireland)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 130.951 ms
	(Frankfurt)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 139.818 ms
	(Mumbai)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 307.306 ms
	(Seoul)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 246.814 ms
	(Singapore)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 300.885 ms
	(Sydney)
	     3 packets transmitted, 2 packets received, 33.3% packet loss 322.616 ms
	(Tokyo)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 192.650 ms
	(Sao Paulo)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 199.852 ms
	(Beijing)
	     3 packets transmitted, 3 packets received, 0.0% packet loss 364.128 ms
	     
If you find this useful, or end up modifing the code, please drop me an email I would love to hear how you used this script.
/Jorge
