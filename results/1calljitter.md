Single call, 30 seconds of audio, between bare AWS instances, recorded
on the instance running as server

`tshark -nr udp.pcap -q -z rtp,streams`
```
========================= RTP Streams ========================
    Src IP addr  Port    Dest IP addr  Port       SSRC          Payload  Pkts         Lost   Max Delta(ms)  Max Jitter(ms) Mean Jitter(ms) Problems?
      10.2.2.16  6000       10.2.2.57  6000 0xDEE0EE8F ITU-T G.711 PCMA   236     0 (0.0%)           34.77            0.83            0.37 
      10.2.2.57  8194       10.2.2.16  6000 0xCA110001 ITU-T G.711 PCMA   448     0 (0.0%)           20.26            0.49            0.43 
      10.2.2.16  6000       10.2.2.57  6000 0x0E05384E     Unknown(101)    10    -2 (-25.0%)            0.00            0.00            0.00 X
==============================================================
```
