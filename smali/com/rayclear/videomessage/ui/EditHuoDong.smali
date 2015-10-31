.class public Lcom/rayclear/videomessage/ui/EditHuoDong;
.super Landroid/app/Activity;
.source "EditHuoDong.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;
    }
.end annotation


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private datePickerDialog:Landroid/app/DatePickerDialog;

.field day:I

.field private durationTextView:Landroid/widget/TextView;

.field private editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

.field hour:I

.field private isDuration:Z

.field private joinNumEditText:Landroid/widget/EditText;

.field minute:I

.field month:I

.field private passwdEditText:Landroid/widget/EditText;

.field private progressDialog:Landroid/app/ProgressDialog;

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

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->titileEditText:Landroid/widget/EditText;

    .line 36
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->passwdEditText:Landroid/widget/EditText;

    .line 37
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->joinNumEditText:Landroid/widget/EditText;

    .line 38
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->startDateTextView:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->starttimeTextView:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->durationTextView:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->checkBox:Landroid/widget/CheckBox;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->isDuration:Z

    .line 43
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->datePickerDialog:Landroid/app/DatePickerDialog;

    .line 44
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    .line 47
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    .line 48
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/EditHuoDong;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/EditHuoDong;)Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 115
    :sswitch_0
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->finish()V

    goto :goto_0

    .line 119
    :sswitch_1
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->titileEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    .line 120
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-object v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "\u6807\u9898\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->passwdEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    .line 126
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 128
    const-string v1, "\u6d3b\u52a8\u65f6\u95f4\u592a\u77ed"

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->joinNumEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->joinNumEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    .line 135
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    if-gtz v1, :cond_2

    .line 137
    const-string v1, "\u8bf7\u586b\u5199\u6b63\u786e\u4eba\u6570"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const-string v1, "\u8bf7\u586b\u5199\u6b63\u786e\u4eba\u6570"

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 147
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/rayclear/videomessage/common/AppContext;->savePartyModel(Landroid/content/Context;Lcom/rayclear/videomessage/model/PartyModel;)V

    .line 148
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 149
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    if-eqz v1, :cond_3

    .line 151
    :try_start_1
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :cond_3
    :goto_1
    new-instance v1, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;-><init>(Lcom/rayclear/videomessage/ui/EditHuoDong;Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;)V

    iput-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    .line 156
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->editActivityTask:Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/rayclear/videomessage/ui/EditHuoDong$EditActivityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 159
    :sswitch_2
    iput-boolean v5, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->isDuration:Z

    .line 160
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    iget v2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->hour:I

    iget v3, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->minute:I

    invoke-virtual {v1, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 161
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_0

    .line 164
    :sswitch_3
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->datePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_0

    .line 167
    :sswitch_4
    iput-boolean v6, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->isDuration:Z

    .line 168
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-wide v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    long-to-int v3, v3

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v1, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 169
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_0

    .line 152
    :catch_1
    move-exception v1

    goto :goto_1

    .line 113
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
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->setContentView(I)V

    .line 55
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->titileEditText:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->passwdEditText:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->joinNumEditText:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->starttimeTextView:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->startDateTextView:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->durationTextView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/EditHuoDong;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->checkBox:Landroid/widget/CheckBox;

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 72
    .local v6, calendar:Ljava/util/Calendar;
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v0

    iget-wide v0, v0, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->year:I

    .line 74
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->month:I

    .line 75
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->day:I

    .line 76
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->hour:I

    .line 77
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->minute:I

    .line 79
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->titileEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-object v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->startDateTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v1, v2}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->starttimeTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v1, v2}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->durationTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-wide v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-static {v1, v2}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyDurationString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->passwdEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    iget-object v1, v1, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v0

    iget v0, v0, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->joinNumEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget v3, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->year:I

    iget v4, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->month:I

    iget v5, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->day:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->datePickerDialog:Landroid/app/DatePickerDialog;

    .line 91
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->hour:I

    iget v4, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->minute:I

    move-object v1, p0

    move-object v2, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->timePickerDialog:Landroid/app/TimePickerDialog;

    .line 94
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    .line 95
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u63d0\u4ea4\u4fee\u6539"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->progressDialog:Landroid/app/ProgressDialog;

    .line 98
    new-instance v1, Lcom/rayclear/videomessage/ui/EditHuoDong$1;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/EditHuoDong$1;-><init>(Lcom/rayclear/videomessage/ui/EditHuoDong;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 108
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 179
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

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 181
    .local v0, calendar:Ljava/util/Calendar;
    iget v4, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->hour:I

    iget v5, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->minute:I

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 182
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 183
    .local v6, setTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-gez v1, :cond_0

    .line 185
    const-string v1, "\u8bbe\u7f6e\u65f6\u95f4\u4e0d\u80fd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 199
    :goto_0
    return-void

    .line 190
    :cond_0
    iput p2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->year:I

    .line 191
    iput p3, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->month:I

    .line 192
    iput p4, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->day:I

    .line 195
    iget v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->year:I

    iget v2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->month:I

    iget v3, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->day:I

    iget v4, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->hour:I

    iget v5, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->minute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 196
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 197
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->startDateTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->starttimeTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 10
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v9, 0x0

    .line 203
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

    .line 205
    iget-boolean v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->isDuration:Z

    if-eqz v1, :cond_1

    .line 207
    mul-int/lit16 v1, p2, 0xe10

    mul-int/lit8 v2, p3, 0x3c

    add-int/2addr v1, v2

    mul-int/lit16 v6, v1, 0x3e8

    .line 208
    .local v6, duration:I
    if-nez v6, :cond_0

    .line 210
    const-string v1, "\u6301\u7eed\u65f6\u95f4\u4e0d\u80fd\u4e3a0"

    invoke-static {p0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 234
    .end local v6           #duration:I
    :goto_0
    return-void

    .line 214
    .restart local v6       #duration:I
    :cond_0
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    mul-int/lit16 v2, p2, 0xe10

    mul-int/lit8 v3, p3, 0x3c

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    .line 215
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->durationTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyDurationString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    .end local v6           #duration:I
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 218
    .local v0, calendar:Ljava/util/Calendar;
    iget v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->year:I

    iget v2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->month:I

    iget v3, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->day:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 219
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 220
    .local v7, setTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v7, v1

    if-gez v1, :cond_2

    .line 222
    const-string v1, "\u8bbe\u7f6e\u65f6\u95f4\u4e0d\u80fd\u5c0f\u4e8e\u5f53\u524d\u65f6\u95f4"

    invoke-static {p0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    :cond_2
    iput p2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->hour:I

    .line 227
    iput p3, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->minute:I

    .line 228
    iget v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->year:I

    iget v2, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->month:I

    iget v3, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->day:I

    iget v4, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->hour:I

    iget v5, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->minute:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 229
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "partyModel.starttime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->startDateTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/EditHuoDong;->starttimeTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getPartyFormatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
