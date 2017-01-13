# Results from a single 60-second test call, AWS native

```
========================= RTP Streams ========================
    Src IP addr  Port    Dest IP addr  Port       SSRC          Payload  Pkts         Lost   Max Delta(ms)  Max Jitter(ms) Mean Jitter(ms) Problems?
      10.2.2.57  8192       10.2.2.16  6000 0xCA110000 ITU-T G.711 PCMA  3112     0 (0.0%)           20.51            0.55            0.54 
      10.2.2.16  8192       10.2.2.57  6000 0xCA110000 ITU-T G.711 PCMA  3000     0 (0.0%)           20.57            0.56            0.54 
==============================================================
```

![Jitter at start of single call](https://github.com/jdeglopper/aws-sipp/tree/master/results/aws-single-call.png)
