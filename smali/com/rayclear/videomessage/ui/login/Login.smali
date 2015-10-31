.class public Lcom/rayclear/videomessage/ui/login/Login;
.super Landroid/app/Activity;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/login/Login$LoginThread;
    }
.end annotation


# static fields
.field public static final LOGIN_FAILED_MSG:I = 0x3

.field public static final LOGIN_HTTP_ERROR_MSG:I = 0x6

.field public static final LOGIN_ING_MSG:I = 0x2

.field public static final LOGIN_OK_MSG:I = 0x4

.field public static final LOGIN_PASSWORD_NULL_MSG:I = 0x1

.field public static final LOGIN_SHOW_RAW_MESSAGE:I = 0x7

.field public static final LOGIN_USERPHONE_ERROR_MSG:I


# instance fields
.field private lastClickTime:J

.field private loginBtn:Landroid/view/View;

.field private loginHandler:Landroid/os/Handler;

.field private loginProgressDialog:Landroid/app/ProgressDialog;

.field private loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

.field private passwdEditText:Landroid/widget/EditText;

.field private phoneEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginBtn:Landroid/view/View;

    .line 74
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->phoneEditText:Landroid/widget/EditText;

    .line 75
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->passwdEditText:Landroid/widget/EditText;

    .line 76
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    .line 77
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->lastClickTime:J

    .line 81
    new-instance v0, Lcom/rayclear/videomessage/ui/login/Login$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/login/Login$1;-><init>(Lcom/rayclear/videomessage/ui/login/Login;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/login/Login;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/login/Login;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/ui/login/Login;)Lcom/rayclear/videomessage/ui/login/Login$LoginThread;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    return-object v0
.end method

.method private checkPhoneValid()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    :try_start_0
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/login/Login;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, userphone:Ljava/lang/String;
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/login/Login;->passwdEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, password:Ljava/lang/String;
    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 240
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #userphone:Ljava/lang/String;
    :goto_0
    return v3

    .line 231
    .restart local v1       #password:Ljava/lang/String;
    .restart local v2       #userphone:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #userphone:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #password:Ljava/lang/String;
    .restart local v2       #userphone:Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 240
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 177
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->stopLogin()V

    .line 181
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 182
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 219
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    return-void

    .line 191
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/rayclear/videomessage/ui/login/ResetPasswd;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/login/Login;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/rayclear/videomessage/ui/login/Login;->lastClickTime:J

    goto :goto_0

    .line 195
    :sswitch_1
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/login/Login;->finish()V

    goto :goto_0

    .line 198
    :sswitch_2
    const-string v2, "login_login"

    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/login/Login;->checkPhoneValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    invoke-virtual {v2}, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->stopLogin()V

    .line 206
    :cond_1
    const-string v2, "pref"

    invoke-virtual {p0, v2, v3}, Lcom/rayclear/videomessage/ui/login/Login;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 207
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "userphone"

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    const-string v2, "userpasswd"

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->passwdEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    new-instance v2, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;-><init>(Lcom/rayclear/videomessage/ui/login/Login;Lcom/rayclear/videomessage/ui/login/Login$LoginThread;)V

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    .line 212
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    invoke-virtual {v2}, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->start()V

    .line 213
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080000 -> :sswitch_1
        0x7f08004a -> :sswitch_2
        0x7f08004d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/rayclear/videomessage/ui/login/Login;->setContentView(I)V

    .line 126
    const-string v3, "pref"

    invoke-virtual {p0, v3, v5}, Lcom/rayclear/videomessage/ui/login/Login;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "userphone"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, userphone:Ljava/lang/String;
    const-string v3, "userpasswd"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, password:Ljava/lang/String;
    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/rayclear/videomessage/ui/login/Login;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginBtn:Landroid/view/View;

    .line 132
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginBtn:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v3, 0x7f08004b

    invoke-virtual {p0, v3}, Lcom/rayclear/videomessage/ui/login/Login;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->phoneEditText:Landroid/widget/EditText;

    .line 134
    const v3, 0x7f08004c

    invoke-virtual {p0, v3}, Lcom/rayclear/videomessage/ui/login/Login;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->passwdEditText:Landroid/widget/EditText;

    .line 135
    const/high16 v3, 0x7f08

    invoke-virtual {p0, v3}, Lcom/rayclear/videomessage/ui/login/Login;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/rayclear/videomessage/ui/login/Login;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    .line 139
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    const-string v4, "\u6b63\u5728\u767b\u5f55"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    const-string v4, "\u8bf7\u7a0d\u540e"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 142
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/rayclear/videomessage/ui/login/Login$2;

    invoke-direct {v4, p0}, Lcom/rayclear/videomessage/ui/login/Login$2;-><init>(Lcom/rayclear/videomessage/ui/login/Login;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "login   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "login   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->passwdEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {p0}, Lcom/rayclear/videomessage/common/SysUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    :cond_2
    new-instance v3, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;-><init>(Lcom/rayclear/videomessage/ui/login/Login;Lcom/rayclear/videomessage/ui/login/Login$LoginThread;)V

    iput-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    .line 164
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginThread:Lcom/rayclear/videomessage/ui/login/Login$LoginThread;

    invoke-virtual {v3}, Lcom/rayclear/videomessage/ui/login/Login$LoginThread;->start()V

    .line 165
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/login/Login;->loginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
