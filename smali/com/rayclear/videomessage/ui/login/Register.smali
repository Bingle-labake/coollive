.class public Lcom/rayclear/videomessage/ui/login/Register;
.super Landroid/app/Activity;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;
    }
.end annotation


# instance fields
.field private emailEditText:Landroid/widget/EditText;

.field private passwdConfirmEditText:Landroid/widget/EditText;

.field private passwdEditText:Landroid/widget/EditText;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

.field private usernameEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->emailEditText:Landroid/widget/EditText;

    .line 39
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->usernameEditText:Landroid/widget/EditText;

    .line 40
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->passwdEditText:Landroid/widget/EditText;

    .line 41
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->passwdConfirmEditText:Landroid/widget/EditText;

    .line 42
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->progressDialog:Landroid/app/ProgressDialog;

    .line 43
    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->usernameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->emailEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->passwdEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rayclear/videomessage/ui/login/Register;)Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    return-object v0
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 5
    .parameter "email"

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, flag:Z
    :try_start_0
    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 132
    .local v0, check:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 133
    .local v4, regex:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 134
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 138
    .end local v0           #check:Ljava/lang/String;
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #regex:Ljava/util/regex/Pattern;
    :goto_0
    return v2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 77
    :sswitch_0
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/login/Register;->finish()V

    goto :goto_0

    .line 80
    :sswitch_1
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "\u90ae\u7bb1\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/Register;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const-string v0, "\u90ae\u7bb1\u683c\u5f0f\u9519\u8bef"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->passwdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->passwdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/Register;->passwdConfirmEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    const-string v0, "\u4e24\u6b21\u8f93\u5165\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 106
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    if-eqz v0, :cond_5

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_5
    :goto_1
    new-instance v0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;-><init>(Lcom/rayclear/videomessage/ui/login/Register;Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    .line 114
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->registerTask:Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_1

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080000 -> :sswitch_0
        0x7f080068 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Register;->setContentView(I)V

    .line 49
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->emailEditText:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->usernameEditText:Landroid/widget/EditText;

    .line 53
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->passwdEditText:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/login/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->passwdConfirmEditText:Landroid/widget/EditText;

    .line 56
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->progressDialog:Landroid/app/ProgressDialog;

    .line 57
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/rayclear/videomessage/ui/login/Register$1;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/login/Register$1;-><init>(Lcom/rayclear/videomessage/ui/login/Register;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    return-void
.end method
