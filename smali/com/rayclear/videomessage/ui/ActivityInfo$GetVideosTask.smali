.class Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;
.super Landroid/os/AsyncTask;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetVideosTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->flag:Z

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 11
    .parameter "params"

    .prologue
    .line 892
    :try_start_0
    const-string v6, "%s/newapi/my_activity_info.json?device=ios&id=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v10}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 893
    .local v5, url:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 894
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 895
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 896
    .local v0, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v6}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/AppContext;->getCookieStore(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 897
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.connection.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 898
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.socket.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 899
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 900
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpResponse.getStatusLine().getStatusCode() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 901
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 903
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 904
    .local v4, result:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 905
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .end local v0           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 908
    :catch_0
    move-exception v1

    .line 909
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 912
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 11
    .parameter "result"

    .prologue
    .line 916
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 917
    iget-boolean v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->flag:Z

    if-nez v7, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 923
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 924
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v7, "videos"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 925
    .local v6, videosJsonArray:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 926
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    iget-boolean v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->flag:Z

    if-nez v7, :cond_4

    .line 937
    :cond_2
    iget-boolean v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->flag:Z

    if-eqz v7, :cond_0

    .line 942
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 944
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v7

    new-instance v8, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask$1;

    invoke-direct {v8, p0}, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask$1;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 951
    :cond_3
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videoListAdapter:Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$0(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->notifyDataSetChanged()V

    .line 952
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    new-instance v8, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;)V

    #setter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;
    invoke-static {v7, v8}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$4(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;)V

    .line 953
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$5(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 954
    .end local v1           #i:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #size:I
    .end local v6           #videosJsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 955
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 928
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    .restart local v3       #size:I
    .restart local v6       #videosJsonArray:Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 929
    .local v4, videoJsonObject:Lorg/json/JSONObject;
    new-instance v5, Lcom/rayclear/videomessage/model/VideoModel;

    invoke-direct {v5}, Lcom/rayclear/videomessage/model/VideoModel;-><init>()V

    .line 930
    .local v5, videoModel:Lcom/rayclear/videomessage/model/VideoModel;
    const-string v7, "live"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/rayclear/videomessage/model/VideoModel;->live:Z

    .line 931
    const-string v7, "thumb"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/rayclear/videomessage/model/VideoModel;->thumbUrl:Ljava/lang/String;

    .line 932
    const-string v7, "timestamp"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/rayclear/videomessage/model/VideoModel;->timestamp:J

    .line 933
    const-string v7, "videourl_android"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/rayclear/videomessage/model/VideoModel;->videourl_android:Ljava/lang/String;

    .line 934
    const-string v7, "videourl_ios"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/rayclear/videomessage/model/VideoModel;->videourl_ios:Ljava/lang/String;

    .line 935
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
