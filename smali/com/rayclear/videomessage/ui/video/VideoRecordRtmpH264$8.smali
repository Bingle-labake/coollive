.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$8;
.super Ljava/util/TimerTask;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->startRecord()V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$8;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    .line 852
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$8;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static {v0, v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$16(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 857
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$8;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 858
    return-void
.end method
