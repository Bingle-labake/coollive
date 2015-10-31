.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$ZoomTask;
.super Ljava/util/TimerTask;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomTask"
.end annotation


# instance fields
.field private volatile flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

.field private zoomid:I


# direct methods
.method public constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$ZoomTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    .line 1761
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$ZoomTask;->flag:Z

    .line 1759
    const/4 v0, 0x0

    iput v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$ZoomTask;->zoomid:I

    .line 1763
    iput p2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$ZoomTask;->zoomid:I

    .line 1764
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$ZoomTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe5

    iget v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$ZoomTask;->zoomid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1768
    return-void
.end method
