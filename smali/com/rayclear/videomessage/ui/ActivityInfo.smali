.class public Lcom/rayclear/videomessage/ui/ActivityInfo;
.super Landroid/app/Activity;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;,
        Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;,
        Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;,
        Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;,
        Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;
    }
.end annotation


# static fields
.field private static final MESSAGE_REFRESH_VIDEOLIST:I


# instance fields
.field private deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

.field private durationTextView:Landroid/widget/TextView;

.field private endActivityTask:Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;

.field private getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

.field private getVideosTask:Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;

.field private handler:Landroid/os/Handler;

.field private httpurlTextView:Landroid/widget/TextView;

.field private isShowingSharePanel:Z

.field private listView:Landroid/widget/ListView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rtmpurlTextView:Landroid/widget/TextView;

.field private screenOritation:I

.field private starttimeTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private tokenTextView:Landroid/widget/TextView;

.field private videoListAdapter:Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

.field private videos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/rayclear/videomessage/model/VideoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->starttimeTextView:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->titleTextView:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->tokenTextView:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->durationTextView:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->httpurlTextView:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->rtmpurlTextView:Landroid/widget/TextView;

    .line 81
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;

    .line 82
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    .line 83
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->endActivityTask:Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;

    .line 85
    iput-boolean v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->isShowingSharePanel:Z

    .line 88
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->listView:Landroid/widget/ListView;

    .line 89
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videoListAdapter:Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

    .line 90
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;

    .line 91
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getVideosTask:Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;

    .line 92
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    .line 93
    iput v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->screenOritation:I

    .line 96
    new-instance v0, Lcom/rayclear/videomessage/ui/ActivityInfo$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/ActivityInfo$1;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->handler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videoListAdapter:Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/ActivityInfo;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    return-void
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/ui/ActivityInfo;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->screenOritation:I

    return v0
.end method

