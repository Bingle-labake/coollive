.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpFLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->connectServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    .line 717
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rtmp://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/AppContext;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/AppContext;->getServerport(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/AppContext;->getServerAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-static {v3}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-object v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, RTMP_PUBLISH_URL:Ljava/lang/String;
    const-string v2, "/live/"

    const-string v3, "/fmle/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RTMP_PUBLISH_URL = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 728
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    iget v2, v2, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    iget v3, v3, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    iget-object v4, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    iget v4, v4, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->bps:I

    invoke-static {v0, v2, v3, v4}, Lcom/rayclear/jni/RTMPStreamMuxer;->connectRTMP(Ljava/lang/String;III)Z

    move-result v1

    .line 730
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 732
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xcd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 736
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fde\u63a5 result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 737
    return-void

    .line 734
    :cond_0
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xce

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
