.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;
.super Ljava/lang/Object;
.source "VideoRecordRtmpH264.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1400
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-boolean v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->useRealtime:Z

    if-nez v0, :cond_3

    .line 1402
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v1

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCntAtStop:I
    invoke-static {v0, v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$52(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 1403
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->isRecording:Z
    invoke-static {v0, v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$53(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Z)V

    .line 1404
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$54(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$54(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;

    move-result-object v0

    iput-boolean v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;->flag:Z

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;
    invoke-static {v0, v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$55(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$EncodeVideoThread;)V

    .line 1409
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$56(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$56(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;

    move-result-object v0

    iput-boolean v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->flag:Z

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;
    invoke-static {v0, v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$57(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;)V

    .line 1414
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$58(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1416
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$58(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$SendingThread;->isUploadingLastPart:Z

    .line 1418
    :cond_2
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->uploadProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$10(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1425
    :goto_0
    return-void

    .line 1420
    :cond_3
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$14(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1421
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->stopRecord()V
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    .line 1422
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$11;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->finish()V

    goto :goto_0
.end method
