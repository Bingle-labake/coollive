.class public Lcom/rayclear/videomessage/common/AppContext;
.super Ljava/lang/Object;
.source "AppContext.java"


# static fields
.field public static final APP_UPGRADE_LEVEL_MUST_UPGRADE:I = 0x2

.field public static final APP_UPGRADE_LEVEL_NEW_THERE:I = 0x1

.field public static final APP_UPGRADE_LEVEL_NONE:I = 0x0

.field public static final APP_VERSION:Ljava/lang/String; = "a0000111"

.field public static final DEBUG:Z = true

.field public static final NOTIFY_TYPE_APP_LAUNCH:I = 0x1

.field public static final NOTIFY_TYPE_MESSAGE:I = 0x2

.field public static final RECORD_MODE_HARD_ENCODE:I = 0x1

.field public static final RECORD_MODE_NOT_SURE_ENCODE:I = 0x2

.field public static final RECORD_MODE_SOFT_ENCODE:I = 0x0

.field public static apkSize:I = 0x0

.field private static cookieStore:Lorg/apache/http/client/CookieStore; = null

.field public static final createNewActivityURL:Ljava/lang/String; = "/api/new_activity.json"

.field public static final deleteActivityURL:Ljava/lang/String; = "/api/del_activity.json?"

.field public static final editActivityURL:Ljava/lang/String; = "/api/edit_activity.json?"

.field public static encode_mode:I = 0x0

.field public static final endActivityURL:Ljava/lang/String; = "/live/%d/close.json?"

.field public static final forget_passwdURL:Ljava/lang/String; = "/api/password/get?"

.field public static final getMyActivitiesURL:Ljava/lang/String; = "/api/my_activities.json?"

.field public static final getServerAddrAndPortURL:Ljava/lang/String; = "http://yunshivideo.com:9191/api/client/server.json?code=wangju"

.field public static hostAddr:Ljava/lang/String; = null

.field public static hostPort:I = 0x0

.field public static inetAddr:Ljava/lang/String; = null

.field public static isDebugMode:Z = false

.field private static isUserAvailable:Z = false

.field public static final loginURL:Ljava/lang/String; = "/users/sign_in.json"

.field public static newfeatures:Lorg/json/JSONArray; = null

.field private static partyModel:Lcom/rayclear/videomessage/model/PartyModel; = null

.field public static final registerURL:Ljava/lang/String; = "/users/registrations.json?"

.field private static serverAddress:Ljava/lang/String;

.field private static serverAppName:Ljava/lang/String;

.field private static serverPort:I

.field public static ss_key:Ljava/lang/String;

.field private static unAvailableReason:Ljava/lang/String;

.field public static upgradeState:I

.field public static upgradeUrl:Ljava/lang/String;

.field public static userNickNameString:Ljava/lang/String;

.field private static userServerId:I

