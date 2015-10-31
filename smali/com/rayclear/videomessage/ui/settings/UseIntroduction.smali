.class public Lcom/rayclear/videomessage/ui/settings/UseIntroduction;
.super Landroid/app/Activity;
.source "UseIntroduction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/UseIntroduction;->setContentView(I)V

    .line 15
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/UseIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rayclear/videomessage/ui/settings/UseIntroduction$1;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/settings/UseIntroduction$1;-><init>(Lcom/rayclear/videomessage/ui/settings/UseIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method
