.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask$1;
.super Ljava/lang/Object;
.source "VideoRecordRtmpFLV.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask$1;->this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1419
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$30()Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 1420
    :try_start_0
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$30()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1419
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask$1;->this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    move-result-object v5

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->chatroomTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$32(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;

    move-result-object v6

    monitor-enter v6

    .line 1424
    :try_start_1
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$30()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 1425
    .local v2, lines:I
    const/4 v3, 0x0

    .line 1427
    .local v3, startIndex:I
    const/4 v5, 0x5

    if-le v2, v5, :cond_0

    .line 1428
    add-int/lit8 v3, v2, -0x5

    .line 1431
    :cond_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1433
    .local v4, totalStyle:Landroid/text/SpannableStringBuilder;
    move v1, v3

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_2

    .line 1441
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask$1;->this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    move-result-object v5

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->chatroomTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$32(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1444
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask$1;->this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    move-result-object v5

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->chatroomTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$32(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;

    move-result-object v6

    monitor-enter v6

    .line 1445
    :try_start_2
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$30()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1446
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask$1;->this$1:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;->access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;)Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    move-result-object v5

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->chatroomTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$32(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1449
    return-void

    .line 1419
    .end local v1           #i:I
    .end local v2           #lines:I
    .end local v3           #startIndex:I
    .end local v4           #totalStyle:Landroid/text/SpannableStringBuilder;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1434
    .restart local v1       #i:I
    .restart local v2       #lines:I
    .restart local v3       #startIndex:I
    .restart local v4       #totalStyle:Landroid/text/SpannableStringBuilder;
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->access$30()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 1435
    .local v0, curStyle:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1436
    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_3

    .line 1437
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1433
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1423
    .end local v0           #curStyle:Landroid/text/SpannableStringBuilder;
    .end local v1           #i:I
    .end local v2           #lines:I
    .end local v3           #startIndex:I
    .end local v4           #totalStyle:Landroid/text/SpannableStringBuilder;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1444
    .restart local v1       #i:I
    .restart local v2       #lines:I
    .restart local v3       #startIndex:I
    .restart local v4       #totalStyle:Landroid/text/SpannableStringBuilder;
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method
