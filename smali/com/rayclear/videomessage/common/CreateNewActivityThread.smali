.class public Lcom/rayclear/videomessage/common/CreateNewActivityThread;
.super Ljava/lang/Thread;
.source "CreateNewActivityThread.java"


# instance fields
.field private cookie:Lorg/apache/http/client/CookieStore;

.field private duration:J

.field private failedMessage:I

.field public volatile flag:Z

.field private handler:Landroid/os/Handler;

.field private is_tmp:Z

.field private join_num:J

.field private okMessage:I

.field private passwd:Ljava/lang/String;

.field private startTime:J

.field private title:Ljava/lang/String;

.field private user_id:I


# direct methods
.method public constructor <init>(Lorg/apache/http/client/CookieStore;ILandroid/os/Handler;IILjava/lang/String;JJILjava/lang/String;Z)V
    .locals 2
    .parameter "cookieStore"
    .parameter "userid"
    .parameter "han"
    .parameter "ok"
    .parameter "fail"
    .parameter "titleString"
    .parameter "start"
    .parameter "dura"
    .parameter "joinNum"
    .parameter "passwdString"
    .parameter "isTmp"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->flag:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->handler:Landroid/os/Handler;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->okMessage:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->failedMessage:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->title:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->startTime:J

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->duration:J

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->join_num:J

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->passwd:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->is_tmp:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->user_id:I

    .line 37
    iput-object p3, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->handler:Landroid/os/Handler;

    .line 38
    iput p4, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->okMessage:I

    .line 39
    iput p5, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->failedMessage:I

    .line 40
    iput-object p6, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->title:Ljava/lang/String;

    .line 41
    iput-wide p7, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->startTime:J

    .line 42
    iput-wide p9, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->duration:J

    .line 43
    int-to-long v0, p11

    iput-wide v0, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->join_num:J

    .line 44
    iput-object p12, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->passwd:Ljava/lang/String;

    .line 45
    iput-boolean p13, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->is_tmp:Z

    .line 46
    iput-object p1, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->cookie:Lorg/apache/http/client/CookieStore;

    .line 47
    iput p2, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->user_id:I

    .line 48
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 51
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 53
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->flag:Z

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/api/new_activity.json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, url:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ",title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 56
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v5}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 58
    .local v5, multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v8, "user_id"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v10, Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->user_id:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 59
    const-string v8, "title"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v10, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->title:Ljava/lang/String;

    const-string v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 60
    const-string v8, "start_time"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->startTime:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 61
    const-string v8, "duration"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->duration:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 62
    const-string v8, "join_num"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->join_num:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 63
    const-string v8, "passwd"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->passwd:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 64
    const-string v8, "is_tmp"

    new-instance v9, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->is_tmp:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 65
    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 66
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 67
    .local v1, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.connection.timeout"

    const/16 v10, 0x4e20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 68
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.socket.timeout"

    const/16 v10, 0x4e20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 69
    iget-object v8, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->cookie:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 70
    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 71
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    iget-boolean v8, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->flag:Z

    if-nez v8, :cond_0

    .line 92
    .end local v1           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v7           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 75
    .restart local v1       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v7       #url:Ljava/lang/String;
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 76
    .local v0, code:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getStatusCode = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 77
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_1

    .line 79
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, result:Ljava/lang/String;
    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 81
    iget-object v8, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->handler:Landroid/os/Handler;

    iget v9, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->okMessage:I

    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v0           #code:I
    .end local v1           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    iget-object v8, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->handler:Landroid/os/Handler;

    iget v9, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->failedMessage:I

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 83
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #code:I
    .restart local v1       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v7       #url:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .restart local v6       #result:Ljava/lang/String;
    iget-object v8, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->handler:Landroid/os/Handler;

    iget v9, p0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->failedMessage:I

    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
