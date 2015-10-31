
.method private declared-synchronized initMediaCodec()[B
    .locals 28

    .prologue
    .line 1822
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u662f\u5426\u9700\u8981scale = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->isNeedFmtScale:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1824
    const-string v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    .line 1827
    const-string v3, "video/avc"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->DES_FRAME_WIDTH:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->DES_FRAME_HEIGHT:I

    .line 1826
    invoke-static {v3, v5, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v19

    .line 1828
    .local v19, mediaFormat:Landroid/media/MediaFormat;
    const-string v3, "bitrate"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->bps:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1829
    const-string v3, "frame-rate"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->fps:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1830
    const-string v3, "color-format"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->desMediaCodecFmt:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1831
    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->shouldUse10FPS(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1833
    const-string v3, "i-frame-interval"

    const/4 v5, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1838
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v5, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 1841
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u50cf\u7d20\u539f\u683c\u5f0f = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->srcfmt:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mediacodec \u683c\u5f0f = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->desMediaCodecFmt:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",\u662f\u5426scale = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->isNeedFmtScale:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1844
    const/4 v10, 0x0

    check-cast v10, [B

    .line 1845
    .local v10, avcc:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1846
    .local v17, inputBuffers:[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    .line 1848
    .local v23, outputBuffers:[Ljava/nio/ByteBuffer;
    :cond_0
    :goto_1
    if-eqz v10, :cond_2

    .line 1937
    monitor-exit p0

    return-object v10

    .line 1835
    .end local v10           #avcc:[B
    .end local v17           #inputBuffers:[Ljava/nio/ByteBuffer;
    .end local v23           #outputBuffers:[Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_1
    const-string v3, "i-frame-interval"

    const/4 v5, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1822
    .end local v19           #mediaFormat:Landroid/media/MediaFormat;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1850
    .restart local v10       #avcc:[B
    .restart local v17       #inputBuffers:[Ljava/nio/ByteBuffer;
    .restart local v19       #mediaFormat:Landroid/media/MediaFormat;
    .restart local v23       #outputBuffers:[Ljava/nio/ByteBuffer;
    :cond_2
    :try_start_2
    const-string v3, "to get avcc"

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v7, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 1852
    .local v4, inputBufferIndex:I
    if-ltz v4, :cond_3

    .line 1853
    aget-object v16, v17, v4

    .line 1854
    .local v16, inputBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1855
    move-object/from16 v0, p0

    iget v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->DES_FRAME_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->DES_FRAME_HEIGHT:I

    mul-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v6, v3, 0x2

    .line 1856
    .local v6, zerosize:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-lt v15, v6, :cond_6

    .line 1860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1862
    .end local v6           #zerosize:I
    .end local v15           #i:I
    .end local v16           #inputBuffer:Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1863
    .local v11, bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v7, -0x1

    invoke-virtual {v3, v11, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v22

    .line 1864
    .local v22, outputBufferIndex:I
    const/16 v18, 0x0

    .line 1865
    .local v18, intervalCount:I
    :goto_3
    if-ltz v22, :cond_0

    .line 1867
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bufferInfo.size = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1868
    aget-object v21, v23, v22

    .line 1869
    .local v21, outputBuffer:Ljava/nio/ByteBuffer;
    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_5

    .line 1871
    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1872
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1873
    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v3, [B

    move-object/from16 v20, v0

    .line 1874
    .local v20, nalu:[B
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1875
    const-string v3, "nalu:"

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1876
    if-eqz v20, :cond_4

    .line 1878
    move-object/from16 v0, v20

    array-length v3, v0

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/rayclear/videomessage/common/SysUtil;->debugPrintByteArray([BI)V

    .line 1881
    :cond_4
    if-nez v10, :cond_5

    .line 1883
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v5, 0x3

    const/4 v7, 0x1

    aput-byte v7, v3, v5

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v3, v5}, Lcom/rayclear/videomessage/common/SamSeek;->bufferSeek([B[BI)I

    move-result v3

    add-int/lit8 v26, v3, 0x4

    .line 1884
    .local v26, sps_start_position:I
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v5, 0x3

    const/4 v7, 0x1

    aput-byte v7, v3, v5

    const/4 v5, 0x4

    move-object/from16 v0, v20

    invoke-static {v0, v3, v5}, Lcom/rayclear/videomessage/common/SamSeek;->bufferSeek([B[BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    add-int/lit8 v24, v3, 0x4

    .line 1886
    .local v24, pps_start_position:I
    :try_start_3
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1887
    .local v12, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1888
    .local v13, dataOutputStream:Ljava/io/DataOutputStream;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1889
    add-int/lit8 v3, v26, 0x1

    aget-byte v3, v20, v3

    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1890
    add-int/lit8 v3, v26, 0x2

    aget-byte v3, v20, v3

    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1891
    add-int/lit8 v3, v26, 0x3

    aget-byte v3, v20, v3

    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1892
    const/16 v3, 0xff

    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1893
    const/16 v3, 0xe1

    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1894
    add-int/lit8 v3, v24, -0x4

    sub-int v27, v3, v26

    .line 1895
    .local v27, spslength:I
    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1896
    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1897
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1898
    move-object/from16 v0, v20

    array-length v3, v0

    sub-int v25, v3, v24

    .line 1899
    .local v25, ppslength:I
    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1900
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1901
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->flush()V

    .line 1903
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 1905
    const-string v3, "avcc:"

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1910
    :try_start_4
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1914
    :goto_4
    :try_start_5
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1917
    :goto_5
    if-eqz v10, :cond_5

    .line 1919
    :try_start_6
    array-length v3, v10

    invoke-static {v10, v3}, Lcom/rayclear/videomessage/common/SysUtil;->debugPrintByteArray([BI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 1922
    .end local v12           #byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v13           #dataOutputStream:Ljava/io/DataOutputStream;
    .end local v25           #ppslength:I
    .end local v27           #spslength:I
    :catch_0
    move-exception v14

    .line 1923
    .local v14, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1930
    .end local v14           #e:Ljava/lang/Exception;
    .end local v20           #nalu:[B
    .end local v24           #pps_start_position:I
    .end local v26           #sps_start_position:I
    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v11, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v22

    goto/16 :goto_3

    .line 1858
    .end local v11           #bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .end local v18           #intervalCount:I
    .end local v21           #outputBuffer:Ljava/nio/ByteBuffer;
    .end local v22           #outputBufferIndex:I
    .restart local v6       #zerosize:I
    .restart local v15       #i:I
    .restart local v16       #inputBuffer:Ljava/nio/ByteBuffer;
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1856
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 1911
    .end local v6           #zerosize:I
    .end local v15           #i:I
    .end local v16           #inputBuffer:Ljava/nio/ByteBuffer;
    .restart local v11       #bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .restart local v12       #byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v18       #intervalCount:I
    .restart local v20       #nalu:[B
    .restart local v21       #outputBuffer:Ljava/nio/ByteBuffer;
    .restart local v22       #outputBufferIndex:I
    .restart local v24       #pps_start_position:I
    .restart local v25       #ppslength:I
    .restart local v26       #sps_start_position:I
    .restart local v27       #spslength:I
    :catch_1
    move-exception v3

    goto :goto_4

    .line 1915
    :catch_2
    move-exception v3

    goto :goto_5
.end method
