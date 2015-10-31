.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$10;
.super Ljava/util/TimerTask;
.source "VideoRecordRtmpFLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$10;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    .line 1031
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$10;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1034
    return-void
.end method
