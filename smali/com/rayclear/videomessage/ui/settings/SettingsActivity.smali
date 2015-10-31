.class public Lcom/rayclear/videomessage/ui/settings/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;,
        Lcom/rayclear/videomessage/ui/settings/SettingsActivity$FpsAdapter;,
        Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHANGE_QUALITY:I = 0x0

.field private static final MESSAGE_SHOW_RAW_WORDS:I = 0x1

.field public static final RESULT_QUALITY_CHANGED:I = 0xa

.field public static final RESULT_QUALITY_NOCHANGE:I = 0xb


# instance fields
.field private bpsAlertDialog:Landroid/app/AlertDialog;

.field private bpsTextView:Landroid/widget/TextView;

.field private fpsAlertDialog:Landroid/app/AlertDialog;

.field handler:Landroid/os/Handler;

.field private qualityAlertDialog:Landroid/app/AlertDialog;

.field private showFpsTextView:Landroid/widget/TextView;

.field private showqualityTextView:Landroid/widget/TextView;

.field private supportedQualitys:Lorg/json/JSONArray;

.field private usernameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->supportedQualitys:Lorg/json/JSONArray;

    .line 81
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showFpsTextView:Landroid/widget/TextView;

    .line 85
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->bpsTextView:Landroid/widget/TextView;

    .line 87
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->usernameTextView:Landroid/widget/TextView;

    .line 90
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->qualityAlertDialog:Landroid/app/AlertDialog;

    .line 91
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->bpsAlertDialog:Landroid/app/AlertDialog;

    .line 92
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->fpsAlertDialog:Landroid/app/AlertDialog;

    .line 94
    new-instance v0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$1;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->handler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method private setBPS(I)V
    .locals 3
    .parameter "bps"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->bpsTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6e\u7801\u7387 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 277
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->qualityAlertDialog:Landroid/app/AlertDialog;

    if-ne p1, v3, :cond_1

    .line 279
    const-string v3, "qualityAlertDialog"

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 280
    packed-switch p2, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v4, "320*240"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-static {p0, v5}, Lcom/rayclear/videomessage/camera/CameraProvider;->setRecordSizePref(Landroid/content/Context;I)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v4, "480*270"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/rayclear/videomessage/camera/CameraProvider;->setRecordSizePref(Landroid/content/Context;I)V

    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v4, "640*480"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/rayclear/videomessage/camera/CameraProvider;->setRecordSizePref(Landroid/content/Context;I)V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v4, "1280*720"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/rayclear/videomessage/camera/CameraProvider;->setRecordSizePref(Landroid/content/Context;I)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->bpsAlertDialog:Landroid/app/AlertDialog;

    if-ne p1, v3, :cond_2

    .line 302
    const-string v3, "bpsAlertDialog"

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 303
    const-string v3, "pref"

    invoke-virtual {p0, v3, v4}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 304
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 305
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 306
    .local v0, bps:I
    packed-switch p2, :pswitch_data_1

    .line 346
    :goto_1
    const-string v3, "videobps"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    invoke-direct {p0, v0}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->setBPS(I)V

    goto :goto_0

    .line 308
    :pswitch_4
    const v0, 0x30d40

    .line 309
    goto :goto_1

    .line 311
    :pswitch_5
    const v0, 0x493e0

    .line 312
    goto :goto_1

    .line 314
    :pswitch_6
    const v0, 0x61a80

    .line 315
    goto :goto_1

    .line 317
    :pswitch_7
    const v0, 0x7a120

    .line 318
    goto :goto_1

    .line 320
    :pswitch_8
    const v0, 0x927c0

    .line 321
    goto :goto_1

    .line 323
    :pswitch_9
    const v0, 0xc3500

    .line 324
    goto :goto_1

    .line 326
    :pswitch_a
    const v0, 0xf4240

    .line 327
    goto :goto_1

    .line 329
    :pswitch_b
    const v0, 0x124f80

    .line 330
    goto :goto_1

    .line 332
    :pswitch_c
    const v0, 0x155cc0

    .line 333
    goto :goto_1

    .line 335
    :pswitch_d
    const v0, 0x186a00

    .line 336
    goto :goto_1

    .line 338
    :pswitch_e
    const v0, 0x1b7740

    .line 339
    goto :goto_1

    .line 341
    :pswitch_f
    const v0, 0x1e8480

    .line 342
    goto :goto_1

    .line 349
    .end local v0           #bps:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->fpsAlertDialog:Landroid/app/AlertDialog;

    if-ne p1, v3, :cond_0

    .line 350
    const-string v3, "fpsAlertDialog"

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 351
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 353
    :pswitch_10
    invoke-static {p0, v4}, Lcom/rayclear/videomessage/camera/CameraProvider;->setIfUse10FPS(Landroid/content/Context;Z)V

    .line 354
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showFpsTextView:Landroid/widget/TextView;

    const-string v4, "\u8bbe\u7f6e\u5e27\u7387 15fps"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 357
    :pswitch_11
    invoke-static {p0, v5}, Lcom/rayclear/videomessage/camera/CameraProvider;->setIfUse10FPS(Landroid/content/Context;Z)V

    .line 358
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showFpsTextView:Landroid/widget/TextView;

    const-string v4, "\u8bbe\u7f6e\u5e27\u7387 10fps"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 306
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 351
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 419
    :goto_0
    :sswitch_0
    return-void

    .line 373
    :sswitch_1
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->fpsAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 376
    :sswitch_2
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->bpsAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 379
    :sswitch_3
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->finish()V

    goto :goto_0

    .line 384
    :sswitch_4
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->qualityAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 387
    :sswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    const-string v2, "\u662f\u5426\u6ce8\u9500\u767b\u5f55\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 389
    const-string v2, "\u6ce8\u9500"

    new-instance v3, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$5;

    invoke-direct {v3, p0}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$5;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 402
    const-string v2, "\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 404
    .local v0, logoutAlertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 408
    .end local v0           #logoutAlertDialog:Landroid/app/AlertDialog;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rayclear/videomessage/ui/settings/ShareApp;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 411
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rayclear/videomessage/ui/settings/UseIntroduction;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 414
    :sswitch_8
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    :sswitch_data_0
    .sparse-switch
        0x7f080000 -> :sswitch_3
        0x7f08007d -> :sswitch_4
        0x7f080080 -> :sswitch_2
        0x7f080082 -> :sswitch_1
        0x7f080088 -> :sswitch_0
        0x7f08008b -> :sswitch_5
        0x7f08008c -> :sswitch_8
        0x7f08008e -> :sswitch_6
        0x7f08008f -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v10, 0x7f030016

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->setContentView(I)V

    .line 120
    const v10, 0x7f08007f

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    .line 121
    const v10, 0x7f080083

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showFpsTextView:Landroid/widget/TextView;

    .line 123
    const v10, 0x7f08007d

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v10, 0x7f08008b

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v10, 0x7f08008e

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/high16 v10, 0x7f08

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v10, 0x7f08008f

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v10, 0x7f080088

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v10, 0x7f080080

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v10, 0x7f08008c

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v10, 0x7f080082

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v10, 0x7f08008a

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->usernameTextView:Landroid/widget/TextView;

    .line 141
    const-string v10, "pref"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 142
    .local v5, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->usernameTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v10, "camera_sizelist"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, qualityliststring:Ljava/lang/String;
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->supportedQualitys:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    invoke-static {p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->getUserFrameSizeSet(Landroid/app/Activity;)I

    move-result v3

    .line 152
    .local v3, qualityset:I
    packed-switch v3, :pswitch_data_0

    .line 178
    :goto_1
    const v10, 0x7f080081

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->bpsTextView:Landroid/widget/TextView;

    .line 179
    invoke-static {p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->getUserSetVideoBps(Landroid/content/Context;)I

    move-result v1

    .line 180
    .local v1, bps:I
    invoke-direct {p0, v1}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->setBPS(I)V

    .line 183
    invoke-static {p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->shouldUse10FPS(Landroid/content/Context;)Z

    move-result v6

    .line 184
    .local v6, use10fps:Z
    const v10, 0x7f080086

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 185
    .local v7, use10fpsCheckBox:Landroid/widget/CheckBox;
    if-eqz v6, :cond_0

    .line 187
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showFpsTextView:Landroid/widget/TextView;

    const-string v11, "\u8bbe\u7f6e\u5e27\u7387 30fps"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 192
    new-instance v10, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$2;

    invoke-direct {v10, p0}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$2;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    const-string v11, "\u9009\u62e9\u5206\u8fa8\u7387:"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 204
    new-instance v11, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;Lcom/rayclear/videomessage/ui/settings/SettingsActivity$QualityAdapter;)V

    invoke-virtual {v10, v11, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 205
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 202
    iput-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->qualityAlertDialog:Landroid/app/AlertDialog;

    .line 206
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->qualityAlertDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 208
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    const-string v11, "\u9009\u62e9\u7801\u7387:"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 210
    new-instance v11, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;Lcom/rayclear/videomessage/ui/settings/SettingsActivity$BpsAdapter;)V

    invoke-virtual {v10, v11, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 211
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 208
    iput-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->bpsAlertDialog:Landroid/app/AlertDialog;

    .line 212
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->bpsAlertDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 214
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    const-string v11, "\u9009\u62e9\u5e27\u7387:"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 216
    new-instance v11, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$FpsAdapter;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$FpsAdapter;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;Lcom/rayclear/videomessage/ui/settings/SettingsActivity$FpsAdapter;)V

    invoke-virtual {v10, v11, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 217
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 214
    iput-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->fpsAlertDialog:Landroid/app/AlertDialog;

    .line 218
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->fpsAlertDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 223
    const v10, 0x7f080084

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 225
    .local v4, realtimecheckBox:Landroid/widget/CheckBox;
    const-string v10, "userealtime"

    const/4 v11, 0x1

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 226
    .local v9, use_realtime:Z
    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    new-instance v10, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$3;

    invoke-direct {v10, p0}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$3;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    const v10, 0x7f080087

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 240
    .local v0, bluetoothcheckBox:Landroid/widget/CheckBox;
    const-string v10, "bluetooth"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 241
    .local v8, use_bluetooth:Z
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 242
    new-instance v10, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$4;

    invoke-direct {v10, p0}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$4;-><init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 251
    return-void

    .line 154
    .end local v0           #bluetoothcheckBox:Landroid/widget/CheckBox;
    .end local v1           #bps:I
    .end local v4           #realtimecheckBox:Landroid/widget/CheckBox;
    .end local v6           #use10fps:Z
    .end local v7           #use10fpsCheckBox:Landroid/widget/CheckBox;
    .end local v8           #use_bluetooth:Z
    .end local v9           #use_realtime:Z
    :pswitch_0
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v11, "176*144"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 157
    :pswitch_1
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v11, "320*240"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 160
    :pswitch_2
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v11, "640*480"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 163
    :pswitch_3
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v11, "1280*720"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 166
    :pswitch_4
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v11, "480*270"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 169
    :pswitch_5
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v11, "360*200"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 172
    :pswitch_6
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showqualityTextView:Landroid/widget/TextView;

    const-string v11, "480*360"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 189
    .restart local v1       #bps:I
    .restart local v6       #use10fps:Z
    .restart local v7       #use10fpsCheckBox:Landroid/widget/CheckBox;
    :cond_0
    iget-object v10, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->showFpsTextView:Landroid/widget/TextView;

    const-string v11, "\u8bbe\u7f6e\u5e27\u7387 15fps"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 147
    .end local v1           #bps:I
    .end local v3           #qualityset:I
    .end local v6           #use10fps:Z
    .end local v7           #use10fpsCheckBox:Landroid/widget/CheckBox;
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 261
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 265
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "enterprise_account"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, enterprisenumString:Ljava/lang/String;
    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 268
    const v2, 0x7f08008d

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method
