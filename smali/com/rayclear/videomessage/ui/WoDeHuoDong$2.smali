.class Lcom/rayclear/videomessage/ui/WoDeHuoDong$2;
.super Ljava/lang/Object;
.source "WoDeHuoDong.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/WoDeHuoDong;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$2;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$2;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$4(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$2;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$4(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->flag:Z

    .line 118
    :cond_0
    return-void
.end method
