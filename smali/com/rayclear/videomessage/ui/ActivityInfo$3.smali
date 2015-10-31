.class Lcom/rayclear/videomessage/ui/ActivityInfo$3;
.super Ljava/lang/Thread;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$3;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    .line 145
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$3;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$3;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-static {v1}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-object v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->thumburl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/SysUtil;->saveThumbUrlToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    return-void
.end method
