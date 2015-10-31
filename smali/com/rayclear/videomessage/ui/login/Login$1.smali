.class Lcom/rayclear/videomessage/ui/login/Login$1;
.super Landroid/os/Handler;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/login/Login;
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/Login$1;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/Login$1;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    #getter for: Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/login/Login;->access$0(Lcom/rayclear/videomessage/ui/login/Login;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 86
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/login/Login$1;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/Login$1;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    const-string v2, "\u8d26\u53f7\u9519\u8bef"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/Login$1;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    const-string v2, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 102
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 104
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/Login$1;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    .end local v0           #reason:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/Login$1;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    const-string v2, "\u767b\u9646\u5931\u8d25"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :pswitch_5
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/Login$1;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    const-string v2, "\u7f51\u7edc\u94fe\u63a5\u9519\u8bef"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
