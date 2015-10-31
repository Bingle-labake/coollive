.class Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 433
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

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, textView:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 440
    new-instance v0, Landroid/widget/TextView;

    .end local v0           #textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 441
    .restart local v0       #textView:Landroid/widget/TextView;
    const/high16 v1, 0x41c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 442
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 443
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    move-object p2, v0

    :cond_0
    move-object v0, p2

    .line 446
    check-cast v0, Landroid/widget/TextView;

    .line 447
    packed-switch p1, :pswitch_data_0

    .line 463
    :goto_0
    return-object p2

    .line 449
    :pswitch_0
    const-string v1, "\u4f4e\uff08320*240\uff09"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 452
    :pswitch_1
    const-string v1, "\u4e2d\uff08480*270\uff09"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 455
    :pswitch_2
    const-string v1, "\u9ad8\uff08640*480\uff09"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 458
    :pswitch_3
    const-string v1, "\u9ad8\u6e05\uff081280*720\uff09"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
