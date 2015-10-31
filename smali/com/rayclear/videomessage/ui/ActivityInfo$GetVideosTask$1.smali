.class Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask$1;
.super Ljava/lang/Object;
.source "ActivityInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->onPostExecute(Ljava/lang/String;)V
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
        "Lcom/rayclear/videomessage/model/VideoModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask$1;->this$1:Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/rayclear/videomessage/model/VideoModel;Lcom/rayclear/videomessage/model/VideoModel;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 946
    iget-wide v0, p2, Lcom/rayclear/videomessage/model/VideoModel;->timestamp:J

    iget-wide v2, p1, Lcom/rayclear/videomessage/model/VideoModel;->timestamp:J

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
    check-cast p1, Lcom/rayclear/videomessage/model/VideoModel;

    check-cast p2, Lcom/rayclear/videomessage/model/VideoModel;

    invoke-virtual {p0, p1, p2}, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask$1;->compare(Lcom/rayclear/videomessage/model/VideoModel;Lcom/rayclear/videomessage/model/VideoModel;)I

    move-result v0

    return v0
.end method
