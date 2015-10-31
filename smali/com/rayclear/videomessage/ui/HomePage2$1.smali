.class Lcom/rayclear/videomessage/ui/HomePage2$1;
.super Landroid/os/Handler;
.source "HomePage2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/HomePage2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/HomePage2;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/HomePage2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 79
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    #getter for: Lcom/rayclear/videomessage/ui/HomePage2;->getChannelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/rayclear/videomessage/ui/HomePage2;->access$0(Lcom/rayclear/videomessage/ui/HomePage2;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 87
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-direct {v1}, Lcom/rayclear/videomessage/model/PartyModel;-><init>()V

    .line 89
    .local v1, partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    .line 90
    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    invoke-static {v2, v1}, Lcom/rayclear/videomessage/common/AppContext;->savePartyModel(Landroid/content/Context;Lcom/rayclear/videomessage/model/PartyModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    .end local v1           #partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    :goto_1
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    invoke-static {v2}, Lcom/rayclear/videomessage/camera/CameraProvider;->canUseAdvancedCodec(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    const-class v5, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/rayclear/videomessage/ui/HomePage2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    const-class v5, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/rayclear/videomessage/ui/HomePage2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    #getter for: Lcom/rayclear/videomessage/ui/HomePage2;->getChannelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/rayclear/videomessage/ui/HomePage2;->access$0(Lcom/rayclear/videomessage/ui/HomePage2;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 105
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/HomePage2$1;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    const-string v3, "\u83b7\u53d6\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
