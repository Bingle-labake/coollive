.class Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;
.super Landroid/os/AsyncTask;
.source "EditHuoDong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/EditHuoDong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditActivityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/EditHuoDong;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/EditHuoDong;Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;-><init>(Lcom/rayclear/videomessage/ui/EditHuoDong;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    .line 241
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/api/edit_activity.json?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, url:Ljava/lang/String;
    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post activity_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v7}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post user_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v7}, Lcom/rayclear/videomessage/common/AppContext;->getUserID(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post title = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v7}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post start_time = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v7}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-wide v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post duration = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v7}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-wide v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post join_num = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v7}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post passwd = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v7}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 252
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v4}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 254
    .local v4, multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v6, "activity_id"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 255
    const-string v6, "user_id"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/AppContext;->getUserID(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 256
    const-string v6, "title"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v8, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v8}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v8

    iget-object v8, v8, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 257
    const-string v6, "start_time"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget-wide v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 258
    const-string v6, "duration"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget-wide v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 259
    const-string v6, "join_num"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 260
    const-string v6, "passwd"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget-object v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 261
    const-string v6, "is_tmp"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget-boolean v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->istmp:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 262
    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 263
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 264
    .local v0, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/AppContext;->getCookieStore(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 265
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.connection.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 266
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.socket.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 267
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 268
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getStatusCode = "

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

    .line 269
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 276
    .end local v0           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v5           #url:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/EditHuoDong;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->access$0(Lcom/rayclear/videomessage/ui/EditHuoDong;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 282
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    const-string v1, "\u6d3b\u52a8\u5df2\u4fee\u6539"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->finish()V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->this$0:Lcom/rayclear/videomessage/ui/EditHuoDong;

    const-string v1, "\u6d3b\u52a8\u4fee\u6539\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
