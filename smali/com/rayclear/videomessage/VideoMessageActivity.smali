.class public Lcom/rayclear/videomessage/VideoMessageActivity;
.super Landroid/app/Activity;
.source "VideoMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;,
        Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;
    }
.end annotation


# static fields
.field private static final MESSAGE_LOGIN_FAIL:I = 0x0

.field private static final MESSAGE_NO_NETWORK:I = 0x1


# instance fields
.field private loginThread:Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity;->loginThread:Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/VideoMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/rayclear/videomessage/VideoMessageActivity;->tryToInitServerIpAndPort()V

    return-void
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/VideoMessageActivity;Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/rayclear/videomessage/VideoMessageActivity;->loginThread:Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;

    return-void
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/VideoMessageActivity;)Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity;->loginThread:Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;

    return-object v0
.end method

.method private tryToGetSupportedCameraSize()V
    .locals 15

    .prologue
    .line 180
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "tryToGetSupportedCameraSize"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    const-string v11, "pref"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/rayclear/videomessage/VideoMessageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 185
    .local v7, sharedPreferences:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v11, "camera_sizelist"

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 186
    .local v6, savedSizes:Ljava/lang/String;
    const/4 v9, 0x0

    .line 188
    .local v9, sizes:Lorg/json/JSONArray;
    if-nez v6, :cond_2

    .line 190
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    .line 191
    .local v1, camera:Landroid/hardware/Camera;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 192
    .end local v9           #sizes:Lorg/json/JSONArray;
    .local v10, sizes:Lorg/json/JSONArray;
    if-eqz v1, :cond_4

    .line 194
    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 195
    .local v0, camParams:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 196
    .local v5, pvResolutions:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 204
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 205
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "camera_sizelist"

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    const/4 v3, 0x0

    .line 208
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v10

    .line 220
    .end local v0           #camParams:Landroid/hardware/Camera$Parameters;
    .end local v1           #camera:Landroid/hardware/Camera;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #pvResolutions:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v10           #sizes:Lorg/json/JSONArray;
    .restart local v9       #sizes:Lorg/json/JSONArray;
    :goto_1
    :try_start_3
    sget-boolean v11, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v11, :cond_0

    .line 222
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 240
    .end local v6           #savedSizes:Ljava/lang/String;
    .end local v9           #sizes:Lorg/json/JSONArray;
    :cond_0
    :goto_2
    return-void

    .line 196
    .restart local v0       #camParams:Landroid/hardware/Camera$Parameters;
    .restart local v1       #camera:Landroid/hardware/Camera;
    .restart local v5       #pvResolutions:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v6       #savedSizes:Ljava/lang/String;
    .restart local v10       #sizes:Lorg/json/JSONArray;
    :cond_1
    :try_start_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 198
    .local v8, size:Landroid/hardware/Camera$Size;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .local v4, object:Lorg/json/JSONObject;
    const-string v12, "width"

    iget v13, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    const-string v12, "height"

    iget v13, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    iget v14, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 224
    .end local v0           #camParams:Landroid/hardware/Camera$Parameters;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #pvResolutions:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v8           #size:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v11

    move-object v9, v10

    .end local v10           #sizes:Lorg/json/JSONArray;
    .restart local v9       #sizes:Lorg/json/JSONArray;
    goto :goto_2

    .line 214
    .end local v1           #camera:Landroid/hardware/Camera;
    :cond_2
    :try_start_5
    sget-boolean v11, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v11, :cond_3

    .line 216
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    :cond_3
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v9           #sizes:Lorg/json/JSONArray;
    .restart local v10       #sizes:Lorg/json/JSONArray;
    move-object v9, v10

    .end local v10           #sizes:Lorg/json/JSONArray;
    .restart local v9       #sizes:Lorg/json/JSONArray;
    goto :goto_1

    .line 232
    .end local v6           #savedSizes:Ljava/lang/String;
    .end local v9           #sizes:Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 234
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v11, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v11, :cond_0

    .line 236
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 224
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #savedSizes:Ljava/lang/String;
    .restart local v9       #sizes:Lorg/json/JSONArray;
    :catch_2
    move-exception v11

    goto :goto_2

    .end local v9           #sizes:Lorg/json/JSONArray;
    .restart local v1       #camera:Landroid/hardware/Camera;
    .restart local v10       #sizes:Lorg/json/JSONArray;
    :cond_4
    move-object v9, v10

    .end local v10           #sizes:Lorg/json/JSONArray;
    .restart local v9       #sizes:Lorg/json/JSONArray;
    goto :goto_1
