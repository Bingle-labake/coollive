.class Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;
.super Ljava/lang/Thread;
.source "WoDeHuoDong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/WoDeHuoDong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMyActivitiesThread"
.end annotation


# instance fields
.field public volatile flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;-><init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 213
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 215
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/api/my_activities.json?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "user_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    invoke-static {v8}, Lcom/rayclear/videomessage/common/AppContext;->getUserID(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, url:Ljava/lang/String;
    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 217
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 219
    .local v1, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    invoke-static {v7}, Lcom/rayclear/videomessage/common/AppContext;->getCookieStore(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 220
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.connection.timeout"

    const/16 v9, 0x4e20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 221
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.socket.timeout"

    const/16 v9, 0x4e20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 222
    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 223
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    iget-boolean v7, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->flag:Z

    if-nez v7, :cond_0

    .line 244
    .end local v1           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 227
    .restart local v1       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v6       #url:Ljava/lang/String;
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 228
    .local v0, code:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getStatusCode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 229
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_1

    .line 231
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, result:Ljava/lang/String;
    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 233
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$3(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v0           #code:I
    .end local v1           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 240
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$3(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 235
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #code:I
    .restart local v1       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v6       #url:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .restart local v5       #result:Ljava/lang/String;
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$3(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
