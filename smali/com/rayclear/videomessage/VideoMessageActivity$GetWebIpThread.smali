.class Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;
.super Ljava/lang/Thread;
.source "VideoMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/VideoMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetWebIpThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/VideoMessageActivity;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/VideoMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/VideoMessageActivity;Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;-><init>(Lcom/rayclear/videomessage/VideoMessageActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;)Lcom/rayclear/videomessage/VideoMessageActivity;
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 285
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 286
    iget-object v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    #calls: Lcom/rayclear/videomessage/VideoMessageActivity;->tryToInitServerIpAndPort()V
    invoke-static {v3}, Lcom/rayclear/videomessage/VideoMessageActivity;->access$0(Lcom/rayclear/videomessage/VideoMessageActivity;)V

    .line 287
    iget-object v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/rayclear/videomessage/VideoMessageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 288
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "userphone"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, userphone:Ljava/lang/String;
    const-string v3, "userpasswd"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, password:Ljava/lang/String;
    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    new-instance v4, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;

    iget-object v5, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;-><init>(Lcom/rayclear/videomessage/VideoMessageActivity;Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;)V

    #setter for: Lcom/rayclear/videomessage/VideoMessageActivity;->loginThread:Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;
    invoke-static {v3, v4}, Lcom/rayclear/videomessage/VideoMessageActivity;->access$1(Lcom/rayclear/videomessage/VideoMessageActivity;Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;)V

    .line 294
    iget-object v3, p0, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;->this$0:Lcom/rayclear/videomessage/VideoMessageActivity;

    #getter for: Lcom/rayclear/videomessage/VideoMessageActivity;->loginThread:Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;
    invoke-static {v3}, Lcom/rayclear/videomessage/VideoMessageActivity;->access$2(Lcom/rayclear/videomessage/VideoMessageActivity;)Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rayclear/videomessage/VideoMessageActivity$LoginThread;->start()V

    .line 308
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread$1;

    invoke-direct {v4, p0}, Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread$1;-><init>(Lcom/rayclear/videomessage/VideoMessageActivity$GetWebIpThread;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 305
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
