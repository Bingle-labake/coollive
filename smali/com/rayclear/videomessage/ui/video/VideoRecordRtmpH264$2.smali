.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$2;
.super Landroid/content/BroadcastReceiver;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$2;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    .line 533
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 535
    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 536
    .local v1, rawlevel:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 537
    .local v2, scale:I
    mul-int/lit8 v3, v1, 0x64

    div-int v0, v3, v2

    .line 538
    .local v0, level:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7535\u6c60\u7535\u91cf = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 539
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$2;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->batteryClipDrawable:Landroid/graphics/drawable/ClipDrawable;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$34(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/graphics/drawable/ClipDrawable;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 541
    return-void
.end method
