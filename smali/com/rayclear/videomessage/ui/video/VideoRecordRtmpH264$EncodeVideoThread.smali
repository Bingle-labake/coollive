.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodeVideoThread"
.end annotation


# instance fields
.field private debugPreviousVideoTimestamp:J

.field public volatile flag:Z

.field public frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/rayclear/videomessage/model/SamMediaFrame;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasFirstComming:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V
    .locals 2
    .parameter

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2012
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->frames:Ljava/util/Vector;

    .line 2013
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    .line 2014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->flag:Z

    .line 2015
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->debugPreviousVideoTimestamp:J

    .line 2016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->hasFirstComming:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2010
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    return-void
.end method

.method private encodeFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)[B
    .locals 17
    .parameter "rawframe"

    .prologue
    .line 2169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 2170
    .local v13, inputBuffers:[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 2171
    .local v16, outputBuffers:[Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    check-cast v11, [B

    .line 2173
    .local v11, h264bytes:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2174
    .local v8, begin:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v1

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 2175
    .local v2, inputBufferIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dequeueInputBuffer cost = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2177
    if-ltz v2, :cond_3

    .line 2178
    aget-object v12, v13, v2

    .line 2179
    .local v12, inputBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->isNeedFmtScale:Z
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$40(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2183
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->swsScaledBuffer:[B
    invoke-static {v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$41(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->swsScaledBuffer:[B
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$41(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/rayclear/jni/SWScaleUtil;->formatswsscale([BI[BI)V

    .line 2184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fmt scale then encode,cost = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->swsScaledBuffer:[B
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$41(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)[B

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->swsScaledBuffer:[B
    invoke-static {v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$41(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v12, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->swsScaledBuffer:[B
    invoke-static {v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$41(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)[B

    move-result-object v4

    array-length v4, v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2196
    :goto_0
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 2197
    .local v10, bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v1

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v10, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v15

    .line 2199
    .local v15, outputBufferIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dequeueOutputBuffer cost = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2204
    if-ltz v15, :cond_1

    .line 2205
    aget-object v14, v16, v15

    .line 2206
    .local v14, outputBuffer:Ljava/nio/ByteBuffer;
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_0

    .line 2208
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2209
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2210
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v11, v1, [B

    .line 2211
    invoke-virtual {v14, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2213
    :cond_0
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .end local v14           #outputBuffer:Ljava/nio/ByteBuffer;
    :cond_1
    move-object v1, v11

    .line 2219
    .end local v10           #bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .end local v12           #inputBuffer:Ljava/nio/ByteBuffer;
    .end local v15           #outputBufferIndex:I
    :goto_1
    return-object v1

    .line 2188
    .restart local v12       #inputBuffer:Ljava/nio/ByteBuffer;
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v4, v4

    invoke-virtual {v12, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v4, v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 2193
    .end local v12           #inputBuffer:Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addRawFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 2020
    const-string v0, "add raw video frame to encode"

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2021
    iget-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->flag:Z

    if-nez v0, :cond_0

    .line 2028
    :goto_0
    return-void

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2026
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2027
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public canEnqueueMoreFrame()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2032
    iget-boolean v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->flag:Z

    if-nez v2, :cond_1

    .line 2036
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2047
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2050
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->flag:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->hasFirstComming:Z

    if-eqz v6, :cond_3

    .line 2113
    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->flag:Z

    if-nez v6, :cond_9

    .line 2154
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2157
    :try_start_0
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    .line 2158
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->mediaCodec:Landroid/media/MediaCodec;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/media/MediaCodec;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2163
    :cond_2
    :goto_2
    return-void

    .line 2053
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->frames:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 2055
    const-wide/16 v6, 0x1e

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v0

    .line 2106
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2058
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2059
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->frames:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rayclear/videomessage/model/SamMediaFrame;

    .line 2060
    .local v4, frame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2062
    .local v1, encodeBegin:J
    const/4 v3, 0x0

    check-cast v3, [B

    .line 2063
    .local v3, encodedH264:[B
    const/4 v5, 0x0

    .line 2064
    .local v5, idrcount:I
    :cond_5
    iget-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->flag:Z

    if-nez v6, :cond_8

    .line 2082
    :goto_3
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2084
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 2086
    :cond_6
    iput-object v3, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    .line 2087
    if-eqz v3, :cond_0

    .line 2091
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "enqueue a video frame,length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "interval = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    iget-wide v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->debugPreviousVideoTimestamp:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    invoke-static {v7, v8}, Lcom/rayclear/videomessage/common/SysUtil;->getRealTimeStamp(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2092
    iget-wide v6, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    iput-wide v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->debugPreviousVideoTimestamp:J

    .line 2093
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-boolean v6, v6, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->useRealtime:Z

    if-nez v6, :cond_7

    .line 2095
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->completeFramesFile:Ljava/io/File;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$37(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentOffset:J

    .line 2096
    array-length v6, v3

    int-to-long v6, v6

    iput-wide v6, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentSize:J

    .line 2097
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->completeFileOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$38(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2098
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->completeFileOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$38(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 2099
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cached frame offset = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2100
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    .line 2102
    :cond_7
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->enqueueFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    invoke-static {v6, v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$36(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Lcom/rayclear/videomessage/model/SamMediaFrame;)V

    .line 2103
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "to find first idr cost = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2066
    :cond_8
    invoke-direct {p0, v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->encodeFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)[B

    move-result-object v3

    .line 2067
    if-eqz v3, :cond_5

    .line 2069
    const/4 v6, 0x4

    aget-byte v6, v3, v6

    const/16 v7, 0x65

    if-ne v6, v7, :cond_5

    .line 2071
    add-int/lit8 v5, v5, 0x1

    .line 2072
    if-le v5, v11, :cond_5

    .line 2074
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->hasFirstComming:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2116
    .end local v1           #encodeBegin:J
    .end local v3           #encodedH264:[B
    .end local v4           #frame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    .end local v5           #idrcount:I
    :cond_9
    :try_start_3
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->frames:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_a

    .line 2118
    const-wide/16 v6, 0x1e

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2148
    :catch_1
    move-exception v0

    .line 2149
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2121
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_4
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2122
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->frames:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rayclear/videomessage/model/SamMediaFrame;

    .line 2123
    .restart local v4       #frame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2125
    .restart local v1       #encodeBegin:J
    invoke-direct {p0, v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->encodeFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)[B

    move-result-object v3

    .line 2126
    .restart local v3       #encodedH264:[B
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encode a frame cost = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2127
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 2129
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 2131
    :cond_b
    iput-object v3, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    .line 2132
    if-eqz v3, :cond_1

    .line 2136
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "enqueue a video frame,length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "interval = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    iget-wide v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->debugPreviousVideoTimestamp:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    invoke-static {v7, v8}, Lcom/rayclear/videomessage/common/SysUtil;->getRealTimeStamp(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2137
    iget-wide v6, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    iput-wide v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->debugPreviousVideoTimestamp:J

    .line 2138
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-boolean v6, v6, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->useRealtime:Z

    if-nez v6, :cond_c

    .line 2140
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->completeFramesFile:Ljava/io/File;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$37(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentOffset:J

    .line 2141
    array-length v6, v3

    int-to-long v6, v6

    iput-wide v6, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentSize:J

    .line 2142
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->completeFileOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$38(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2143
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->completeFileOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$38(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 2144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cached frame offset = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2145
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    .line 2147
    :cond_c
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->enqueueFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    invoke-static {v6, v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$36(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 2159
    .end local v1           #encodeBegin:J
    .end local v3           #encodedH264:[B
    .end local v4           #frame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    :catch_2
    move-exception v0

    .line 2160
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method
