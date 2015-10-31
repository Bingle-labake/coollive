.class Lcom/rayclear/videomessage/ui/HomePage2$4;
.super Ljava/lang/Object;
.source "HomePage2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/HomePage2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/HomePage2;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/HomePage2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/HomePage2$4;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    sget-object v1, Lcom/rayclear/videomessage/common/AppContext;->upgradeUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/HomePage2$4;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/rayclear/videomessage/ui/HomePage2;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method
