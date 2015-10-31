.class Lcom/rayclear/videomessage/ui/settings/UseIntroduction$1;
.super Ljava/lang/Object;
.source "UseIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/settings/UseIntroduction;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/settings/UseIntroduction;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/settings/UseIntroduction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/UseIntroduction$1;->this$0:Lcom/rayclear/videomessage/ui/settings/UseIntroduction;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/UseIntroduction$1;->this$0:Lcom/rayclear/videomessage/ui/settings/UseIntroduction;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/settings/UseIntroduction;->finish()V

    .line 19
    return-void
.end method
