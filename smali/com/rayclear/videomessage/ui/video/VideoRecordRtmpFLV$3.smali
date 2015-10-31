.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$3;
.super Ljava/lang/Object;
.source "VideoRecordRtmpFLV.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$3;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$3;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->stopRecord()V
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 551
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$3;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->releaseCamera()V
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$40(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 552
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$3;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->finish()V

    .line 553
    return-void
.end method
