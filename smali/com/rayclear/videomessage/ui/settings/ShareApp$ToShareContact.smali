.class Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
.super Ljava/lang/Object;
.source "ShareApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/settings/ShareApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToShareContact"
.end annotation


# instance fields
.field public nameString:Ljava/lang/String;

.field public phoneString:Ljava/lang/String;

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const-string v0, ""

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->nameString:Ljava/lang/String;

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->phoneString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;-><init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;)V

    return-void
.end method
