# Some notes on using sipp with Docker

NAT and one-way audio are a problem.  Docker uses a different internal
IP range inside the containers, and sipp picks up that IP.  Example of
one-way audio traffic:

```
10.823299892    10.2.2.55 -> 172.17.0.2   RTP 214 PT=ITU-T G.711 PCMA, SSRC=0xCA110000, Seq=490, Time=86424 
10.828093409    10.2.2.53 -> 10.2.2.55    RTP 214 PT=ITU-T G.711 PCMA, SSRC=0xCA110002, Seq=487, Time=1523968 
10.843762668    10.2.2.55 -> 172.17.0.2   RTP 214 PT=ITU-T G.711 PCMA, SSRC=0xCA110000, Seq=491, Time=86584 
10.848244285    10.2.2.53 -> 10.2.2.55    RTP 214 PT=ITU-T G.711 PCMA, SSRC=0xCA110002, Seq=488, Time=1524128 
```

Network 10.2.2.0 are the EC2 instance IPs.  172.17.0.0 is being used
inside Docker on one instance.

The problem is in the SIP response from the server side, inside
Docker, which uses the local IP address that it sees in the Contact
line.
```

SIP/2.0 180 Ringing
Via: SIP/2.0/UDP 10.2.2.55:5060;branch=z9hG4bK-24377-1-0
From: sipp <sip:sipp@10.2.2.55:5060>;tag=1
To: sut <sip:service@10.2.2.53:5060>;tag=1SIPpTag012
Call-ID: 1-24377@10.2.2.55
CSeq: 1 INVITE
Contact: <sip:172.17.0.2:5060;transport=UDP>
Content-Length: 0

SIP/2.0 200 OK
Via: SIP/2.0/UDP 10.2.2.55:5060;branch=z9hG4bK-24377-1-0
From: sipp <sip:sipp@10.2.2.55:5060>;tag=1
To: sut <sip:service@10.2.2.53:5060>;tag=1SIPpTag012
Call-ID: 1-24377@10.2.2.55
CSeq: 1 INVITE
Contact: <sip:172.17.0.2:5060;transport=UDP>
Content-Type: application/sdp
Content-Length:   131
```