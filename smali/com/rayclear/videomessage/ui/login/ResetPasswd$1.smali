.class Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;
.super Landroid/os/Handler;
.source "ResetPasswd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/login/ResetPasswd;
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 35
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    #getter for: Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->access$0(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 38
    :sswitch_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    const-string v1, "\u8bf7\u8f93\u5165\u6709\u6548\u624b\u673a\u53f7"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 43
    :sswitch_1
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 46
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    const-string v1, "\u91cd\u7f6e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch
.end method
