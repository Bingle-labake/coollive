.class Lcom/rayclear/videomessage/ui/login/Register$1;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/login/Register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/login/Register;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/login/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/Register$1;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register$1;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    #getter for: Lcom/rayclear/videomessage/ui/login/Register;->registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/Register;->access$4(Lcom/rayclear/videomessage/ui/login/Register;)Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register$1;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    #getter for: Lcom/rayclear/videomessage/ui/login/Register;->registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/Register;->access$4(Lcom/rayclear/videomessage/ui/login/Register;)Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method
