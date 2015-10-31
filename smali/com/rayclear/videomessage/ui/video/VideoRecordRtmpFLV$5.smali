.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$5;
.super Ljava/lang/Object;
.source "VideoRecordRtmpFLV.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$5;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$5;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$41(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$5;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$41(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->flag:Z

    .line 608
    :cond_0
    return-void
.end method
