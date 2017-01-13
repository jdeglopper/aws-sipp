Note that tcpdump may not be able to capture all the traffic, at least not while attempting to capture the entire packet.
```
[ec2-user@ip-10-2-2-57 ~]$ sudo tcpdump -s 0 -w udp400.pcap udp
tcpdump: listening on eth0, link-type EN10MB (Ethernet), capture size
65535 bytes
^C1404761 packets captured
1838467 packets received by filter
433706 packets dropped by kernel
```

It appears to collect most of the data by limiting the snarflen to 512
bytes, which should capture the RTP packets, but 256 bytes is not
enough.

```
[ec2-user@ip-10-2-2-57 ~]$ sudo tcpdump -s 512 -w udp400b.pcap udp
tcpdump: listening on eth0, link-type EN10MB (Ethernet), capture size
512 bytes
^C1764540 packets captured
1768087 packets received by filter
3547 packets dropped by kernel

```

![Sample jitter of one call out of 400](https://github.com/jdeglopper/aws-sipp/tree/master/results/aws-400calls-sample-jitter.png)
