.class Lcom/rayclear/videomessage/ui/YuSheHuoDong$2;
.super Ljava/lang/Object;
.source "YuSheHuoDong.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/YuSheHuoDong;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$2;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$2;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/YuSheHuoDong;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->access$2(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$2;->this$0:Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/YuSheHuoDong;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->access$2(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->flag:Z

    .line 147
    :cond_0
    return-void
.end method
