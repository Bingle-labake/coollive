.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->onAutoFocus(ZLandroid/hardware/Camera;)V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    .line 901
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
    .locals 1
    .parameter

    .prologue
    .line 901
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 904
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9$1;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9$1;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 912
    return-void

    .line 905
    :catch_0
    move-exception v0

    goto :goto_0
.end method
