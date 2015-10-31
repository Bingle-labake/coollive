.class Lcom/rayclear/videomessage/ui/EditHuoDong$1;
.super Ljava/lang/Object;
.source "EditHuoDong.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/EditHuoDong;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/EditHuoDong;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/EditHuoDong;->editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->access$1(Lcom/rayclear/videomessage/ui/EditHuoDong;)Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/EditHuoDong;->editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->access$1(Lcom/rayclear/videomessage/ui/EditHuoDong;)Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method
