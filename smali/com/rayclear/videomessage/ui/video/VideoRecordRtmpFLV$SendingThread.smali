.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpFLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendingThread"
.end annotation


# instance fields
.field public volatile flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V
    .locals 1
    .parameter

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1598
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1603
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1604
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->flag:Z

    .line 1606
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->flag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 1640
    :goto_1
    invoke-static {}, Lcom/rayclear/jni/RTMPStreamMuxer;->disConnectRTMP()V

    .line 1642
    return-void

    .line 1608
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueue:Ljava/util/Vector;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$37(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1610
    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1613
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$38(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1614
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueue:Ljava/util/Vector;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$37(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Ljava/util/Vector;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rayclear/videomessage/model/SamMediaFrame;

    .line 1615
    .local v1, frame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$38(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1616
    const/4 v2, 0x0

    .line 1617
    .local v2, result:Z
    iget v3, v1, Lcom/rayclear/videomessage/model/SamMediaFrame;->type:I

    if-nez v3, :cond_2

    .line 1619
    iget-object v3, v1, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    iget-object v4, v1, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v4, v4

    invoke-static {v3, v4}, Lcom/rayclear/jni/RTMPStreamMuxer;->doWriteAudio([BI)Z

    move-result v2

    .line 1620
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send a audio,length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1625
    :goto_2
    if-eqz v2, :cond_3

    .line 1627
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->rtmpSendedSize:I
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$22(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I

    move-result v4

    iget-object v5, v1, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v5, v5

    add-int/2addr v4, v5

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->rtmpSendedSize:I
    invoke-static {v3, v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;I)V

    .line 1635
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "total send size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->rtmpSendedSize:I
    invoke-static {v4}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$22(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1622
    :cond_2
    iget-object v3, v1, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    iget-object v4, v1, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v4, v4

    invoke-static {v3, v4}, Lcom/rayclear/jni/RTMPStreamMuxer;->doWriteVideo([BI)Z

    move-result v2

    .line 1623
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send a video,length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    goto :goto_2

    .line 1630
    :cond_3
    const-string v3, "\u53d1\u9001\u5931\u8d25"

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1631
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->stopRecord()V
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 1632
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xe8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
