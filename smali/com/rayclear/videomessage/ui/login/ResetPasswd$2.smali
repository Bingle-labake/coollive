.class Lcom/rayclear/videomessage/ui/login/ResetPasswd$2;
.super Ljava/lang/Object;
.source "ResetPasswd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/login/ResetPasswd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$2;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$2;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    #getter for: Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->access$3(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$2;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    #getter for: Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->access$3(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->stopReset()V

    .line 75
    :cond_0
    return-void
.end method
