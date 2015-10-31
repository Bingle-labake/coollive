.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;
.super Ljava/util/TimerTask;
.source "VideoRecordRtmpFLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTask"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V
    .locals 1
    .parameter

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1414
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
    .locals 1
    .parameter

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask$1;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask$1;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1452
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->cancel()Z

    .line 1453
    return-void
.end method
