.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$4;
.super Ljava/lang/Object;
.source "VideoRecordRtmpH264.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$4;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 619
    const-string v0, "onDismiss$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$4;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->finish()V

    .line 621
    return-void
.end method
