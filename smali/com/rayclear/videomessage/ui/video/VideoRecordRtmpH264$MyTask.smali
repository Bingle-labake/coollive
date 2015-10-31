.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;
.super Ljava/util/TimerTask;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTask"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V
    .locals 1
    .parameter

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1713
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
    .locals 1
    .parameter

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask$1;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask$1;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1751
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;->cancel()Z

    .line 1752
    return-void
.end method
