.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;
.super Landroid/os/Handler;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    .line 289
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 293
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 530
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 296
    :pswitch_1
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    const-string v24, "\u9519\u8bef"

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 298
    const-string v24, "\u8fde\u63a5\u5df2\u65ad\u5f00"

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 299
    const-string v24, "\u786e\u5b9a"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 300
    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    .line 301
    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 304
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->getChannelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/app/ProgressDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/ProgressDialog;->dismiss()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    const-string v24, "\u521b\u5efa\u6d3b\u52a8\u5931\u8d25"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 308
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->getChannelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/app/ProgressDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/ProgressDialog;->dismiss()V

    .line 309
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 312
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    .local v11, jsonObject:Lorg/json/JSONObject;
    new-instance v14, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-direct {v14}, Lcom/rayclear/videomessage/model/PartyModel;-><init>()V

    .line 314
    .local v14, partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    const-string v23, "message"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    .line 315
    const-string v23, "token"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/rayclear/videomessage/common/AppContext;->savePartyModel(Landroid/content/Context;Lcom/rayclear/videomessage/model/PartyModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 321
    .end local v11           #jsonObject:Lorg/json/JSONObject;
    .end local v14           #partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->activityTitlePanel:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$1(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sharePanel:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$2(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 326
    :pswitch_4
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 328
    .local v9, id:I
    const v23, 0x7f08005a

    move/from16 v0, v23

    if-ne v9, v0, :cond_3

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v24, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->maxCameraRoom:I
    invoke-static/range {v24 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$4(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v24, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->maxCameraRoom:I
    invoke-static/range {v24 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$4(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$5(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 337
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$6(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/ProgressBar;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v24, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v24 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v25, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->maxCameraRoom:I
    invoke-static/range {v25 .. v25}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$4(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v25

    div-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomNumTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$7(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v25, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v25 .. v25}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 342
    .local v13, parameters:Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 363
    .end local v9           #id:I
    .end local v13           #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v23

    goto/16 :goto_0

    .line 335
    .restart local v9       #id:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$5(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    goto/16 :goto_2

    .line 345
    :cond_3
    const v23, 0x7f080059

    move/from16 v0, v23

    if-ne v9, v0, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    if-gtz v23, :cond_5

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$5(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 353
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v23

    if-eqz v23, :cond_4

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 355
    .restart local v13       #parameters:Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->camera:Landroid/hardware/Camera;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/hardware/Camera;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 358
    .end local v13           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$6(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/ProgressBar;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v24, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v24 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v25, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->maxCameraRoom:I
    invoke-static/range {v25 .. v25}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$4(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v25

    div-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomNumTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$7(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v25, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v25 .. v25}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 350
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomProgress:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$5(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 367
    .end local v9           #id:I
    
    
    
    
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->zoomPanelView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$9(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 371
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->uploadProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$10(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/app/ProgressDialog;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v24, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->uploadProgress:I
    invoke-static/range {v24 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$11(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 374
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->isRecording:Z
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$12(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    rem-int/lit8 v23, v23, 0x2

    if-nez v23, :cond_6

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordIV:Landroid/widget/ImageView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$14(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/ImageView;

    move-result-object v23

    const v24, 0x7f020079

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 380
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordIV:Landroid/widget/ImageView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$14(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/ImageView;

    move-result-object v23

    const v24, 0x7f02007a

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 387
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 395
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordIV:Landroid/widget/ImageView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$14(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/ImageView;

    move-result-object v23

    const v24, 0x7f02007a

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTextZone:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$15(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    const v24, 0x7f08005b

    invoke-virtual/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 400
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordIV:Landroid/widget/ImageView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$14(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/ImageView;

    move-result-object v23

    const v24, 0x7f020079

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTextZone:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$15(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$16(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->lastSendedOffset:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$17(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->showbandwidthlowcnt:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$18(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    goto/16 :goto_0

    .line 407
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    const-string v24, "\u68c0\u6d4b\u5230\u60a8\u7684\u5e26\u5bbd\u592a\u4f4e\uff0c\u53ef\u80fd\u4f1a\u5f71\u54cd\u76f4\u64ad\u6548\u679c"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 411
    
    
    
    
    :pswitch_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->isRecording:Z
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$12(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCntTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$19(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u6613\u89c6 "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v25, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static/range {v25 .. v25}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/rayclear/videomessage/common/SysUtil;->getFormatedRecordTime(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    rem-int/lit8 v23, v23, 0x3d

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->useRealtime:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 420
    new-instance v15, Lcom/rayclear/videomessage/common/SDcardUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Lcom/rayclear/videomessage/common/SDcardUtil;-><init>(Landroid/content/Context;)V

    .line 421
    .local v15, sDcardUtil:Lcom/rayclear/videomessage/common/SDcardUtil;
    iget-object v0, v15, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/rayclear/videomessage/common/SDcardUtil;->getSDCardAvableSpaceMb(Ljava/lang/String;)I

    move-result v5

    .line 422
    .local v5, availablespcaeMB:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sdcardSpaceTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$21(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->formatSpaceMb(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->sdcardSpaceTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$21(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    .end local v5           #availablespcaeMB:I
    .end local v15           #sDcardUtil:Lcom/rayclear/videomessage/common/SDcardUtil;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    rem-int/lit8 v23, v23, 0x3

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_0

    .line 428
    :cond_9
    const-string v17, ""

    .line 429
    .local v17, speedString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->rtmpSendedSize:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$22(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v6

    .line 430
    .local v6, curOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->lastSendedOffset:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$23(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    sub-int v23, v6, v23

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xbb8

    move/from16 v16, v0

    .line 431
    .local v16, speed:I
    if-lez v16, :cond_a

    const/16 v23, 0x6

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->showbandwidthlowcnt:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$24(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->showbandwidthlowcnt:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$18(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->showbandwidthlowcnt:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$24(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0xdb

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    .line 439
    :cond_a
    const/16 v23, 0x6

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->showbandwidthlowcnt:I
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$24(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->showbandwidthlowcnt:I
    invoke-static/range {v23 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$18(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 443
    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 445
    const-string v17, "\u6b63\u5728\u538b\u7f29\u6570\u636e.."

    .line 450
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #setter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->lastSendedOffset:I
    invoke-static {v0, v6}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$17(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;I)V

    .line 451
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u7edf\u8ba1\u901f\u7387 = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v24, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCnt:I
    invoke-static/range {v24 .. v24}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v24

    div-int v24, v6, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordSpeedTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$26(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 456
    .end local v6           #curOffset:I
    .end local v16           #speed:I
    .end local v17           #speedString:Ljava/lang/String;
    :catch_1
    move-exception v23

    goto/16 :goto_0

    .line 415
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCntTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$19(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u6613\u89c6 "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v25, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->recordTimeCntAtStop:I
    invoke-static/range {v25 .. v25}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$20(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/rayclear/videomessage/common/SysUtil;->getFormatedRecordTime(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 448
    .restart local v6       #curOffset:I
    .restart local v16       #speed:I
    .restart local v17       #speedString:Ljava/lang/String;
    :cond_d
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " KB/s"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    goto :goto_5

    .line 461
    .end local v6           #curOffset:I
    .end local v16           #speed:I
    .end local v17           #speedString:Ljava/lang/String;
    
    
    
    
    
    
    
    
    
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->connectingProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$27(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/app/ProgressDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/ProgressDialog;->dismiss()V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->startRecord()V
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$28(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    goto/16 :goto_0

    .line 466
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->connectingProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$27(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/app/ProgressDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/ProgressDialog;->dismiss()V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->msgHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0xdf

    const-string v25, "\u7f51\u7edc\u8fde\u63a5\u5df2\u65ad\u5f00"

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->isRecording:Z
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$12(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->stopRecord()V
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    .line 472
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->finish()V

    goto/16 :goto_0

    .line 475
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 476
    .local v20, substr:Ljava/lang/String;
    const-string v23, "(\\r)*\\n"

    const-string v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, Demostr:Ljava/lang/String;
    const-string v23, ":"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 480
    .local v10, indexofcolon:I
    if-gez v10, :cond_11

    .line 481
    const-string v21, "\u5bf9\u65b9: "

    .line 482
    .local v21, sysErr:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 483
    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 484
    new-instance v19, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 485
    .local v19, style:Landroid/text/SpannableStringBuilder;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/high16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const/16 v25, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 491
    .end local v21           #sysErr:Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$30()Ljava/util/List;

    move-result-object v24

    monitor-enter v24

    .line 492
    :try_start_3
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$30()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->chatroom:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$31(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 496
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->chatroomTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$32(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getVisibility()I

    move-result v23

    const/16 v25, 0x4

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->chatroomTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$32(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    :cond_f
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->chatroom:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$31(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 502
    :try_start_5
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$30()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v12

    .line 503
    .local v12, lines:I
    const/16 v18, 0x0

    .line 505
    .local v18, startIndex:I
    const/16 v23, 0x5

    move/from16 v0, v23

    if-le v12, v0, :cond_10

    .line 506
    add-int/lit8 v18, v12, -0x5

    .line 509
    :cond_10
    new-instance v22, Landroid/text/SpannableStringBuilder;

    const-string v23, ""

    invoke-direct/range {v22 .. v23}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 511
    .local v22, totalStyle:Landroid/text/SpannableStringBuilder;
    move/from16 v8, v18

    .local v8, i:I
    :goto_7
    if-lt v8, v12, :cond_12

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->chatroomTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$32(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v23, v0

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->showChatContentTimer:Ljava/util/Timer;
    invoke-static/range {v23 .. v23}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$33(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)Ljava/util/Timer;

    move-result-object v23

    new-instance v24, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$1;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$MyTask;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    const-wide/16 v25, 0x2710

    invoke-virtual/range {v23 .. v26}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 487
    .end local v8           #i:I
    .end local v12           #lines:I
    .end local v18           #startIndex:I
    .end local v19           #style:Landroid/text/SpannableStringBuilder;
    .end local v22           #totalStyle:Landroid/text/SpannableStringBuilder;
    :cond_11
    new-instance v19, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 488
    .restart local v19       #style:Landroid/text/SpannableStringBuilder;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const v24, -0xff0100

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const/16 v25, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    .line 491
    :catchall_0
    move-exception v23

    :try_start_6
    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v23

    .line 495
    :catchall_1
    move-exception v23

    :try_start_7
    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v23

    .line 512
    .restart local v8       #i:I
    .restart local v12       #lines:I
    .restart local v18       #startIndex:I
    .restart local v22       #totalStyle:Landroid/text/SpannableStringBuilder;
    :cond_12
    :try_start_8
    invoke-static {}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$30()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/SpannableStringBuilder;

    .line 514
    .local v7, curStyle:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 515
    add-int/lit8 v23, v12, -0x1

    move/from16 v0, v23

    if-eq v8, v0, :cond_13

    .line 516
    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 511
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 501
    .end local v7           #curStyle:Landroid/text/SpannableStringBuilder;
    .end local v8           #i:I
    .end local v12           #lines:I
    .end local v18           #startIndex:I
    .end local v22           #totalStyle:Landroid/text/SpannableStringBuilder;
    :catchall_2
    move-exception v23

    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v23

    .line 318
    .end local v4           #Demostr:Ljava/lang/String;
    .end local v10           #indexofcolon:I
    .end local v19           #style:Landroid/text/SpannableStringBuilder;
    .end local v20           #substr:Ljava/lang/String;
    :catch_2
    move-exception v23

    goto/16 :goto_1

    .line 293
    :pswitch_data_0
    .packed-switch 0xcd
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
