.class public Lcom/rayclear/videomessage/ui/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"


# static fields
.field public static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/VideoViewActivity;->videoView:Landroid/widget/VideoView;

    .line 12
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v1, 0x7f030021

    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/VideoViewActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, videopath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 23
    const v1, 0x7f0800ac

    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/rayclear/videomessage/ui/VideoViewActivity;->videoView:Landroid/widget/VideoView;

    .line 24
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/VideoViewActivity;->videoView:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 25
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/VideoViewActivity;->videoView:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 26
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/VideoViewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 28
    return-void
.end method
