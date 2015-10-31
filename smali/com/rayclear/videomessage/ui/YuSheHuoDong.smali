.class public Lcom/rayclear/videomessage/ui/YuSheHuoDong;
.super Landroid/app/Activity;
.source "YuSheHuoDong.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# static fields
.field private static final MESSAGE_GET_CHANNEL_FAIL:I = 0x2

.field private static final MESSAGE_GET_CHANNEL_OK:I = 0x1

.field private static final MESSAGE_SHOW_RAW_WORDS:I


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

.field private datePickerDialog:Landroid/app/DatePickerDialog;

.field day:I

.field private durationTextView:Landroid/widget/TextView;

.field private getChannelProgressDialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field hour:I

.field private isDuration:Z

.field private joinNumEditText:Landroid/widget/EditText;

.field private judgeStartTime:J

.field minute:I

.field month:I

.field private partyModel:Lcom/rayclear/videomessage/model/PartyModel;

.field private passwdEditText:Landroid/widget/EditText;

.field second:I

.field private startDateTextView:Landroid/widget/TextView;

.field private starttimeTextView:Landroid/widget/TextView;

.field private timePickerDialog:Landroid/app/TimePickerDialog;

.field private titileEditText:Landroid/widget/EditText;

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->titileEditText:Landroid/widget/EditText;

    .line 39
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->passwdEditText:Landroid/widget/EditText;

    .line 40
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->joinNumEditText:Landroid/widget/EditText;

    .line 41
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->startDateTextView:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->starttimeTextView:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->durationTextView:Landroid/widget/TextView;

    .line 44
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->checkBox:Landroid/widget/CheckBox;

    .line 45
    new-instance v0, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-direct {v0}, Lcom/rayclear/videomessage/model/PartyModel;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->isDuration:Z

    .line 47
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->datePickerDialog:Landroid/app/DatePickerDialog;

    .line 48
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    .line 51
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    .line 52
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->judgeStartTime:J

    .line 56
    new-instance v0, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong$1;-><init>(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 158
    :sswitch_0
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->finish()V

    goto :goto_0

    .line 161
    :sswitch_1
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->titileEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->passwdEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-object v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    const-string v2, "\u6211\u7684\u76f4\u64ad"

    iput-object v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    iget-wide v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->judgeStartTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 169
    const-string v1, "\u4e0d\u80fd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 174
    const-string v1, "\u6d3b\u52a8\u65f6\u95f4\u592a\u77ed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 178
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->joinNumEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->joinNumEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    .line 181
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    if-gtz v1, :cond_3

    .line 183
    const-string v1, "\u8bf7\u586b\u5199\u6b63\u786e\u4eba\u6570"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v14

    .line 189
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const-string v1, "\u8bf7\u586b\u5199\u6b63\u786e\u4eba\u6570"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 193
    .end local v14           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 195
    new-instance v0, Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getCookieStore(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getUserID(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 196
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-object v6, v6, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    iget-object v9, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    iget-object v11, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget v11, v11, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    iget-object v12, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-object v12, v12, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    const/4 v13, 0x0

    .line 195
    invoke-direct/range {v0 .. v13}, Lcom/rayclear/videomessage/common/CreateNewActivityThread;-><init>(Lorg/apache/http/client/CookieStore;ILandroid/os/Handler;IILjava/lang/String;JJILjava/lang/String;Z)V

    .line 197
    .local v0, createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    invoke-virtual {v0}, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->start()V

    goto/16 :goto_0

    .line 201
    .end local v0           #createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    :sswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->isDuration:Z

    .line 202
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    iget v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    iget v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->minute:I

    invoke-virtual {v1, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 203
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_0

    .line 206
    :sswitch_3
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->datePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_0

    .line 209
    :sswitch_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->isDuration:Z

    .line 210
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    long-to-int v3, v3

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v1, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 211
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080000 -> :sswitch_0
        0x7f080002 -> :sswitch_1
        0x7f0800b3 -> :sswitch_3
        0x7f0800b5 -> :sswitch_2
        0x7f0800b7 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->setContentView(I)V

    .line 96
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->titileEditText:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->passwdEditText:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->joinNumEditText:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->starttimeTextView:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->startDateTextView:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->durationTextView:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->checkBox:Landroid/widget/CheckBox;

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 112
    .local v6, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->year:I

    .line 114
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->month:I

    .line 115
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->day:I

    .line 116
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    .line 117
    iput v7, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->minute:I

    .line 118
    iput v7, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->second:I

    .line 119
    iget v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    invoke-virtual {v6, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/16 v0, 0xc

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 121
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 123
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->judgeStartTime:J

    .line 126
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->startDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v1, v2}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->starttimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v1, v2}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->durationTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-static {v1, v2}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyDurationString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v0, Landroid/app/DatePickerDialog;

    iget v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->year:I

    iget v4, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->month:I

    iget v5, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->day:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->datePickerDialog:Landroid/app/DatePickerDialog;

    .line 132
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    iget v4, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->minute:I

    move-object v1, p0

    move-object v2, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    .line 134
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->datePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0, v7}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0, v7}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 138
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    .line 139
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u63d0\u4ea4\u76f4\u64ad\u8bf7\u6c42"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    .line 142
    new-instance v1, Lcom/rayclear/videomessage/ui/YuSheHuoDong$2;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/YuSheHuoDong$2;-><init>(Lcom/rayclear/videomessage/ui/YuSheHuoDong;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 149
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 9
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v8, 0x0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "year = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",monthOfYear = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dayOfMonth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 224
    .local v0, calendar:Ljava/util/Calendar;
    iget v4, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    iget v5, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->minute:I

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 225
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 226
    .local v6, setTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-gez v1, :cond_0

    .line 228
    const-string v1, "\u8bbe\u7f6e\u65f6\u95f4\u4e0d\u80fd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4"

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 242
    :goto_0
    return-void

    .line 232
    :cond_0
    iput p2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->year:I

    .line 233
    iput p3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->month:I

    .line 234
    iput p4, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->day:I

    .line 237
    iget v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->year:I

    iget v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->month:I

    iget v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->day:I

    iget v4, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    iget v5, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->minute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 238
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 239
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 240
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->startDateTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->starttimeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 9
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v8, 0x0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hourOfDay = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",minute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 252
    iget-boolean v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->isDuration:Z

    if-eqz v1, :cond_1

    .line 254
    mul-int/lit16 v1, p2, 0xe10

    mul-int/lit8 v2, p3, 0x3c

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    if-nez v1, :cond_0

    .line 256
    const-string v1, "\u6d3b\u52a8\u6301\u7eed\u65f6\u95f4\u4e0d\u80fd\u4e3a0"

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 282
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    mul-int/lit16 v2, p2, 0xe10

    mul-int/lit8 v3, p3, 0x3c

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    .line 260
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->durationTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyDurationString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 263
    .local v0, calendar:Ljava/util/Calendar;
    iget v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->year:I

    iget v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->month:I

    iget v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->day:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 264
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 265
    .local v6, setTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-gez v1, :cond_2

    .line 267
    const-string v1, "\u8bbe\u7f6e\u65f6\u95f4\u4e0d\u80fd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4"

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 271
    :cond_2
    iput p2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    .line 272
    iput p3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->minute:I

    .line 273
    iput p2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    .line 274
    iput p3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->minute:I

    .line 275
    iget v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->year:I

    iget v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->month:I

    iget v3, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->day:I

    iget v4, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->hour:I

    iget v5, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->minute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 276
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 277
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "partyModel.starttime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->startDateTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->starttimeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/YuSheHuoDong;->partyModel:Lcom/rayclear/videomessage/model/PartyModel;

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
