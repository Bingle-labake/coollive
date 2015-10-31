.class Lcom/rayclear/videomessage/ui/settings/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$2;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/SettingsActivity$2;->this$0:Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    invoke-static {v0, p2}, Lcom/rayclear/videomessage/camera/CameraProvider;->setIfUse10FPS(Landroid/content/Context;Z)V

    .line 195
    return-void
.end method
