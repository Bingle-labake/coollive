.class Lcom/rayclear/videomessage/ui/login/Login$LoginThread;
.super Ljava/lang/Thread;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/login/Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginThread"
.end annotation


# instance fields
.field private volatile flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/login/Login;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/login/Login;)V
    .locals 1
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/login/Login;Lcom/rayclear/videomessage/ui/login/Login$LoginThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;-><init>(Lcom/rayclear/videomessage/ui/login/Login;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 248
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 249
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->flag:Z

    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/ui/login/Login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->doLogin(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 253
    .local v2, jsonObject:Lorg/json/JSONObject;
    iget-boolean v3, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->flag:Z

    if-nez v3, :cond_0

    .line 272
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 257
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, code:I
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    const-class v6, Lcom/rayclear/videomessage/ui/HomePage2;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/rayclear/videomessage/ui/login/Login;->startActivity(Landroid/content/Intent;)V

    .line 261
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/ui/login/Login;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v0           #code:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #code:I
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->this$0:Lcom/rayclear/videomessage/ui/login/Login;

    #getter for: Lcom/rayclear/videomessage/ui/login/Login;->loginHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/login/Login;->access$1(Lcom/rayclear/videomessage/ui/login/Login;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "\u767b\u9646\u5931\u8d25"

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public stopLogin()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->flag:Z

    .line 277
    return-void
.end method
