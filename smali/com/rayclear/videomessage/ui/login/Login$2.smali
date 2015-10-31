.class Lcom/rayclear/videomessage/ui/login/Login$2;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/login/Login;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/login/Login;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/login/Login;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/Login$2;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login$2;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    #getter for: Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/Login;->access$2(Lcom/rayclear/videomessage/ui/login/Login;)Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login$2;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    #getter for: Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/Login;->access$2(Lcom/rayclear/videomessage/ui/login/Login;)Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->stopLogin()V

    .line 148
    :cond_0
    return-void
.end method
