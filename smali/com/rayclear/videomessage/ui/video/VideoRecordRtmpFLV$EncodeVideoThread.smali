.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpFLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodeVideoThread"
.end annotation


# instance fields
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

.field private lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V
    .locals 1
    .parameter

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1549
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->frames:Ljava/util/Vector;

    .line 1550
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    .line 1551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1547
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    return-void
.end method


# virtual methods
.method public addRawFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1556
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1557
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1558
    return-void
.end method

.method public canEnqueueMoreFrame()Z
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1567
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1569
    :goto_0
    iget-boolean v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->flag:Z

    if-nez v3, :cond_0

    .line 1594
    return-void

    .line 1572
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->frames:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1574
    const-wide/16 v3, 0x1e

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1577
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1578
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->frames:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rayclear/videomessage/model/SamMediaFrame;

    .line 1579
    .local v2, frame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1580
    iget-object v3, v2, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    iget-object v4, v2, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v4, v4

    iget-wide v5, v2, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    invoke-static {v3, v4, v5, v6}, Lcom/rayclear/jni/RTMPStreamMuxer;->encodeVideoFrame([BIJ)[B

    move-result-object v1

    .line 1581
    .local v1, flvFrame:[B
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1583
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, v2, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1585
    :cond_2
    iput-object v1, v2, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    .line 1586
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enqueue a video frame,length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    invoke-static {v4, v5}, Lcom/rayclear/videomessage/common/SysUtil;->getRealTimeStamp(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1587
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->enqueueFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    invoke-static {v3, v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$36(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