.field private static usernameString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 44
    const-string v0, "http://yishizhibo.com"

    sput-object v0, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    .line 45
    const-string v0, "yishizhibo.com"

    sput-object v0, Lcom/rayclear/videomessage/common/AppContext;->hostAddr:Ljava/lang/String;

    .line 46
    const/16 v0, 0x50

    sput v0, Lcom/rayclear/videomessage/common/AppContext;->hostPort:I

    .line 67
    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    .line 70
    const/4 v0, 0x2

    sput v0, Lcom/rayclear/videomessage/common/AppContext;->encode_mode:I

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/rayclear/videomessage/common/AppContext;->serverAddress:Ljava/lang/String;

    .line 72
    sput v2, Lcom/rayclear/videomessage/common/AppContext;->serverPort:I

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/rayclear/videomessage/common/AppContext;->serverAppName:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/rayclear/videomessage/common/AppContext;->ss_key:Ljava/lang/String;

    .line 75
    sput-boolean v3, Lcom/rayclear/videomessage/common/AppContext;->isUserAvailable:Z

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/rayclear/videomessage/common/AppContext;->unAvailableReason:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    .line 82
    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 83
    sput v2, Lcom/rayclear/videomessage/common/AppContext;->userServerId:I

    .line 84
    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->userNickNameString:Ljava/lang/String;

    .line 85
    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->usernameString:Ljava/lang/String;

    .line 89
    sput v2, Lcom/rayclear/videomessage/common/AppContext;->upgradeState:I

    .line 90
    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->upgradeUrl:Ljava/lang/String;

    .line 91
    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->newfeatures:Lorg/json/JSONArray;

    .line 92
    sput v3, Lcom/rayclear/videomessage/common/AppContext;->apkSize:I

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCookieStore(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;
    .locals 6
    .parameter "context"

    .prologue
    .line 186
    sget-object v3, Lcom/rayclear/videomessage/common/AppContext;->cookieStore:Lorg/apache/http/client/CookieStore;

    if-nez v3, :cond_0

    .line 188
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    sput-object v3, Lcom/rayclear/videomessage/common/AppContext;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 190
    const-string v3, "appcontext"

    .line 191
    const/4 v4, 0x0

    .line 190
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 192
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    .line 193
    const-string v3, "cookie_name"

    .line 194
    const-string v4, "cookie_name"

    .line 193
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    const-string v4, "cookie_value"

    const-string v5, "cookie_value"

    .line 194
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v0, basicClientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v3, "cookie_version"

    const/4 v4, 0x0

    .line 196
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 199
    const-string v3, "cookie_domain"

    const-string v4, "cookie_domain"

    .line 198
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 201
    const-string v3, "cookie_path"

    const-string v4, "cookie_path"

    .line 200
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 202
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 203
    sget-object v3, Lcom/rayclear/videomessage/common/AppContext;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v3, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0           #basicClientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    sget-object v3, Lcom/rayclear/videomessage/common/AppContext;->cookieStore:Lorg/apache/http/client/CookieStore;

    return-object v3

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "@@@@@@@@@@@@@@@@"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;
    .locals 6
    .parameter "context"

    .prologue
    .line 122
    :try_start_0
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    if-eqz v2, :cond_0

    .line 124
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    .line 145
    :goto_0
    return-object v2

    .line 126
    :cond_0
    new-instance v2, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-direct {v2}, Lcom/rayclear/videomessage/model/PartyModel;-><init>()V

    sput-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    .line 128
    const-string v2, "appcontext"

    const/4 v3, 0x0

    .line 127
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_description"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->description:Ljava/lang/String;

    .line 131
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_duration"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    .line 132
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_id"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    .line 133
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_joinNum"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    .line 134
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_passwd"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    .line 135
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_rtmpUrl"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->rtmpUrl:Ljava/lang/String;

    .line 136
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_shareMessage"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    .line 137
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_starttime"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 138
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_thumburl"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->thumburl:Ljava/lang/String;

    .line 139
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_title"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    .line 140
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v3, "party_urlToken"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_1
    sget-object v2, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static final getServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 263
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->serverAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "appcontext"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "serveraddr"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->serverAddress:Ljava/lang/String;

    .line 268
    .end local v0           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->serverAddress:Ljava/lang/String;

    return-object v1
.end method

.method public static final getServerAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 302
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->serverAppName:Ljava/lang/String;

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "appcontext"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "serverappname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->serverAppName:Ljava/lang/String;

    .line 307
    .end local v0           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->serverAppName:Ljava/lang/String;

    return-object v1
.end method

.method public static final getServerport(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 282
    sget v1, Lcom/rayclear/videomessage/common/AppContext;->serverPort:I

    if-gtz v1, :cond_0

    .line 284
    const-string v1, "appcontext"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "serverport"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rayclear/videomessage/common/AppContext;->serverPort:I

    .line 287
    .end local v0           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    sget v1, Lcom/rayclear/videomessage/common/AppContext;->serverPort:I

    return v1
.end method

.method public static final getUnavailableReason(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 336
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->unAvailableReason:Ljava/lang/String;

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "appcontext"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "unAvailableReason"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->unAvailableReason:Ljava/lang/String;

    .line 341
    .end local v0           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->unAvailableReason:Ljava/lang/String;

    return-object v1
.end method

.method public static final getUserAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 320
    const-string v1, "appcontext"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "available"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final getUserID(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 224
    sget v1, Lcom/rayclear/videomessage/common/AppContext;->userServerId:I

    if-gez v1, :cond_0

    .line 226
    const-string v1, "appcontext"

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "userid"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rayclear/videomessage/common/AppContext;->userServerId:I

    .line 229
    .end local v0           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    sget v1, Lcom/rayclear/videomessage/common/AppContext;->userServerId:I

    return v1
.end method

.method public static final getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 244
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->usernameString:Ljava/lang/String;

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "appcontext"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "usernmae"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rayclear/videomessage/common/AppContext;->usernameString:Ljava/lang/String;

    .line 249
    .end local v0           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->usernameString:Ljava/lang/String;

    return-object v1
.end method

.method public static final saveCookieStore(Landroid/content/Context;Lorg/apache/http/client/CookieStore;)V
    .locals 12
    .parameter "context"
    .parameter "cookieStore"

    .prologue
    .line 152
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    :try_start_0
    sput-object p1, Lcom/rayclear/videomessage/common/AppContext;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 158
    invoke-interface {p1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v6

    .line 159
    .local v6, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 163
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 164
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v5

    .line 165
    .local v5, cookie_version:I
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, cookie_name:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, cookie_value:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, cookie_domain:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, cookie_path:Ljava/lang/String;
    const-string v10, "appcontext"

    const/4 v11, 0x0

    .line 169
    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 171
    .local v9, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 172
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "cookie_version"

    invoke-interface {v8, v10, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v10, "cookie_name"

    invoke-interface {v8, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v10, "cookie_value"

    invoke-interface {v8, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v10, "cookie_domain"

    invoke-interface {v8, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v10, "cookie_path"

    invoke-interface {v8, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v0           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v1           #cookie_domain:Ljava/lang/String;
    .end local v2           #cookie_name:Ljava/lang/String;
    .end local v3           #cookie_path:Ljava/lang/String;
    .end local v4           #cookie_value:Ljava/lang/String;
    .end local v5           #cookie_version:I
    .end local v6           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #sharedPreferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v7

    .line 179
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final savePartyModel(Landroid/content/Context;Lcom/rayclear/videomessage/model/PartyModel;)V
    .locals 6
    .parameter "context"
    .parameter "partyModel"

    .prologue
    .line 98
    :try_start_0
    sput-object p1, Lcom/rayclear/videomessage/common/AppContext;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    .line 100
    const-string v3, "appcontext"

    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 102
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "party_description"

    iget-object v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->description:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v3, "party_passwd"

    iget-object v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v3, "party_rtmpUrl"

    iget-object v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->rtmpUrl:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string v3, "party_shareMessage"

    iget-object v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    const-string v3, "party_thumburl"

    iget-object v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->thumburl:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string v3, "party_title"

    iget-object v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v3, "party_urlToken"

    iget-object v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string v3, "party_duration"

    iget-wide v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v3, "party_id"

    iget v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v3, "party_joinNum"

    iget v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v3, "party_starttime"

    iget-wide v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final saveUserID(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "userid"

    .prologue
    .line 215
    sput p1, Lcom/rayclear/videomessage/common/AppContext;->userServerId:I

    .line 217
    const-string v2, "appcontext"

    const/4 v3, 0x0

    .line 216
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 218
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "userid"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    return-void
.end method

.method public static final saveUserName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "usernmae"

    .prologue
    .line 235
    sput-object p1, Lcom/rayclear/videomessage/common/AppContext;->usernameString:Ljava/lang/String;

    .line 236
    const-string v2, "appcontext"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 237
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "usernmae"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    return-void
.end method

.method public static final setServerAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serveraddr"

    .prologue
    .line 254
    sput-object p1, Lcom/rayclear/videomessage/common/AppContext;->serverAddress:Ljava/lang/String;

    .line 255
    const-string v2, "appcontext"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "serveraddr"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method

.method public static final setServerAppName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "appname"

    .prologue
    .line 293
    sput-object p1, Lcom/rayclear/videomessage/common/AppContext;->serverAppName:Ljava/lang/String;

    .line 294
    const-string v2, "appcontext"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 295
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "serverappname"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    return-void
.end method

.method public static final setServerPort(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "port"

    .prologue
    .line 273
    sput p1, Lcom/rayclear/videomessage/common/AppContext;->serverPort:I

    .line 274
    const-string v2, "appcontext"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 275
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "serverport"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method public static final setUnavailableReason(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 327
    sput-object p1, Lcom/rayclear/videomessage/common/AppContext;->unAvailableReason:Ljava/lang/String;

    .line 328
    const-string v2, "appcontext"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 329
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "unAvailableReason"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method

.method public static final setUserAvaiable(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "available"

    .prologue
    .line 312
    const-string v2, "appcontext"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 313
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "available"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    return-void
.end method
