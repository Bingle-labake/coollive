.class public Lcom/rayclear/videomessage/ui/settings/ShareApp;
.super Landroid/app/Activity;
.source "ShareApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    }
.end annotation


# static fields
.field private static final ACTIVITY_RESULT_PICK_CONTACT:I = 0x64

.field private static final BroadCast_SEND_SMS:Ljava/lang/String; = "rayclear.SharePrepare.send.sms"

.field private static final MESSAGE_ADD_NEW_CONTACT:I = 0x2

.field private static final MESSAGE_CHOOSED_CONTACT_CHANGED:I = 0x1

.field private static final MESSAGE_NO_PROPER_CONTACT:I = 0x0

.field private static final MESSAGE_SENDED_FAIL:I = 0x4

.field private static final MESSAGE_SENDED_OK:I = 0x3


# instance fields
.field private SMS_RCV_BROADCAST_COUNT:I

.field private SMS_SENDED_COUNT:I

.field private choosedContacts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;",
            ">;"
        }
    .end annotation
.end field

.field private curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

.field private inputcontactEditText:Landroid/widget/EditText;

.field private msgHandler:Landroid/os/Handler;

.field private sendsmsProgressDialog:Landroid/app/ProgressDialog;

.field private showChoosedContactTextView:Landroid/widget/TextView;

.field private smsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private tosharestringEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->showChoosedContactTextView:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->inputcontactEditText:Landroid/widget/EditText;

    .line 54
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->tosharestringEditText:Landroid/widget/EditText;

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->choosedContacts:Ljava/util/Hashtable;

    .line 56
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    .line 57
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;

    .line 59
    iput v2, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_SENDED_COUNT:I

    .line 60
    iput v2, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_RCV_BROADCAST_COUNT:I

    .line 62
    new-instance v0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;-><init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/settings/ShareApp$2;-><init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->smsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->choosedContacts:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->inputcontactEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/rayclear/videomessage/ui/settings/ShareApp;Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->parseContactString(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->showChoosedContactTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/rayclear/videomessage/ui/settings/ShareApp;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_RCV_BROADCAST_COUNT:I

    return v0
.end method

.method static synthetic access$8(Lcom/rayclear/videomessage/ui/settings/ShareApp;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_RCV_BROADCAST_COUNT:I

    return-void
.end method

.method static synthetic access$9(Lcom/rayclear/videomessage/ui/settings/ShareApp;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_SENDED_COUNT:I

    return v0
.end method

.method private parseContactString(Ljava/lang/String;)Ljava/util/Vector;
    .locals 7
    .parameter "mobiles"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    const-string v5, "1\\d{10}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 339
    .local v2, p:Ljava/util/regex/Pattern;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 340
    .local v4, vector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 341
    .local v0, index:I
    :cond_0
    :goto_0
    const-string v5, "1"

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    .line 357
    return-object v4

    .line 345
    :cond_1
    add-int/lit8 v5, v0, 0xb

    :try_start_0
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 347
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 349
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    add-int/lit8 v0, v0, 0xb

    goto :goto_0

    .line 352
    .end local v1           #m:Ljava/util/regex/Matcher;
    .end local v3           #string:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 189
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 190
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->smsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 249
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 252
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 255
    .local v3, uriRet:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 259
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 260
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 262
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 263
    new-instance v2, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;-><init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    const-string v4, "display_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->nameString:Ljava/lang/String;

    .line 265
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 266
    .local v12, contactId:I
    invoke-virtual/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "data2"

    aput-object v7, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "contact_id = "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 267
    .local v16, phones:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v10, allphones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 280
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_3

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 328
    .end local v3           #uriRet:Landroid/net/Uri;
    .end local v10           #allphones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #contactId:I
    .end local v16           #phones:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 270
    .restart local v3       #uriRet:Landroid/net/Uri;
    .restart local v10       #allphones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #contactId:I
    .restart local v16       #phones:Landroid/database/Cursor;
    :cond_2
    const-string v2, "data2"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 271
    .local v15, phoneType:I
    const/4 v2, 0x2

    if-ne v15, v2, :cond_0

    .line 275
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 274
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 276
    .local v14, phoneNumber:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    .end local v10           #allphones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #contactId:I
    .end local v14           #phoneNumber:Ljava/lang/String;
    .end local v15           #phoneType:I
    .end local v16           #phones:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 317
    .local v13, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 285
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v10       #allphones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #contactId:I
    .restart local v16       #phones:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->phoneString:Ljava/lang/String;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    iget-object v2, v2, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->phoneString:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    iget-object v4, v4, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->phoneString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 294
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 297
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 298
    .local v17, strings:[Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    const-string v4, "\u8bf7\u9009\u62e9\u4e00\u4e2a\u624b\u673a\u53f7"

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 301
    new-instance v4, Lcom/rayclear/videomessage/ui/settings/ShareApp$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/rayclear/videomessage/ui/settings/ShareApp$3;-><init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;[Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 211
    :pswitch_1
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v7, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    .local v7, intent:Landroid/content/Intent;
    const/16 v2, 0x64

    invoke-virtual {p0, v7, v2}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v7           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 218
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 220
    .local v0, smsManager:Landroid/telephony/SmsManager;
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->tosharestringEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, shareString:Ljava/lang/String;
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->inputcontactEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, mobiles:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    invoke-direct {p0, v8}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->parseContactString(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v9

    .line 224
    .local v9, realchoosedContacts:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v5, v11, :cond_0

    .line 225
    invoke-virtual {v0, v10}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 226
    .local v6, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v11, :cond_0

    .line 227
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 228
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/2addr v5, v11

    iput v5, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_SENDED_COUNT:I

    .line 229
    iput v13, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->SMS_RCV_BROADCAST_COUNT:I

    .line 230
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, num:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, content:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v5, "rayclear.SharePrepare.send.sms"

    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v5, "num"

    invoke-virtual {v7, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v5, "content"

    invoke-virtual {v7, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-static {p0, v13, v7, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, sentPI:Landroid/app/PendingIntent;
    move-object v5, v2

    .line 238
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x7f08009a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 176
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->setContentView(I)V

    .line 177
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->showChoosedContactTextView:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->tosharestringEditText:Landroid/widget/EditText;

    .line 179
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->inputcontactEditText:Landroid/widget/EditText;

    .line 180
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->inputcontactEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;

    .line 184
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u53d1\u9001\u77ed\u4fe1"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->smsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "rayclear.SharePrepare.send.sms"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void
.end method
