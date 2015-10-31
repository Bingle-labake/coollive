.class Lcom/rayclear/videomessage/ui/settings/ShareApp$3;
.super Ljava/lang/Object;
.source "ShareApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/settings/ShareApp;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

.field private final synthetic val$strings:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$3;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    iput-object p2, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$3;->val$strings:[Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$3;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v0

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$3;->val$strings:[Ljava/lang/String;

    aget-object v1, v1, p2

    iput-object v1, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->phoneString:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$3;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$4(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$3;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v2}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    return-void
.end method
