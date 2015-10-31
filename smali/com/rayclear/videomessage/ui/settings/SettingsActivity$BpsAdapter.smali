.class Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BpsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 472
    const/16 v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 480
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v2, 0xa

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, textView:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 487
    new-instance v0, Landroid/widget/TextView;

    .end local v0           #textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 488
    .restart local v0       #textView:Landroid/widget/TextView;
    const/high16 v1, 0x41c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 489
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 490
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    move-object p2, v0

    :cond_0
    move-object v0, p2

    .line 493
    check-cast v0, Landroid/widget/TextView;

    .line 495
    packed-switch p1, :pswitch_data_0

    .line 539
    :goto_0
    return-object p2

    .line 497
    :pswitch_0
    const-string v1, "BPS 200k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 500
    :pswitch_1
    const-string v1, "BPS 300k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    :pswitch_2
    const-string v1, "BPS 400k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 506
    :pswitch_3
    const-string v1, "BPS 500k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 509
    :pswitch_4
    const-string v1, "BPS 600k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 512
    :pswitch_5
    const-string v1, "BPS 800k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 515
    :pswitch_6
    const-string v1, "BPS 1000k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 518
    :pswitch_7
    const-string v1, "BPS 1200k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 521
    :pswitch_8
    const-string v1, "BPS 1400k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 524
    :pswitch_9
    const-string v1, "BPS 1600k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :pswitch_a
    const-string v1, "BPS 1800k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 530
    :pswitch_b
    const-string v1, "BPS 2000k"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
