.class public Lcom/rayclear/videomessage/ui/login/ResetPasswd;
.super Landroid/app/Activity;
.source "ResetPasswd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;
    }
.end annotation


# static fields
.field public static final RESETPASSWD_RESET_PASSWD_FAILED:I = 0x8

.field public static final RESETPASSWD_RESET_PASSWD_OK:I = 0x9

.field public static final RESETPASSWD_USERPHONE_ERROR_MSG:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private phoneEditText:Landroid/widget/EditText;

.field private resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

.field private resetProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    .line 29
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->phoneEditText:Landroid/widget/EditText;

    .line 30
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetProgressDialog:Landroid/app/ProgressDialog;

    .line 32
    new-instance v0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd$1;-><init>(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->handler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->phoneEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    return-object v0
.end method

.method private checkPhoneValid()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 119
    :try_start_0
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->phoneEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, userphone:Ljava/lang/String;
    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    .end local v3           #userphone:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 124
    .restart local v3       #userphone:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 125
    .local v1, cs:[C
    array-length v6, v1

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_2

    .line 136
    const/4 v4, 0x1

    goto :goto_0

    .line 125
    :cond_2
    aget-char v0, v1, v5

    .line 127
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 132
    .end local v0           #c:C
    .end local v1           #cs:[C
    .end local v3           #userphone:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 83
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->stopReset()V

    .line 87
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 94
    :sswitch_0
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->finish()V

    goto :goto_0

    .line 97
    :sswitch_1
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->checkPhoneValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->stopReset()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 107
    new-instance v0, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;-><init>(Lcom/rayclear/videomessage/ui/login/ResetPasswd;Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    .line 108
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetPasswordThread:Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd$ResetPasswordThread;->start()V

    goto :goto_0

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080000 -> :sswitch_0
        0x7f08006b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->setContentView(I)V

    .line 64
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->phoneEditText:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetProgressDialog:Landroid/app/ProgressDialog;

    .line 67
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u91cd\u7f6e\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->resetProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/rayclear/videomessage/ui/login/ResetPasswd$2;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd$2;-><init>(Lcom/rayclear/videomessage/ui/login/ResetPasswd;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/ResetPasswd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
