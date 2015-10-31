.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9$1;
.super Ljava/lang/Object;
.source "VideoRecordRtmpH264.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9$1;->this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9$1;->this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;->access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$9;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-result-object v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->autoFocusView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$51(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    return-void
.end method
