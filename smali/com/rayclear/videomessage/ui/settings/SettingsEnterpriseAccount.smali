.class public Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;
.super Landroid/app/Activity;
.source "SettingsEnterpriseAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private enterpriseEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->enterpriseEditText:Landroid/widget/EditText;

    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 53
    :goto_0
    :pswitch_0
    return-void

    .line 34
    :pswitch_1
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->finish()V

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v3, p0, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->enterpriseEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, phonenumString:Ljava/lang/String;
    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    :cond_0
    const-string v3, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u9519\u8bef"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 43
    :cond_1
    const-string v3, "pref"

    invoke-virtual {p0, v3, v5}, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 44
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "enterprise_account"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->finish()V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->setContentView(I)V

    .line 21
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsEnterpriseAccount;->enterpriseEditText:Landroid/widget/EditText;

    .line 25
    return-void
.end method
