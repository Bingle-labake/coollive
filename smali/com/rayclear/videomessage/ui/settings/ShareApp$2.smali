.class Lcom/rayclear/videomessage/ui/settings/ShareApp$2;
.super Landroid/content/BroadcastReceiver;
.source "ShareApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/settings/ShareApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    .line 121
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 126
    :try_start_0
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$0(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->getResultCode()I

    move-result v2

    .line 130
    .local v2, result:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 132
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$4(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 133
    const-string v5, "num"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, num:Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, content:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 139
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    const-string v5, "read"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v5, "address"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v5, "body"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    invoke-virtual {v5}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://sms"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_RCV_BROADCAST_COUNT:I
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$7(Lcom/rayclear/videomessage/ui/settings/ShareApp;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    #setter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_RCV_BROADCAST_COUNT:I
    invoke-static {v5, v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$8(Lcom/rayclear/videomessage/ui/settings/ShareApp;I)V

    .line 155
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_RCV_BROADCAST_COUNT:I
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$7(Lcom/rayclear/videomessage/ui/settings/ShareApp;)I

    move-result v5

    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_SENDED_COUNT:I
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$9(Lcom/rayclear/videomessage/ui/settings/ShareApp;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 158
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, smsintent:Landroid/content/Intent;
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    invoke-virtual {v5, v3}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->startActivity(Landroid/content/Intent;)V

    .line 161
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    invoke-virtual {v5}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->finish()V

    .line 170
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #num:Ljava/lang/String;
    .end local v3           #smsintent:Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 167
    :cond_2
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$4(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 151
    .restart local v0       #content:Ljava/lang/String;
    .restart local v1       #num:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 127
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #num:Ljava/lang/String;
    .end local v2           #result:I
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method