.end method

.method private tryToInitServerIpAndPort()V
    .locals 10

    .prologue
    .line 144
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v7, "http://yunshivideo.com:9191/api/client/server.json?code=wangju"

    invoke-direct {v1, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "getServerAddrAndPortURL = http://yunshivideo.com:9191/api/client/server.json?code=wangju"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 148
    .local v0, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 149
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get server ip code = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    .line 152
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, resultString:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v7, "web"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, web:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 157
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/rayclear/videomessage/common/AppContext;->hostAddr:Ljava/lang/String;

    .line 158
    invoke-virtual {v5}, Landroid/net/Uri;->getPort()I

    move-result v7

    sput v7, Lcom/rayclear/videomessage/common/AppContext;->hostPort:I

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/rayclear/videomessage/common/AppContext;->hostAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/rayclear/videomessage/common/AppContext;->hostPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #resultString:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #web:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    :goto_0
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v7

    goto :goto_1

    .line 167
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v7

    goto :goto_1

    .line 163
    :catch_2
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 133
    iget-object v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity;->loginThread:Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity;->loginThread:Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->stopLogin()V

    .line 137
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 107
    invoke-static {p0}, Lcom/rayclear/videomessage/common/SysUtil;->clearApp(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const v2, 0x7f03000f

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####onConfigurationChanged"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 122
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####\u6a2a\u5c4f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/VideoMessageActivity;->setContentView(I)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####\u7ad6\u5c4f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/VideoMessageActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v4, "\u7248\u672c 2014.6.11"

    invoke-static {v4}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/rayclear/videomessage/VideoMessageActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 79
    .local v2, phoneFile:Ljava/io/File;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "this.getFilesDir().getAbsolutePath() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/io/File;

    const-string v4, "aaa.test"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "onCreate!!!!!!!!!!!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/rayclear/videomessage/VideoMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "52aa7f8546b7c20cae000001"

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/json/JSONObject;

    invoke-static {v4, v5, v6}, Lcom/crittercism/app/Crittercism;->init(Landroid/content/Context;Ljava/lang/String;[Lorg/json/JSONObject;)Z

    .line 94
    invoke-static {}, Lcom/rayclear/videomessage/RayclearApplication;->clearActivitys()V

    .line 95
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "this app ver is a0000111"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Lcom/rayclear/videomessage/VideoMessageActivity;->setContentView(I)V

    .line 97
    new-instance v3, Lcom/rayclear/videomessage/common/SDcardUtil;

    invoke-direct {v3, p0}, Lcom/rayclear/videomessage/common/SDcardUtil;-><init>(Landroid/content/Context;)V

    .line 98
    .local v3, sDcardUtil:Lcom/rayclear/videomessage/common/SDcardUtil;
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Lcom/rayclear/videomessage/VideoMessageActivity;->tryToGetSupportedCameraSize()V

    .line 102
    new-instance v4, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;-><init>(Lcom/rayclear/videomessage/VideoMessageActivity;Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;)V

    invoke-virtual {v4}, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->start()V

    .line 103
    return-void

    .line 83
    .end local v3           #sDcardUtil:Lcom/rayclear/videomessage/common/SDcardUtil;
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "###############"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####onNewIntent"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method
