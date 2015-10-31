.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$7;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpFLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->startRecord()V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$7;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    .line 773
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 776
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$7;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->isRecording:Z
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$12(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    :goto_1
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$7;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 779
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 781
    :catch_0
    move-exception v0

    goto :goto_1
.end method
