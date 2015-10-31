.class public Lcom/rayclear/videomessage/ui/login/Root;
.super Landroid/app/Activity;
.source "Root.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 26
    invoke-static {p0}, Lcom/rayclear/videomessage/RayclearApplication;->dequeueActivity(Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 48
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rayclear/videomessage/ui/login/Login;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Root;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rayclear/videomessage/ui/login/Register;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Root;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x7f08006c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    const-string v0, "Root#onConfigurationChanged"

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 38
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Root;->setContentView(I)V

    .line 39
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Root;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Root;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Root;->setContentView(I)V

    .line 19
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Root;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Root;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-static {p0}, Lcom/rayclear/videomessage/RayclearApplication;->enqueueActivity(Landroid/app/Activity;)V

    .line 22
    return-void
.end method
