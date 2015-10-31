.class Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;
.super Landroid/os/Handler;
.source "YuSheHuoDong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/YuSheHuoDong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 63
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->access$0(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 69
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, jsonObject:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/YuSheHuoDong;->checkBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->access$1(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 73
    .local v0, cmb:Landroid/text/ClipboardManager;
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #cmb:Landroid/text/ClipboardManager;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    const-string v4, "\u5df2\u521b\u5efa\u6d3b\u52a8"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 80
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->finish()V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->access$0(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    const-string v4, "\u83b7\u53d6\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
