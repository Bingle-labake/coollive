.class Lcom/rayclear/videomessage/ui/ActivityInfo$2;
.super Ljava/lang/Object;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$2;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$2;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$7(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$2;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$7(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$2;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->endActivityTask:Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$8(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$2;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->endActivityTask:Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$8(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$2;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$5(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$2;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$5(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->flag:Z

    .line 142
    :cond_2
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_1

    .line 129
    :catch_1
    move-exception v0

    goto :goto_0
.end method
