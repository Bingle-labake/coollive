.class public Lcom/rayclear/videomessage/ui/HomePage2;
.super Landroid/app/Activity;
.source "HomePage2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_RECORD_LIVE:Ljava/lang/String; = "live"

.field private static final MESSAGE_GET_CHANNEL_FAIL:I = 0x2

.field private static final MESSAGE_GET_CHANNEL_OK:I = 0x1

.field private static final MESSAGE_SHOW_RAW_WORDS:I


# instance fields
.field private createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

.field private getChannelProgressDialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field private lastClickTime:J

.field private quitAlertDialog:Landroid/app/AlertDialog;

.field private upgradeAppAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->quitAlertDialog:Landroid/app/AlertDialog;

    .line 63
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->upgradeAppAlertDialog:Landroid/app/AlertDialog;

    .line 66
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    .line 67
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->lastClickTime:J

    .line 72
    new-instance v0, Lcom/rayclear/videomessage/ui/HomePage2$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/HomePage2$1;-><init>(Lcom/rayclear/videomessage/ui/HomePage2;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->handler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/HomePage2;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/HomePage2;)Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->quitAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->quitAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppContext.upgradeState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/rayclear/videomessage/common/AppContext;->upgradeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/HomePage2;->quitAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/rayclear/videomessage/ui/HomePage2;->lastClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/rayclear/videomessage/ui/HomePage2;->lastClickTime:J

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 301
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/HomePage2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    :sswitch_1
    const/4 v0, 0x0

    .line 285
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->canUseAdvancedCodec(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const-string v1, "live"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/HomePage2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 295
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rayclear/videomessage/ui/YuSheHuoDong;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/HomePage2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/HomePage2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080039 -> :sswitch_0
        0x7f080042 -> :sswitch_1
        0x7f080043 -> :sswitch_2
        0x7f080044 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/HomePage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/HomePage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/HomePage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/HomePage2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v4, 0x7f03000c

    invoke-virtual {p0, v4}, Lcom/rayclear/videomessage/ui/HomePage2;->setContentView(I)V

    .line 117
    invoke-static {p0}, Lcom/rayclear/videomessage/RayclearApplication;->enqueueActivity(Landroid/app/Activity;)V

    .line 119
    const-string v4, "HomePage2@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

    invoke-static {v4}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 121
    const v4, 0x7f080039

    invoke-virtual {p0, v4}, Lcom/rayclear/videomessage/ui/HomePage2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v4, 0x7f080042

    invoke-virtual {p0, v4}, Lcom/rayclear/videomessage/ui/HomePage2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lcom/rayclear/videomessage/ui/HomePage2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v4, 0x7f080043

    invoke-virtual {p0, v4}, Lcom/rayclear/videomessage/ui/HomePage2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    .line 128
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    const-string v5, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    const-string v5, "\u6b63\u5728\u83b7\u53d6\u5206\u4eab\u5730\u5740"

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/rayclear/videomessage/ui/HomePage2$2;

    invoke-direct {v5, p0}, Lcom/rayclear/videomessage/ui/HomePage2$2;-><init>(Lcom/rayclear/videomessage/ui/HomePage2;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 141
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    const-string v5, "\u662f\u5426\u9000\u51fa\u5e94\u7528\uff1f"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 143
    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/rayclear/videomessage/ui/HomePage2$3;

    invoke-direct {v6, p0}, Lcom/rayclear/videomessage/ui/HomePage2$3;-><init>(Lcom/rayclear/videomessage/ui/HomePage2;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 156
    const-string v5, "\u53d6\u6d88"

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 157
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 141
    iput-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2;->quitAlertDialog:Landroid/app/AlertDialog;

    .line 159
    sget v4, Lcom/rayclear/videomessage/common/AppContext;->upgradeState:I

    if-lez v4, :cond_0

    .line 161
    const/4 v4, -0x1

    sput v4, Lcom/rayclear/videomessage/common/AppContext;->upgradeState:I

    .line 162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "\u6709\u53ef\u66f4\u65b0\u7248\u672c"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    const-string v4, "\u65b0\u7279\u6027:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/rayclear/videomessage/common/AppContext;->newfeatures:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 172
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v2           #i:I
    .end local v3           #stringBuffer:Ljava/lang/StringBuffer;
    :goto_1
    const-string v4, "\u7acb\u5373\u66f4\u65b0"

    new-instance v5, Lcom/rayclear/videomessage/ui/HomePage2$4;

    invoke-direct {v5, p0}, Lcom/rayclear/videomessage/ui/HomePage2$4;-><init>(Lcom/rayclear/videomessage/ui/HomePage2;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    const-string v4, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2;->upgradeAppAlertDialog:Landroid/app/AlertDialog;

    .line 183
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/HomePage2;->upgradeAppAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 229
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 230
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 234
    return-void

    .line 169
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v2       #i:I
    .restart local v3       #stringBuffer:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/rayclear/videomessage/common/AppContext;->newfeatures:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, feature:Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v1           #feature:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #stringBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 239
    const-string v0, "onNewIntent@@@@@@@@@@@@@@@@@@@"

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 316
    const-string v5, "########################################"

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 320
    new-instance v3, Lcom/rayclear/videomessage/common/SDcardUtil;

    invoke-direct {v3, p0}, Lcom/rayclear/videomessage/common/SDcardUtil;-><init>(Landroid/content/Context;)V

    .line 321
    .local v3, sDcardUtil:Lcom/rayclear/videomessage/common/SDcardUtil;
    iget-object v5, v3, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    new-instance v6, Lcom/rayclear/videomessage/ui/HomePage2$5;

    invoke-direct {v6, p0}, Lcom/rayclear/videomessage/ui/HomePage2$5;-><init>(Lcom/rayclear/videomessage/ui/HomePage2;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, tmpfiles:[Ljava/lang/String;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 343
    return-void

    .line 332
    :cond_0
    aget-object v2, v4, v5

    .line 335
    .local v2, filepath:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "try to delete"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/io/File;

    iget-object v7, v3, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1           #file:Ljava/io/File;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
