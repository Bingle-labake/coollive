.class Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread$1;
.super Ljava/lang/Object;
.source "VideoMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread$1;->this$1:Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 299
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread$1;->this$1:Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;

    #getter for: Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;
    invoke-static {v0}, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->access$1(Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;)Lcom/rayclear/videomessage/VideoMessageActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread$1;->this$1:Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;

    #getter for: Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;
    invoke-static {v2}, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->access$1(Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;)Lcom/rayclear/videomessage/VideoMessageActivity;

    move-result-object v2

    const-class v3, Lcom/rayclear/videomessage/ui/login/Root;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/VideoMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 303
    iget-object v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread$1;->this$1:Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;

    #getter for: Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;
    invoke-static {v0}, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->access$1(Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;)Lcom/rayclear/videomessage/VideoMessageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rayclear/videomessage/VideoMessageActivity;->finish()V

    .line 304
    return-void

    .line 300
    :catch_0
    move-exception v0

    goto :goto_0
.end method