.method static synthetic access$3(Lcom/rayclear/videomessage/ui/ActivityInfo;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    return-void
.end method

.method static synthetic access$5(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    return-object v0
.end method

.method static synthetic access$6(Lcom/rayclear/videomessage/ui/ActivityInfo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->deleteTask:Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;

    return-object v0
.end method

.method static synthetic access$8(Lcom/rayclear/videomessage/ui/ActivityInfo;)Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->endActivityTask:Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;

    return-object v0
.end method

.method static synthetic access$9(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->endActivityTask:Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;

    return-void
.end method

.method private initContentView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u5c4f\u5e55\u65b9\u5411 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->screenOritation:I

    .line 199
    const-string v2, "initContentView"

    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, listheaderView:Landroid/view/View;
    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->starttimeTextView:Landroid/widget/TextView;

    .line 204
    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->titleTextView:Landroid/widget/TextView;

    .line 205
    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->tokenTextView:Landroid/widget/TextView;

    .line 206
    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->durationTextView:Landroid/widget/TextView;

    .line 207
    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->httpurlTextView:Landroid/widget/TextView;

    .line 208
    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->rtmpurlTextView:Landroid/widget/TextView;

    .line 209
    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v2, 0x7f08000a

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v2, 0x7f080006

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v2, 0x7f080007

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->starttimeTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-wide v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v3, v4}, Lcom/rayclear/videomessage/common/SysUtil;->getDateStringFromMilliTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->titleTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-object v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->tokenTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-object v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->durationTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-wide v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-static {v3, v4}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyDurationString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->httpurlTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-object v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->rtmpurlTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-object v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->rtmpUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->listView:Landroid/widget/ListView;

    .line 234
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 235
    new-instance v2, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

    invoke-direct {v2, p0, v5}, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;)V

    iput-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videoListAdapter:Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

    .line 236
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videoListAdapter:Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    iget-object v2, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videoListAdapter:Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;

    invoke-virtual {v2}, Lcom/rayclear/videomessage/ui/ActivityInfo$VideoListAdapter;->notifyDataSetChanged()V

    .line 239
    const/4 v0, 0x1

    .line 241
    .local v0, a:I
    return-void
.end method

.method private shareToEmail()V
    .locals 8

    .prologue
    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u300a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v6

    iget-object v6, v6, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v5, "text/plain"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 471
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    .line 470
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 472
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 473
    .local v1, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 484
    :goto_0
    if-nez v1, :cond_2

    .line 486
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 487
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 488
    const-string v6, "\u6ca1\u6709\u627e\u5230\u90ae\u4ef6\u5e94\u7528"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 489
    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 490
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 491
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 497
    :goto_1
    return-void

    .line 473
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 475
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v6, "match activity:"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 476
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 477
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 478
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "mail"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 480
    move-object v1, v4

    .line 481
    goto :goto_0

    .line 495
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private shareToSinaWeibo()V
    .locals 8

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u300a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v5, "text/plain"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 506
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    .line 505
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 508
    .local v4, sinaResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 518
    if-nez v4, :cond_2

    .line 520
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 521
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 522
    const-string v6, "\u60a8\u5c1a\u672a\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 523
    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 524
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 525
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 530
    :goto_1
    return-void

    .line 508
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 510
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v6, "match activity:"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 511
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 512
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 513
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sina.weibo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 515
    move-object v4, v3

    goto :goto_0

    .line 528
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private shareToSms()V
    .locals 8

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u300a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v5, "text/plain"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 435
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    .line 434
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 436
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 437
    .local v1, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 448
    :goto_0
    if-nez v1, :cond_2

    .line 450
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 452
    const-string v6, "\u6ca1\u6709\u627e\u5230\u77ed\u4fe1\u5e94\u7528"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 453
    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 454
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 455
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 460
    :goto_1
    return-void

    .line 437
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 439
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v6, "match activity:"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 440
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 441
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 442
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 444
    move-object v1, v4

    .line 445
    goto :goto_0

    .line 458
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private shareToWeixin()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 534
    const-string v11, "shareToWeixin"

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 535
    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v11, "android.intent.extra.TEXT"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u300a"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v13

    iget-object v13, v13, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v13

    iget-object v13, v13, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string v11, "text/plain"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 540
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v11, 0x1

    .line 539
    invoke-virtual {v6, v0, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 541
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 542
    .local v4, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 553
    :goto_0
    if-nez v4, :cond_2

    .line 555
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 556
    const-string v12, "\u63d0\u793a"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 557
    const-string v12, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 558
    const-string v12, "\u786e\u5b9a"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 559
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 560
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 606
    :goto_1
    return-void

    .line 542
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 544
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v12, "match activity:"

    invoke-static {v12}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 545
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 546
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 547
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.tencent.mm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 549
    move-object v4, v8

    .line 550
    goto :goto_0

    .line 566
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string v1, "wxd8379a6d7637c354"

    .line 567
    .local v1, WEI_XIN_APP_ID:Ljava/lang/String;
    invoke-static {p0, v1, v14}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v3

    .line 568
    .local v3, iwxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v3, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 570
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "iwxapi.getWXAppSupportAPI() = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 575
    new-instance v10, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v10}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    .line 576
    .local v10, wxWebpageObject:Lcom/tencent/mm/sdk/openapi/WXWebpageObject;
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v11

    iget-object v11, v11, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    iput-object v11, v10, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 578
    new-instance v9, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v9}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 579
    .local v9, wxMediaMessage:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object v10, v9, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 581
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v11

    iget-object v11, v11, Lcom/rayclear/videomessage/model/PartyModel;->description:Ljava/lang/String;

    iput-object v11, v9, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 582
    iget-object v11, v9, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 584
    const-string v11, "\u6b63\u5728\u76f4\u64ad\u6d3b\u52a8"

    iput-object v11, v9, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 590
    :cond_3
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v11

    iget-object v11, v11, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    iput-object v11, v9, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 593
    :try_start_0
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v11

    iget-object v11, v11, Lcom/rayclear/videomessage/model/PartyModel;->thumburl:Ljava/lang/String;

    invoke-static {p0, v11}, Lcom/rayclear/videomessage/common/SysUtil;->getShareThumbFromUrl(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, v9, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_2
    new-instance v7, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v7}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 602
    .local v7, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 603
    iput-object v9, v7, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 604
    iput v14, v7, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 605
    invoke-interface {v3, v7}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    goto/16 :goto_1

    .line 595
    .end local v7           #req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    :catch_0
    move-exception v2

    .line 596
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private shareToWeixinCircle()V
    .locals 13

    .prologue
    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.TEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u300a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v12

    iget-object v12, v12, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v12

    iget-object v12, v12, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v10, "text/plain"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 615
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v10, 0x1

    .line 614
    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 616
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 617
    .local v3, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 628
    :goto_0
    if-nez v3, :cond_2

    .line 630
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    const-string v11, "\u63d0\u793a"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 632
    const-string v11, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 633
    const-string v11, "\u786e\u5b9a"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 634
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 635
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 671
    :goto_1
    return-void

    .line 617
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 619
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v11, "match activity:"

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 620
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 621
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 622
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.tencent.mm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 624
    move-object v3, v7

    .line 625
    goto :goto_0

    .line 641
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string v1, "wxd8379a6d7637c354"

    .line 642
    .local v1, WEI_XIN_APP_ID:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {p0, v1, v10}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    .line 643
    .local v2, iwxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 644
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "iwxapi.getWXAppSupportAPI() = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 646
    new-instance v9, Lcom/tencent/mm/sdk/openapi/WXTextObject;

    invoke-direct {v9}, Lcom/tencent/mm/sdk/openapi/WXTextObject;-><init>()V

    .line 647
    .local v9, wxTextObject:Lcom/tencent/mm/sdk/openapi/WXTextObject;
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    iput-object v10, v9, Lcom/tencent/mm/sdk/openapi/WXTextObject;->text:Ljava/lang/String;

    .line 652
    new-instance v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v8}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 654
    .local v8, wxMediaMessage:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object v9, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 655
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->description:Ljava/lang/String;

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 656
    iget-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-static {v10}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 658
    const-string v10, "\u6b63\u5728\u76f4\u64ad\u6d3b\u52a8"

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 660
    :cond_3
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 666
    new-instance v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v6}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 667
    .local v6, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 668
    iput-object v8, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 669
    const/4 v10, 0x1

    iput v10, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 670
    invoke-interface {v2, v6}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 173
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getThumbThread:Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/ActivityInfo$GetThumbThread;->flag:Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getVideosTask:Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getVideosTask:Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;->cancel(Z)Z

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->getVideosTask:Lcom/rayclear/videomessage/ui/ActivityInfo$GetVideosTask;

    .line 182
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const v1, 0x7f080004

    .line 417
    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->isShowingSharePanel:Z

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x0

    const v9, 0x7f080004

    const/4 v10, 0x0

    .line 247
    const-string v8, "onclick"

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 380
    :goto_0
    :sswitch_0
    return-void

    .line 250
    :sswitch_1
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->finish()V

    goto :goto_0

    .line 253
    :sswitch_2
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/rayclear/videomessage/ui/EditHuoDong;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/rayclear/videomessage/ui/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :sswitch_3
    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iput-boolean v10, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->isShowingSharePanel:Z

    goto :goto_0

    .line 261
    :sswitch_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    const-string v9, "\u63d0\u793a"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 263
    const-string v9, "\u662f\u5426\u7ed3\u675f\u8be5\u6d3b\u52a8"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 264
    const-string v9, "\u7ed3\u675f"

    new-instance v10, Lcom/rayclear/videomessage/ui/ActivityInfo$4;

    invoke-direct {v10, p0}, Lcom/rayclear/videomessage/ui/ActivityInfo$4;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 279
    const-string v9, "\u53d6\u6d88"

    invoke-virtual {v8, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 280
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 281
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 284
    :sswitch_5
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    const-string v9, "\u63d0\u793a"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 286
    const-string v9, "\u662f\u5426\u5220\u9664\u8be5\u6d3b\u52a8"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 287
    const-string v9, "\u5220\u9664"

    new-instance v10, Lcom/rayclear/videomessage/ui/ActivityInfo$5;

    invoke-direct {v10, p0}, Lcom/rayclear/videomessage/ui/ActivityInfo$5;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 302
    const-string v9, "\u53d6\u6d88"

    invoke-virtual {v8, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 303
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 304
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 308
    :sswitch_6
    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 309
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->isShowingSharePanel:Z

    goto :goto_0

    .line 312
    :sswitch_7
    invoke-static {p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->canUseAdvancedCodec(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 314
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/rayclear/videomessage/ui/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 316
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/rayclear/videomessage/ui/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 323
    :sswitch_8
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->shareToEmail()V

    goto/16 :goto_0

    .line 326
    :sswitch_9
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->shareToSms()V

    goto/16 :goto_0

    .line 329
    :sswitch_a
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->shareToSinaWeibo()V

    goto/16 :goto_0

    .line 332
    :sswitch_b
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->shareToWeixin()V

    goto/16 :goto_0

    .line 335
    :sswitch_c
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->shareToWeixinCircle()V

    goto/16 :goto_0

    .line 338
    :sswitch_d
    const-string v8, "clipboard"

    invoke-virtual {p0, v8}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 339
    .local v0, cmb:Landroid/text/ClipboardManager;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u300a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget-object v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget-object v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v8, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 348
    .end local v0           #cmb:Landroid/text/ClipboardManager;
    :sswitch_e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 349
    .local v5, position:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onItemClick = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 350
    iget-object v8, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/rayclear/videomessage/model/VideoModel;

    .line 351
    .local v7, videoModel:Lcom/rayclear/videomessage/model/VideoModel;
    const-string v8, "video url:"

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 352
    iget-object v8, v7, Lcom/rayclear/videomessage/model/VideoModel;->videourl_android:Ljava/lang/String;

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 353
    iget-object v8, v7, Lcom/rayclear/videomessage/model/VideoModel;->videourl_ios:Ljava/lang/String;

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 354
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, intent:Landroid/content/Intent;
    iget-object v8, v7, Lcom/rayclear/videomessage/model/VideoModel;->videourl_ios:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "video/*"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 360
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v8, 0x1

    .line 359
    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 361
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 362
    .local v2, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 373
    :goto_1
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v1}, Lcom/rayclear/videomessage/ui/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 362
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 364
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v9, "match activity:"

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 365
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 366
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 367
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.sec.android.app.videoplayer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 369
    move-object v2, v6

    .line 370
    goto :goto_1

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080000 -> :sswitch_1
        0x7f080002 -> :sswitch_2
        0x7f080005 -> :sswitch_0
        0x7f080006 -> :sswitch_8
        0x7f080007 -> :sswitch_9
        0x7f080008 -> :sswitch_a
        0x7f080009 -> :sswitch_b
        0x7f08000a -> :sswitch_c
        0x7f08000b -> :sswitch_d
        0x7f08000c -> :sswitch_3
        0x7f080013 -> :sswitch_7
        0x7f080014 -> :sswitch_6
        0x7f080015 -> :sswitch_4
        0x7f080016 -> :sswitch_5
        0x7f0800a0 -> :sswitch_e
        0x7f0800a1 -> :sswitch_e
        0x7f0800a5 -> :sswitch_e
        0x7f0800a6 -> :sswitch_e
        0x7f0800a9 -> :sswitch_e
        0x7f0800aa -> :sswitch_e
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->setContentView(I)V

    .line 187
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->initContentView()V

    .line 188
    iget-boolean v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->isShowingSharePanel:Z

    if-eqz v0, :cond_0

    .line 190
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->setContentView(I)V

    .line 114
    const-string v0, "ActivityInfo oncreate"

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->initContentView()V

    .line 119
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;

    .line 120
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u5220\u9664\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/rayclear/videomessage/ui/ActivityInfo$2;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/ActivityInfo$2;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 145
    new-instance v0, Lcom/rayclear/videomessage/ui/ActivityInfo$3;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/ActivityInfo$3;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    .line 149
    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo$3;->start()V

    .line 151
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo;->videos:Ljava/util/Vector;

    .line 153
    invoke-static {}, Lcom/rayclear/videomessage/common/SysUtil;->isDeviceSumSungCamera()Z

    .line 160
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    const-string v0, "activity info on resume"

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 168
    return-void
.end method
