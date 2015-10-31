.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$11;
.super Ljava/lang/Object;
.source "VideoRecordRtmpFLV.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$14(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->stopRecord()V
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 1125
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->finish()V

    .line 1127
    return-void
.end method
