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
    