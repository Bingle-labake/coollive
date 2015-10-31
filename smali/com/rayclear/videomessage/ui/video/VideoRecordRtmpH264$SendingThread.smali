.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendingThread"
.end annotation


# instance fields
.field private completeReadAccessFile:Ljava/io/RandomAccessFile;

.field private curCacheFileReadSize:J

.field private debugAudioTimestamp:J

.field private debugVideoTimestamp:J

.field public volatile flag:Z

.field public volatile isUploadingLastPart:Z

.field private sendedVideoFrameCount:I

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 2223
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->flag:Z

    .line 2226
    iput-boolean v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->isUploadingLastPart:Z

    .line 2227
    iput v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->sendedVideoFrameCount:I

    .line 2228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->completeReadAccessFile:Ljava/io/RandomAccessFile;

    .line 2229
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->curCacheFileReadSize:J

    .line 2230
    iput-wide v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->debugAudioTimestamp:J

    .line 2231
    iput-wide v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->debugVideoTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2223
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 2234
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2235
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->flag:Z

    .line 2238
    :try_start_0
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-boolean v6, v6, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->useRealtime:Z

    if-nez v6, :cond_0

    .line 2240
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->completeFramesFile:Ljava/io/File;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$37(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/io/File;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->completeReadAccessFile:Ljava/io/RandomAccessFile;

    .line 2243
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->flag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    .line 2323
    :goto_1
    invoke-static {}, Lcom/rayclear/jni/RTMPH264SegmentMuxer;->disConnectRTMP()V

    .line 2325
    return-void

    .line 2245
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sendingQueue:Ljava/util/Vector;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$42(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 2247
    iget-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->isUploadingLastPart:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-boolean v6, v6, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->useRealtime:Z

    if-nez v6, :cond_2

    .line 2249
    const-string v6, "\u7f13\u5b58\u6587\u4ef6\u53d1\u9001\u5b8c\u6bd51\uff0c\u7ed3\u675f!!!!!!!"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2250
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->stopRecord()V
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    .line 2251
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-virtual {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->finish()V

    .line 2253
    :cond_2
    const-wide/16 v6, 0x14

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2320
    :catch_0
    move-exception v2

    .line 2321
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2256
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$43(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2257
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sendingQueue:Ljava/util/Vector;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$42(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/util/Vector;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rayclear/videomessage/model/SamMediaFrame;

    .line 2258
    .local v3, frame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    iget v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 2260
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->videosize:I
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$44(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->videosize:I
    invoke-static {v6, v7}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$45(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 2261
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dequeue video, size = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->videosize:I
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$44(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2263
    :cond_4
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$43(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2264
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video sending queue size = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sendingQueue:Ljava/util/Vector;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$42(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2265
    const/4 v5, 0x0

    .line 2266
    .local v5, result:Z
    iget v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->type:I

    if-nez v6, :cond_7

    .line 2268
    iget-object v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    iget-object v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v7, v7

    iget-wide v8, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    invoke-static {v6, v7, v8, v9}, Lcom/rayclear/jni/RTMPH264SegmentMuxer;->doWriteAudio([BIJ)Z

    move-result v5

    .line 2269
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "send a audio,length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    invoke-static {v7, v8}, Lcom/rayclear/videomessage/common/SysUtil;->getRealTimeStamp(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2270
    iget-wide v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    iget-wide v8, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->debugAudioTimestamp:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    .line 2272
    const-string v6, "#########error audio timestamp!!"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2274
    :cond_5
    iget-wide v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    iput-wide v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->debugAudioTimestamp:J

    .line 2296
    :goto_2
    if-eqz v5, :cond_a

    .line 2298
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->rtmpSendedSize:I
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$22(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v7

    iget-object v8, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v8, v8

    add-int/2addr v7, v8

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->rtmpSendedSize:I
    invoke-static {v6, v7}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$46(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 2306
    iget-boolean v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->isUploadingLastPart:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-boolean v6, v6, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->useRealtime:Z

    if-nez v6, :cond_6

    .line 2308
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-wide v7, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->curCacheFileReadSize:J

    const-wide/16 v9, 0x64

    mul-long/2addr v7, v9

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->completeFramesFile:Ljava/io/File;
    invoke-static {v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$37(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    div-long/2addr v7, v9

    long-to-int v7, v7

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->uploadProgress:I
    invoke-static {v6, v7}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$47(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 2309
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xe3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2310
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sendingQueue:Ljava/util/Vector;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$42(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 2312
    const-string v6, "\u7f13\u5b58\u6587\u4ef6\u53d1\u9001\u5b8c\u6bd5\uff0c\u7ed3\u675f!!!!!!!"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2313
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->stopRecord()V
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    .line 2314
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-virtual {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->finish()V

    .line 2318
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "total send size = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->rtmpSendedSize:I
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$22(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u7edf\u8ba1\u901f\u7387 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->rtmpSendedSize:I
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$22(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->absoluteBeginTime:J
    invoke-static {v11}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$35(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u7edf\u8ba1\u5e27\u7387 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->sendedVideoFrameCount:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->absoluteBeginTime:J
    invoke-static {v11}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$35(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2276
    :cond_7
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-boolean v6, v6, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->useRealtime:Z

    if-nez v6, :cond_8

    .line 2278
    iget-wide v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentSize:J

    long-to-int v6, v6

    new-array v6, v6, [B

    iput-object v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    .line 2279
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->completeReadAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2280
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->completeReadAccessFile:Ljava/io/RandomAccessFile;

    iget-object v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    .line 2281
    .local v4, readsize:I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read cached size ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",should read = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2282
    iget-wide v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentOffset:J

    iget-wide v8, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->cachedFragmentSize:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->curCacheFileReadSize:J

    .line 2284
    .end local v4           #readsize:I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2285
    .local v0, beforeWrite:J
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "#####################"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2286
    iget-object v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Lcom/rayclear/videomessage/common/SysUtil;->debugPrintByteArray([BI)V

    .line 2287
    iget-object v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    iget-object v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v7, v7

    iget-wide v8, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    invoke-static {v6, v7, v8, v9}, Lcom/rayclear/jni/RTMPH264SegmentMuxer;->doWriteVideo([BIJ)Z

    move-result v5

    .line 2288
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "send a video,length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    invoke-static {v7, v8}, Lcom/rayclear/videomessage/common/SysUtil;->getRealTimeStamp(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",send cost = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2289
    iget v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->sendedVideoFrameCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->sendedVideoFrameCount:I

    .line 2290
    iget-wide v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    iget-wide v8, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->debugVideoTimestamp:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_9

    .line 2292
    const-string v6, "#########error video timestamp!!"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2294
    :cond_9
    iget-wide v6, v3, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    iput-wide v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->debugVideoTimestamp:J

    goto/16 :goto_2

    .line 2301
    .end local v0           #beforeWrite:J
    :cond_a
    const-string v6, "\u53d1\u9001\u5931\u8d25"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 2302
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->stopRecord()V
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    .line 2303
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xe8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
