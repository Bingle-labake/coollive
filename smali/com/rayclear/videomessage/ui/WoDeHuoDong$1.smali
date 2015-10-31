.class Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;
.super Landroid/os/Handler;
.source "WoDeHuoDong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/WoDeHuoDong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 50
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 53
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v6

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$0(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 60
    :try_start_1
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->partyModels:Ljava/util/Vector;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$1(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 61
    new-instance v2, Lorg/json/JSONArray;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 63
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v5, :cond_0

    .line 84
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->huoDongListAdapter:Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$2(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 85
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #size:I
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    .restart local v5       #size:I
    :cond_0
    :try_start_2
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 66
    .local v3, jsonObject:Lorg/json/JSONObject;
    new-instance v4, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-direct {v4}, Lcom/rayclear/videomessage/model/PartyModel;-><init>()V

    .line 67
    .local v4, partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    const-string v6, "duration"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    .line 68
    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    .line 69
    const-string v6, "is_tmp"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->istmp:Z

    .line 70
    const-string v6, "join_num"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    .line 71
    const-string v6, "passwd"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    .line 72
    const-string v6, "message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    .line 73
    const-string v6, "start_time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 74
    const-string v6, "title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    .line 75
    const-string v6, "token"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    .line 76
    const-string v6, "rtmp_url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->rtmpUrl:Ljava/lang/String;

    .line 77
    const-string v6, "des"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->description:Ljava/lang/String;

    .line 78
    const-string v6, "thumb"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->thumburl:Ljava/lang/String;

    .line 79
    iget-boolean v6, v4, Lcom/rayclear/videomessage/model/PartyModel;->istmp:Z

    if-nez v6, :cond_1

    .line 81
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->partyModels:Ljava/util/Vector;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$1(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 90
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    .end local v5           #size:I
    :pswitch_2
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$0(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 91
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    const-string v7, "\u83b7\u53d6\u5217\u8868\u5931\u8d25"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
