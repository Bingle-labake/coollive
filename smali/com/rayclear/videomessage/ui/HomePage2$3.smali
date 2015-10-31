.class Lcom/rayclear/videomessage/ui/HomePage2$3;
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/HomePage2$3;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 145
    invoke-static {}, Lcom/rayclear/videomessage/RayclearApplication;->clearActivitys()V

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/HomePage2$3;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    invoke-virtual {v1}, Lcom/rayclear/videomessage/ui/HomePage2;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, desktopIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/HomePage2$3;->this$0:Lcom/rayclear/videomessage/ui/HomePage2;

    invoke-virtual {v1, v0}, Lcom/rayclear/videomessage/ui/HomePage2;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void

    .line 148
    .end local v0           #desktopIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
