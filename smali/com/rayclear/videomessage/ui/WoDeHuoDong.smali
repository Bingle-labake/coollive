.class public Lcom/rayclear/videomessage/ui/WoDeHuoDong;
.super Landroid/app/Activity;
.source "WoDeHuoDong.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;,
        Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final MESSAGE_GET_ACTIVITY_FAIL:I = 0x2

.field private static final MESSAGE_GET_ACTIVITY_OK:I = 0x1

.field private static final MESSAGE_SHOW_RAW:I


# instance fields
.field private getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

.field private handler:Landroid/os/Handler;

.field private huoDongListAdapter:Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;

.field private listView:Landroid/widget/ListView;

.field private partyModels:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/rayclear/videomessage/model/PartyModel;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->partyModels:Ljava/util/Vector;

    .line 43
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->listView:Landroid/widget/ListView;

    .line 44
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->huoDongListAdapter:Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;

    .line 45
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    .line 46
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    .line 48
    new-instance v0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$1;-><init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->partyModels:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->huoDongListAdapter:Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->finish()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->setContentView(I)V

    .line 102
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->listView:Landroid/widget/ListView;

    .line 104
    new-instance v0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;-><init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->huoDongListAdapter:Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;

    .line 105
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->huoDongListAdapter:Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->huoDongListAdapter:Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$HuoDongListAdapter;->notifyDataSetChanged()V

    .line 109
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    .line 110
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u66f4\u65b0\u6211\u7684\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/rayclear/videomessage/ui/WoDeHuoDong$2;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$2;-><init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 121
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->partyModels:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-static {p0, v0}, Lcom/rayclear/videomessage/common/AppContext;->savePartyModel(Landroid/content/Context;Lcom/rayclear/videomessage/model/PartyModel;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 134
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->flag:Z

    .line 138
    :cond_0
    new-instance v0, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;-><init>(Lcom/rayclear/videomessage/ui/WoDeHuoDong;Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    .line 139
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/WoDeHuoDong;->getMyActivitiesThread:Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/WoDeHuoDong$GetMyActivitiesThread;->start()V

    .line 141
    return-void
.end method
