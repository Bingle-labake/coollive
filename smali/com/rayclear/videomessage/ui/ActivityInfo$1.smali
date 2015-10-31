.class Lcom/rayclear/videomessage/ui/ActivityInfo$1;
.super Landroid/os/Handler;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$1;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$1;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->videoListAdapter:Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$0(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
