.class Lcom/rayclear/videomessage/ui/settings/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/settings/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$5;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 391
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$5;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 392
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 393
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "userphone"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    const-string v2, "userpasswd"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    const-string v2, "nickname"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$5;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$5;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    const-class v5, Lcom/rayclear/videomessage/ui/login/Root;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 398
    invoke-static {}, Lcom/rayclear/videomessage/RayclearApplication;->clearActivitys()V

    .line 399
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$5;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->finish()V

    .line 400
    return-void
.end method
