.class public Lcom/rayclear/videomessage/ui/login/UseTerms;
.super Landroid/app/Activity;
.source "UseTerms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/UseTerms;->setContentView(I)V

    .line 16
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/UseTerms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rayclear/videomessage/ui/login/UseTerms$1;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/login/UseTerms$1;-><init>(Lcom/rayclear/videomessage/ui/login/UseTerms;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method
