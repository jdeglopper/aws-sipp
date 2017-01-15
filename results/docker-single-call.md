# Results from a single 60-second test call, Docker on AWS

```
========================= RTP Streams ========================
    Src IP addr  Port    Dest IP addr  Port       SSRC          Payload  Pkts         Lost   Max Delta(ms)  Max Jitter(ms) Mean Jitter(ms) Problems?
      10.2.2.53  8192        10.2.2.4  6000 0xCA110000 ITU-T G.711 PCMA  3000     0 (0.0%)           20.30            0.41            0.25 
       10.2.2.4  8192       10.2.2.53  6000 0xCA110000 ITU-T G.711 PCMA  3112     0 (0.0%)           36.68            2.91            1.45 
==============================================================
```

![Jitter at start of single call](https://raw.githubusercontent.com/jdeglopper/aws-sipp/master/results/docker-single-call.png)
