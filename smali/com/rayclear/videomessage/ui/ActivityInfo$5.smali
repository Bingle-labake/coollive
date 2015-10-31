.class Lcom/rayclear/videomessage/ui/ActivityInfo$5;
.super Ljava/lang/Object;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$5;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 289
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$5;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$1(Lcom/rayclear/videomessage/ui/ActivityInfo;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u5220\u9664\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$5;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$1(Lcom/rayclear/videomessage/ui/ActivityInfo;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 291
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$5;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$7(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$5;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$7(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$5;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    new-instance v1, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$5;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;)V

    #setter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;
    invoke-static {v0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$10(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;)V

    .line 299
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$5;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$7(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    return-void

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0
.end method
