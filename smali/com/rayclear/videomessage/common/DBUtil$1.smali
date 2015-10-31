.class Lcom/rayclear/videomessage/common/DBUtil$1;
.super Ljava/lang/Object;
.source "DBUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/common/DBUtil;->getAllParties(Landroid/content/Context;)Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/rayclear/videomessage/model/PartyModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/common/DBUtil;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/common/DBUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/common/DBUtil$1;->this$0:Lcom/rayclear/videomessage/common/DBUtil;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/rayclear/videomessage/model/PartyModel;Lcom/rayclear/videomessage/model/PartyModel;)I
    .locals 4
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 107
    iget-wide v0, p1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    iget-wide v2, p2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/rayclear/videomessage/model/PartyModel;

    check-cast p2, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-virtual {p0, p1, p2}, Lcom/rayclear/videomessage/common/DBUtil$1;->compare(Lcom/rayclear/videomessage/model/PartyModel;Lcom/rayclear/videomessage/model/PartyModel;)I

    move-result v0

    return v0
.end method
