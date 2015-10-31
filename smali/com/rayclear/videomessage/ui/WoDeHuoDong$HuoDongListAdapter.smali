.class Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WoDeHuoDong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/WoDeHuoDong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HuoDongListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;-><init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->partyModels:Ljava/util/Vector;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$1(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 187
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 191
    if-nez p2, :cond_0

    .line 193
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030023

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 195
    :cond_0
    iget-object v4, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;->this$0:Lcom/rayclear/videomessage/ui/WoDeHuoDong;

    #getter for: Lcom/rayclear/videomessage/ui/WoDeHuoDong;->partyModels:Ljava/util/Vector;
    invoke-static {v4}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->access$1(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rayclear/videomessage/model/PartyModel;

    .line 196
    .local v0, partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    const v4, 0x7f0800ae

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 197
    .local v1, starttimeTextView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v5, v6}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v5, v6}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const v4, 0x7f0800af

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 199
    .local v2, titleTextView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e3b\u9898:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const v4, 0x7f0800b0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 201
    .local v3, urlTextView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6d3b\u52a8ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-object p2
.end method
