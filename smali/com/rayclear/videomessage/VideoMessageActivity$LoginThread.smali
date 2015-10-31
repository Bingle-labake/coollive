.class Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;
.super Ljava/lang/Thread;
.source "VideoMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/VideoMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginThread"
.end annotation


# instance fields
.field private flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/VideoMessageActivity;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/VideoMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/VideoMessageActivity;Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;-><init>(Lcom/rayclear/videomessage/VideoMessageActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 249
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 250
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->flag:Z

    .line 252
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/VideoMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->doLogin(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 256
    .local v1, jsonObject:Lorg/json/JSONObject;
    iget-boolean v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->flag:Z

    if-nez v3, :cond_0

    .line 272
    :goto_1
    return-void

    .line 261
    :cond_0
    :try_start_1
    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 262
    .local v2, statuscode:I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    const-class v6, Lcom/rayclear/videomessage/ui/HomePage2;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/rayclear/videomessage/VideoMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    :goto_2
    iget-object v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/VideoMessageActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 269
    .end local v2           #statuscode:I
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #statuscode:I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    const-class v6, Lcom/rayclear/videomessage/ui/login/Root;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/rayclear/videomessage/VideoMessageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 253
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v2           #statuscode:I
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public stopLogin()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->flag:Z

    .line 277
    return-void
.end method
