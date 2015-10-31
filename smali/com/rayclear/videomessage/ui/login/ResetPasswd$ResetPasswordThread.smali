.class Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;
.super Ljava/lang/Thread;
.source "ResetPasswd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/login/ResetPasswd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetPasswordThread"
.end annotation


# instance fields
.field private flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/login/ResetPasswd;Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;-><init>(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    .line 151
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 152
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->flag:Z

    .line 153
    iget-object v8, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    #getter for: Lcom/rayclear/videomessage/ui/login/ResetPasswd;->phoneEditText:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->access$1(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, userphone:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/api/password/get?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "phone="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, urlString:Ljava/lang/String;
    sget-boolean v8, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v8, :cond_0

    .line 157
    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 160
    :cond_0
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 162
    .local v0, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 163
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    iget-boolean v8, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->flag:Z

    if-nez v8, :cond_1

    .line 193
    .end local v0           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 167
    .restart local v0       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_1
    sget-boolean v8, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v8, :cond_2

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "httpResponse.getStatusLine().getStatusCode()="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 171
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_4

    .line 173
    iget-object v8, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    #getter for: Lcom/rayclear/videomessage/ui/login/ResetPasswd;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->access$2(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v0           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v8, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v8, :cond_3

    .line 187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    :cond_3
    iget-object v8, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    #getter for: Lcom/rayclear/videomessage/ui/login/ResetPasswd;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->access$2(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 176
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, resultString:Ljava/lang/String;
    sget-boolean v8, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v8, :cond_5

    .line 179
    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 181
    :cond_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    .local v4, jsonObject:Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->this$0:Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    #getter for: Lcom/rayclear/videomessage/ui/login/ResetPasswd;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->access$2(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x8

    const-string v10, "reason"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public stopReset()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->flag:Z

    .line 147
    return-void
.end method
