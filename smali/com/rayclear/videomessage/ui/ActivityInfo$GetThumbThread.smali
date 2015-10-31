.class Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;
.super Ljava/lang/Thread;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetThumbThread"
.end annotation


# instance fields
.field public volatile flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 961
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 966
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 969
    :try_start_0
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v4}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 970
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-boolean v4, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->flag:Z

    if-nez v4, :cond_1

    .line 981
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    :goto_1
    return-void

    .line 972
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_1
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;
    invoke-static {v4}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rayclear/videomessage/model/VideoModel;

    .line 973
    .local v3, videoModel:Lcom/rayclear/videomessage/model/VideoModel;
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v4}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/rayclear/videomessage/model/VideoModel;->thumbUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/rayclear/videomessage/common/SysUtil;->saveThumbUrlToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 974
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$6(Lcom/rayclear/videomessage/ui/ActivityInfo;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 977
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #videoModel:Lcom/rayclear/videomessage/model/VideoModel;
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
