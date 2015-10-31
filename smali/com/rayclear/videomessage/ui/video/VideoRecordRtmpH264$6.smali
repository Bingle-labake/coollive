.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->connectServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    .line 783
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rtmp://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-virtual {v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/rayclear/videomessage/common/AppContext;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-virtual {v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/rayclear/videomessage/common/AppContext;->getServerport(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-virtual {v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/rayclear/videomessage/common/AppContext;->getServerAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-static {v2}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget-object v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, RTMP_PUBLISH_URL:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RTMP_PUBLISH_URL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->initMediaCodec()[B
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$50(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)[B

    move-result-object v7

    .line 793
    .local v7, avcc:[B
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget v1, v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->DES_FRAME_WIDTH:I

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget v2, v2, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->DES_FRAME_HEIGHT:I

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget v3, v3, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->bps:I

    iget-object v4, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget v4, v4, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->fps:I

    const/16 v5, 0x1f40

    const/4 v6, 0x1

    array-length v8, v7

    invoke-static/range {v0 .. v8}, Lcom/rayclear/jni/RTMPH264SegmentMuxer;->connectRTMP(Ljava/lang/String;IIIIII[BI)Z

    move-result v9

    .line 795
    .local v9, result:Z
    if-eqz v9, :cond_0

    .line 797
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xcd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xce

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
