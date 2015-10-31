.class Lcom/rayclear/videomessage/ui/login/UseTerms$1;
.super Ljava/lang/Object;
.source "UseTerms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/login/UseTerms;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/login/UseTerms;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/login/UseTerms;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/UseTerms$1;->this$0:Lcom/rayclear/videomessage/ui/login/UseTerms;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/UseTerms$1;->this$0:Lcom/rayclear/videomessage/ui/login/UseTerms;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/login/UseTerms;->finish()V

    .line 20
    return-void
.end method
