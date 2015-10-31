.class public Lcom/rayclear/videomessage/common/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipRectBitmapByCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "sourceBitmap"
    .parameter "oritation"

    .prologue
    .line 23
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 24
    .local v16, sourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 26
    .local v15, sourceHeight:I
    move/from16 v0, v16

    if-le v0, v15, :cond_2

    move/from16 v1, v16

    :goto_0
    const/16 v2, 0x140

    if-ge v1, v2, :cond_0

    .line 28
    move/from16 v0, v16

    if-ge v0, v15, :cond_3

    .line 30
    const/16 v1, 0x140

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 38
    :cond_0
    :goto_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 39
    .local v6, matrix:Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 50
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 53
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 53
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 55
    .local v12, rotatedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 56
    .local v14, rotatedBitmapWidth:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 60
    .local v13, rotatedBitmapHeight:I
    move v9, v14

    .line 61
    .local v9, clipWidth:I
    mul-int/lit8 v1, v14, 0x4

    div-int/lit8 v8, v1, 0x3

    .line 62
    .local v8, clipHeight:I
    if-le v8, v13, :cond_1

    .line 64
    move v8, v13

    .line 65
    mul-int/lit8 v1, v13, 0x3

    div-int/lit8 v9, v1, 0x4

    .line 67
    :cond_1
    div-int/lit8 v1, v14, 0x2

    div-int/lit8 v2, v9, 0x2

    sub-int/2addr v1, v2

    .line 68
    div-int/lit8 v2, v13, 0x2

    div-int/lit8 v3, v8, 0x2

    sub-int/2addr v2, v3

    .line 67
    invoke-static {v12, v1, v2, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 70
    .local v10, clipedBitmap:Landroid/graphics/Bitmap;
    const/16 v1, 0x140

    invoke-static {v10, v1}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 74
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v8           #clipHeight:I
    .end local v9           #clipWidth:I
    .end local v10           #clipedBitmap:Landroid/graphics/Bitmap;
    .end local v12           #rotatedBitmap:Landroid/graphics/Bitmap;
    .end local v13           #rotatedBitmapHeight:I
    .end local v14           #rotatedBitmapWidth:I
    .end local v15           #sourceHeight:I
    .end local v16           #sourceWidth:I
    :goto_3
    return-object v11

    .restart local v15       #sourceHeight:I
    .restart local v16       #sourceWidth:I
    :cond_2
    move v1, v15

    .line 26
    goto :goto_0

    .line 32
    :cond_3
    const/16 v1, 0x140

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 41
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    :pswitch_1
    const/high16 v1, 0x42b4

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    .line 72
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v15           #sourceHeight:I
    .end local v16           #sourceWidth:I
    :catch_0
    move-exception v1

    .line 74
    const/4 v11, 0x0

    goto :goto_3

    .line 44
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v15       #sourceHeight:I
    .restart local v16       #sourceWidth:I
    :pswitch_2
    const/high16 v1, 0x4334

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    .line 47
    :pswitch_3
    const/high16 v1, 0x4387

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 39
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static clipRectBitmapByCenter(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 27
    .parameter "bitmapFilePath"

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, sourceThumbBitmap:Landroid/graphics/Bitmap;
    const/16 v18, 0x1

    .line 87
    .local v18, oritation:I
    const/16 v24, 0x0

    .line 88
    .local v24, sourceWidth:I
    const/16 v23, 0x0

    .line 92
    .local v23, sourceHeight:I
    :try_start_0
    new-instance v13, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 93
    .local v13, exifInterface:Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    invoke-virtual {v13, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 94
    .local v25, tag:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 100
    .end local v13           #exifInterface:Landroid/media/ExifInterface;
    .end local v25           #tag:Ljava/lang/String;
    :goto_0
    const/16 v17, 0x0

    .line 102
    .local v17, originsize:I
    :try_start_1
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 103
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 105
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, v4, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    const/16 v3, 0x140

    move/from16 v0, v17

    if-le v0, v3, :cond_6

    .line 111
    const/16 v22, 0x1

    .line 112
    .local v22, sample:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    const/16 v3, 0x14

    if-lt v15, v3, :cond_5

    .line 122
    :cond_0
    :try_start_2
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    .restart local v16       #options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v2

    .line 130
    .end local v15           #i:I
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v22           #sample:I
    :goto_3
    if-nez v2, :cond_1

    .line 132
    :try_start_3
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 135
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 137
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    move/from16 v3, v24

    :goto_4
    const/16 v4, 0x140

    if-ge v3, v4, :cond_2

    .line 139
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 141
    const/16 v3, 0x140

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 149
    :cond_2
    :goto_5
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 150
    .local v7, matrix:Landroid/graphics/Matrix;
    packed-switch v18, :pswitch_data_0

    .line 161
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 164
    :goto_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 165
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    .line 164
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 166
    .local v19, rotatedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 167
    .local v21, rotatedBitmapWidth:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 171
    .local v20, rotatedBitmapHeight:I
    move/from16 v10, v21

    .line 172
    .local v10, clipWidth:I
    mul-int/lit8 v3, v21, 0x4

    div-int/lit8 v9, v3, 0x3

    .line 173
    .local v9, clipHeight:I
    move/from16 v0, v20

    if-le v9, v0, :cond_3

    .line 175
    move/from16 v9, v20

    .line 176
    mul-int/lit8 v3, v20, 0x3

    div-int/lit8 v10, v3, 0x4

    .line 178
    :cond_3
    div-int/lit8 v3, v21, 0x2

    div-int/lit8 v4, v10, 0x2

    sub-int/2addr v3, v4

    .line 179
    div-int/lit8 v4, v20, 0x2

    div-int/lit8 v5, v9, 0x2

    sub-int/2addr v4, v5

    .line 178
    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v10, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 181
    .local v11, clipedBitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x140

    invoke-static {v11, v3}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 182
    .local v14, finalBitmap:Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v14

    .line 184
    :try_start_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 190
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v9           #clipHeight:I
    .end local v10           #clipWidth:I
    .end local v11           #clipedBitmap:Landroid/graphics/Bitmap;
    .end local v14           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v17           #originsize:I
    .end local v19           #rotatedBitmap:Landroid/graphics/Bitmap;
    .end local v20           #rotatedBitmapHeight:I
    .end local v21           #rotatedBitmapWidth:I
    :goto_7
    return-object v14

    .line 95
    :catch_0
    move-exception v12

    .line 96
    .local v12, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 97
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 105
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v16       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #originsize:I
    :cond_4
    :try_start_6
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 106
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v12

    .line 107
    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 188
    .end local v12           #e:Ljava/lang/Exception;
    .end local v17           #originsize:I
    :catch_2
    move-exception v3

    .line 190
    const/4 v14, 0x0

    goto :goto_7

    .line 114
    .restart local v15       #i:I
    .restart local v17       #originsize:I
    .restart local v22       #sample:I
    :cond_5
    const-wide/high16 v3, 0x4000

    int-to-double v5, v15

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v26, v0

    .line 115
    .local v26, temSample:I
    div-int v3, v17, v26

    const/16 v4, 0x140

    if-lt v3, v4, :cond_0

    .line 119
    move/from16 v22, v26

    .line 112
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 128
    .end local v15           #i:I
    .end local v22           #sample:I
    .end local v26           #temSample:I
    :cond_6
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_3

    :cond_7
    move/from16 v3, v23

    .line 137
    goto/16 :goto_4

    .line 143
    :cond_8
    const/16 v3, 0x140

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_5

    .line 152
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    :pswitch_1
    const/high16 v3, 0x42b4

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_6

    .line 155
    :pswitch_2
    const/high16 v3, 0x4334

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_6

    .line 158
    :pswitch_3
    const/high16 v3, 0x4387

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_6

    .line 185
    .restart local v9       #clipHeight:I
    .restart local v10       #clipWidth:I
    .restart local v11       #clipedBitmap:Landroid/graphics/Bitmap;
    .restart local v14       #finalBitmap:Landroid/graphics/Bitmap;
    .restart local v19       #rotatedBitmap:Landroid/graphics/Bitmap;
    .restart local v20       #rotatedBitmapHeight:I
    .restart local v21       #rotatedBitmapWidth:I
    :catch_3
    move-exception v3

    goto :goto_7

    .line 125
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v9           #clipHeight:I
    .end local v10           #clipWidth:I
    .end local v11           #clipedBitmap:Landroid/graphics/Bitmap;
    .end local v14           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v19           #rotatedBitmap:Landroid/graphics/Bitmap;
    .end local v20           #rotatedBitmapHeight:I
    .end local v21           #rotatedBitmapWidth:I
    .restart local v15       #i:I
    .restart local v22       #sample:I
    :catch_4
    move-exception v3

    goto/16 :goto_3

    .line 150
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getThumbFromCache(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmapFilePath"
    .parameter "maxwidth"

    .prologue
    .line 200
    const/4 v5, 0x0

    .line 203
    .local v5, sourceThumbBitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 205
    .local v3, originsize:I
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 206
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 207
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 208
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v7, v8, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    if-le v3, p1, :cond_3

    .line 214
    const/4 v4, 0x1

    .line 215
    .local v4, sample:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v7, 0x14

    if-lt v1, v7, :cond_2

    .line 225
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 226
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 227
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 236
    .end local v1           #i:I
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #sample:I
    .end local v5           #sourceThumbBitmap:Landroid/graphics/Bitmap;
    :goto_2
    return-object v5

    .line 208
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #sourceThumbBitmap:Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 209
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 236
    const/4 v5, 0x0

    goto :goto_2

    .line 217
    .restart local v1       #i:I
    .restart local v4       #sample:I
    :cond_2
    const-wide/high16 v7, 0x4000

    int-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v6, v7

    .line 218
    .local v6, temSample:I
    div-int v7, v3, v6

    if-lt v7, p1, :cond_0

    .line 222
    move v4, v6

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    .end local v1           #i:I
    .end local v4           #sample:I
    .end local v6           #temSample:I
    :cond_3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_2

    .line 228
    .restart local v1       #i:I
    .restart local v4       #sample:I
    :catch_2
    move-exception v7

    goto :goto_2
.end method
