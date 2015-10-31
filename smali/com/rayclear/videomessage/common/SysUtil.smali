.class public Lcom/rayclear/videomessage/common/SysUtil;
.super Ljava/lang/Object;
.source "SysUtil.java"


# static fields
.field public static final KEY_REASON:Ljava/lang/String; = "reason"

.field public static final KEY_RESULT_CODE:Ljava/lang/String; = "result"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MakeStreamInfo(SSILjava/lang/String;ILjava/lang/String;)[B
    .locals 1
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "fps"
    .parameter "title"
    .parameter "privacy"
    .parameter "videoServerSqlId"

    .prologue
    .line 1118
    const/4 v0, 0x0

    return-object v0
.end method

.method public static clearApp(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 685
    const-string v2, "testcrash"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 686
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isquitbyuser"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 689
    return-void
.end method

.method public static createReflectedImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "originalBitmap"

    .prologue
    .line 1055
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1057
    .local v4, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 1059
    .local v15, height:I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1061
    .local v6, matrix:Landroid/graphics/Matrix;
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1063
    const/4 v2, 0x0

    .line 1064
    mul-int/lit8 v1, v15, 0x2

    div-int/lit8 v3, v1, 0x3

    div-int/lit8 v5, v15, 0x3

    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 1063
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1068
    .local v17, reflectionBitmap:Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 1069
    .local v16, paint:Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1070
    const/4 v10, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v11, v1

    const v12, 0x70ffffff

    const v13, 0xffffff

    .line 1071
    sget-object v14, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 1069
    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1072
    .local v7, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1073
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1074
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1076
    .local v8, canvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v11, v1

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v12, v1

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1077
    return-object v17
.end method

.method public static debugPrintByteArray([BI)V
    .locals 6
    .parameter "buffer"
    .parameter "printlength"

    .prologue
    .line 1122
    if-eqz p0, :cond_0

    array-length v5, p0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    if-ge p1, v5, :cond_1

    .line 1123
    :cond_0
    const-string v5, "Hex is empty!"

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1203
    :goto_0
    return-void

    .line 1126
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1128
    .local v4, stringBuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    array-length v5, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p1, v5, :cond_7

    move v5, p1

    :goto_2
    if-lt v1, v5, :cond_2

    .line 1202
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    goto :goto_0

    .line 1129
    :cond_2
    if-lez v1, :cond_3

    :try_start_1
    rem-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_3

    .line 1130
    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1132
    :cond_3
    if-lez v1, :cond_4

    rem-int/lit8 v5, v1, 0x10

    if-nez v5, :cond_4

    .line 1133
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1135
    :cond_4
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    const/4 v5, 0x2

    if-lt v3, v5, :cond_5

    .line 1196
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1136
    :cond_5
    const/4 v2, 0x0

    .line 1137
    .local v2, index:I
    if-nez v3, :cond_6

    .line 1138
    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 1142
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 1135
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1140
    :cond_6
    aget-byte v5, p0, v1

    and-int/lit8 v2, v5, 0xf

    goto :goto_5

    .line 1144
    :pswitch_0
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 1199
    .end local v2           #index:I
    .end local v3           #j:I
    :catch_0
    move-exception v0

    .line 1200
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1147
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #index:I
    .restart local v3       #j:I
    :pswitch_1
    :try_start_2
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1150
    :pswitch_2
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1153
    :pswitch_3
    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1156
    :pswitch_4
    const-string v5, "4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1159
    :pswitch_5
    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1162
    :pswitch_6
    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1165
    :pswitch_7
    const-string v5, "7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1168
    :pswitch_8
    const-string v5, "8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1171
    :pswitch_9
    const-string v5, "9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1174
    :pswitch_a
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1177
    :pswitch_b
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1180
    :pswitch_c
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1183
    :pswitch_d
    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1186
    :pswitch_e
    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1189
    :pswitch_f
    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1128
    .end local v2           #index:I
    .end local v3           #j:I
    :cond_7
    array-length v5, p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static deleteExtraComma(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 488
    invoke-static {p0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    const-string v3, ""

    .line 505
    :goto_0
    return-object v3

    .line 492
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 493
    .local v1, stringBuffer:Ljava/lang/StringBuffer;
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, strings:[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_2

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 503
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 505
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 494
    :cond_2
    aget-object v0, v2, v3

    .line 496
    .local v0, string:Ljava/lang/String;
    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 498
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static doLogin(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 32
    .parameter "context"

    .prologue
    .line 78
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v16, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v27, "result"

    const/16 v28, 0x190

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v27, "reason"

    const-string v28, "\u767b\u9646\u5931\u8d25"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :goto_0
    const-string v27, "pref"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 87
    .local v21, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v27, "userphone"

    const-string v28, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 88
    .local v25, userphone:Ljava/lang/String;
    const-string v27, "userpasswd"

    const-string v28, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 89
    .local v20, password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/AppContext;->saveUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    new-instance v27, Ljava/lang/StringBuilder;

    sget-object v28, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "/users/sign_in.json"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 91
    .local v23, url:Ljava/lang/String;
    sget-boolean v27, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v27, :cond_0

    .line 93
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "login url:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :cond_0
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 96
    .local v12, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v18, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct/range {v18 .. v18}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 98
    .local v18, multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    :try_start_1
    const-string v27, "user[login]"

    new-instance v28, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v29, "utf-8"

    invoke-static/range {v29 .. v29}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 99
    const-string v27, "user[password]"

    new-instance v28, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 100
    const-string v27, "ver"

    new-instance v28, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v29, "a0000111"

    invoke-direct/range {v28 .. v29}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 101
    const-string v27, "device"

    new-instance v28, Lorg/apache/http/entity/mime/content/StringBody;

    sget-object v29, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct/range {v28 .. v29}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 102
    const-string v27, "rom_id"

    new-instance v28, Lorg/apache/http/entity/mime/content/StringBody;

    sget-object v29, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct/range {v28 .. v29}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 103
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 104
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 105
    .local v8, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v27

    const-string v28, "http.connection.timeout"

    const/16 v29, 0x4e20

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v27 .. v29}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 106
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v27

    const-string v28, "http.socket.timeout"

    const/16 v29, 0x4e20

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v27 .. v29}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 107
    invoke-virtual {v8, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 111
    .local v13, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v27

    const/16 v28, 0xc8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 113
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v28, "login success"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v17

    .line 115
    .local v17, loginresultString:Ljava/lang/String;
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .local v19, object:Lorg/json/JSONObject;
    sget-boolean v27, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v27, :cond_1

    .line 118
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "login result = "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :cond_1
    :try_start_2
    const-string v27, "ss_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/rayclear/videomessage/common/AppContext;->ss_key:Ljava/lang/String;

    .line 122
    const-string v27, "ss_ip"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/AppContext;->setServerAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    const-string v27, "ss_port"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/AppContext;->setServerPort(Landroid/content/Context;I)V

    .line 124
    const-string v27, "ss_app"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/AppContext;->setServerAppName(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    const-string v27, "available"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/AppContext;->setUserAvaiable(Landroid/content/Context;Z)V

    .line 126
    const-string v27, "unavailable_reason"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/AppContext;->setUnavailableReason(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    :goto_1
    :try_start_3
    const-string v27, "user"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 130
    .local v24, userJsonObject:Lorg/json/JSONObject;
    const-string v27, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/AppContext;->saveUserID(Landroid/content/Context;I)V

    .line 131
    const-string v27, "encode_mode"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    sput v27, Lcom/rayclear/videomessage/common/AppContext;->encode_mode:I

    .line 132
    const-string v27, "username"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/rayclear/videomessage/common/AppContext;->userNickNameString:Ljava/lang/String;

    .line 134
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v11

    .line 135
    .local v11, headers:[Lorg/apache/http/Header;
    const/4 v6, 0x0

    .line 136
    .local v6, cookieString:Ljava/lang/String;
    array-length v0, v11

    move/from16 v28, v0

    const/16 v27, 0x0

    :goto_2
    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_5

    .line 149
    new-instance v3, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const-string v27, "_sms_session"

    move-object/from16 v0, v27

    invoke-direct {v3, v0, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v3, basicClientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    sget-object v27, Lcom/rayclear/videomessage/common/AppContext;->hostAddr:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 151
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 152
    const-string v27, "/"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 153
    new-instance v4, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 154
    .local v4, basicCookieStore:Lorg/apache/http/impl/client/BasicCookieStore;
    invoke-virtual {v4, v3}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 158
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/rayclear/videomessage/common/AppContext;->saveCookieStore(Landroid/content/Context;Lorg/apache/http/client/CookieStore;)V

    .line 161
    if-eqz v4, :cond_2

    .line 163
    sget-boolean v27, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v27, :cond_2

    .line 165
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "cookie store is:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/http/impl/client/BasicCookieStore;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v4}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v7

    .line 167
    .local v7, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "cookies num = "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 169
    .local v5, cookie:Lorg/apache/http/cookie/Cookie;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    .end local v5           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v7           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_2
    const-string v27, "soft"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 173
    .local v22, updateJsonObject:Lorg/json/JSONObject;
    const-string v27, "upgrade"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    sput v27, Lcom/rayclear/videomessage/common/AppContext;->upgradeState:I

    .line 174
    sget v27, Lcom/rayclear/videomessage/common/AppContext;->upgradeState:I

    if-eqz v27, :cond_3

    .line 176
    const-string v27, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/rayclear/videomessage/common/AppContext;->upgradeUrl:Ljava/lang/String;

    .line 177
    const-string v27, "feature"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    sput-object v27, Lcom/rayclear/videomessage/common/AppContext;->newfeatures:Lorg/json/JSONArray;

    .line 178
    const-string v27, "size"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    sput v27, Lcom/rayclear/videomessage/common/AppContext;->apkSize:I

    .line 180
    :cond_3
    const-string v27, "result"

    const/16 v28, 0xc8

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    .end local v3           #basicClientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v4           #basicCookieStore:Lorg/apache/http/impl/client/BasicCookieStore;
    .end local v6           #cookieString:Ljava/lang/String;
    .end local v8           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #headers:[Lorg/apache/http/Header;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v17           #loginresultString:Ljava/lang/String;
    .end local v19           #object:Lorg/json/JSONObject;
    .end local v22           #updateJsonObject:Lorg/json/JSONObject;
    .end local v24           #userJsonObject:Lorg/json/JSONObject;
    :cond_4
    :goto_3
    return-object v16

    .line 136
    .restart local v6       #cookieString:Ljava/lang/String;
    .restart local v8       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v11       #headers:[Lorg/apache/http/Header;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v17       #loginresultString:Ljava/lang/String;
    .restart local v19       #object:Lorg/json/JSONObject;
    .restart local v24       #userJsonObject:Lorg/json/JSONObject;
    :cond_5
    aget-object v10, v11, v27

    .line 138
    .local v10, header:Lorg/apache/http/Header;
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "header name = "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "header value = "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    invoke-interface {v10}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    const-string v30, "cookie"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 142
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    .line 143
    .local v26, value:Ljava/lang/String;
    const-string v29, "="

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 144
    .local v14, index1:I
    const-string v29, ";"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 145
    .local v15, index2:I
    add-int/lit8 v29, v14, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    .line 136
    .end local v14           #index1:I
    .end local v15           #index2:I
    .end local v26           #value:Ljava/lang/String;
    :cond_6
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 182
    .end local v6           #cookieString:Ljava/lang/String;
    .end local v8           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #header:Lorg/apache/http/Header;
    .end local v11           #headers:[Lorg/apache/http/Header;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v17           #loginresultString:Ljava/lang/String;
    .end local v19           #object:Lorg/json/JSONObject;
    .end local v24           #userJsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 183
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 127
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v17       #loginresultString:Ljava/lang/String;
    .restart local v19       #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v27

    goto/16 :goto_1

    .line 82
    .end local v8           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v17           #loginresultString:Ljava/lang/String;
    .end local v18           #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v19           #object:Lorg/json/JSONObject;
    .end local v20           #password:Ljava/lang/String;
    .end local v21           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v23           #url:Ljava/lang/String;
    .end local v25           #userphone:Ljava/lang/String;
    :catch_2
    move-exception v27

    goto/16 :goto_0
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 6
    .parameter "filesize"

    .prologue
    .line 801
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 802
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-wide/32 v2, 0x100000

    div-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 804
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 805
    .local v1, decimalFormat:Ljava/text/DecimalFormat;
    long-to-float v2, p0

    const/high16 v3, 0x4980

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    const-string v2, "Mb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 814
    .end local v1           #decimalFormat:Ljava/text/DecimalFormat;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 810
    :cond_0
    const-wide/16 v2, 0x400

    div-long v2, p0, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 811
    const-string v2, "Kb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static formatSpaceMb(I)Ljava/lang/String;
    .locals 7
    .parameter "spaceMB"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 819
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 821
    const-string v0, "<10M"

    .line 828
    :goto_0
    return-object v0

    .line 823
    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    .line 825
    const-string v0, "\u5269\u4f59%2.2fG"

    new-array v1, v1, [Ljava/lang/Object;

    int-to-double v2, p0

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 828
    :cond_1
    const-string v0, "\u5269\u4f59%dMb"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final get2LengthBytesFromInt(I)[B
    .locals 3
    .parameter "length"

    .prologue
    .line 759
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 760
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 761
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 762
    return-object v0
.end method

.method public static final get4LengthBytesFromInt(I)[B
    .locals 3
    .parameter "length"

    .prologue
    .line 772
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 773
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 774
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 775
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 776
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 777
    return-object v0
.end method

.method public static getAppVersionInt(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 654
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 654
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 656
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .line 658
    :catch_0
    move-exception v2

    .line 661
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getDateStringFromMilliTime(J)Ljava/lang/String;
    .locals 7
    .parameter "milliTime"

    .prologue
    const/16 v6, 0xa

    .line 864
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 865
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 866
    .local v0, calendar:Ljava/util/Calendar;
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    .line 868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 874
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 875
    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 877
    const-string v4, "\u6708"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 879
    const-string v4, "\u65e5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 880
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 882
    .local v1, hour:I
    if-ge v1, v6, :cond_1

    .line 884
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 891
    :goto_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 893
    .local v2, min:I
    if-ge v2, v6, :cond_2

    .line 895
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 902
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 872
    .end local v1           #hour:I
    .end local v2           #min:I
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 889
    .restart local v1       #hour:I
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 900
    .restart local v2       #min:I
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static getFormatDate(J)Ljava/lang/String;
    .locals 4
    .parameter "millitime"

    .prologue
    .line 840
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 841
    .local v1, stringBuffer:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 842
    .local v0, calendar:Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 850
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 851
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 853
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 855
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 848
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static getFormatLagTime(J)Ljava/lang/String;
    .locals 11
    .parameter "timemilis"

    .prologue
    const-wide/16 v9, 0xa

    .line 626
    const-wide/32 v5, 0xea60

    div-long v0, p0, v5

    .line 627
    .local v0, min:J
    const-wide/16 v5, 0x3e8

    div-long v5, p0, v5

    const-wide/16 v7, 0x3c

    rem-long v2, v5, v7

    .line 629
    .local v2, sec:J
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 630
    .local v4, stringBuffer:Ljava/lang/StringBuffer;
    cmp-long v5, v0, v9

    if-gez v5, :cond_0

    .line 632
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    :cond_0
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 635
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    cmp-long v5, v2, v9

    if-gez v5, :cond_1

    .line 638
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    :cond_1
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 642
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getFormatVideoDuration(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .parameter "videoFile"

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    .line 996
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 998
    :cond_0
    const-string v5, "\u672a\u77e5\u5927\u5c0f"

    .line 1045
    :goto_0
    return-object v5

    .line 1001
    :cond_1
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 1002
    .local v2, mediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 1004
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 1005
    .local v0, duration:I
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1006
    const/4 v2, 0x0

    .line 1007
    div-int/lit16 v0, v0, 0x3e8

    .line 1008
    div-int/lit16 v1, v0, 0xe10

    .line 1009
    .local v1, hh:I
    rem-int/lit16 v6, v0, 0xe10

    div-int/lit8 v3, v6, 0x3c

    .line 1010
    .local v3, mm:I
    rem-int/lit8 v4, v0, 0x3c

    .line 1013
    .local v4, ss:I
    const-string v5, ""

    .line 1014
    .local v5, string:Ljava/lang/String;
    if-le v1, v8, :cond_2

    .line 1017
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1019
    :cond_2
    if-gt v1, v8, :cond_3

    if-lez v1, :cond_3

    .line 1021
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1023
    :cond_3
    if-nez v1, :cond_4

    .line 1025
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "00:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1027
    :cond_4
    if-ge v3, v9, :cond_5

    .line 1029
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1034
    :goto_1
    if-lt v4, v9, :cond_6

    .line 1036
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1032
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1039
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 1043
    .end local v0           #duration:I
    .end local v1           #hh:I
    .end local v2           #mediaPlayer:Landroid/media/MediaPlayer;
    .end local v3           #mm:I
    .end local v4           #ss:I
    .end local v5           #string:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1045
    const-string v5, "\u672a\u77e5\u5927\u5c0f"

    goto/16 :goto_0
.end method

.method public static getFormatedRecordTime(I)Ljava/lang/String;
    .locals 8
    .parameter "time"

    .prologue
    const/16 v7, 0xa

    .line 617
    div-int/lit16 v0, p0, 0xe10

    .line 618
    .local v0, hour:I
    rem-int/lit16 v2, p0, 0xe10

    .line 619
    .local v2, restseconds:I
    div-int/lit8 v1, v2, 0x3c

    .line 620
    .local v1, min:I
    rem-int/lit8 v3, v2, 0x3c

    .line 621
    .local v3, sec:I
    new-instance v5, Ljava/lang/StringBuilder;

    if-ge v0, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v1, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v3, v7, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static final getIntFrom4LengthBytes([BI)I
    .locals 4
    .parameter "b"
    .parameter "offset"

    .prologue
    .line 787
    const/high16 v1, -0x100

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v1, v2

    .line 788
    const/high16 v2, 0xff

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v2, v3

    .line 787
    or-int/2addr v1, v2

    .line 789
    const v2, 0xff00

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v2, v3

    .line 787
    or-int/2addr v1, v2

    .line 790
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    .line 787
    or-int v0, v1, v2

    .line 791
    .local v0, a:I
    return v0
.end method

.method public static getPartyDurationString(J)Ljava/lang/String;
    .locals 11
    .parameter "milliTime"

    .prologue
    const-wide/16 v9, 0xe10

    .line 977
    const-wide/16 v7, 0x3e8

    div-long v0, p0, v7

    .line 978
    .local v0, duration:J
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 980
    .local v6, stringBuffer:Ljava/lang/StringBuffer;
    div-long v2, v0, v9

    .line 981
    .local v2, hour:J
    rem-long v7, v0, v9

    const-wide/16 v9, 0x3c

    div-long v4, v7, v9

    .line 982
    .local v4, min:J
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\u5c0f\u65f6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\u5206\u949f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 984
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getPartyFormatDate(J)Ljava/lang/String;
    .locals 4
    .parameter "milliTime"

    .prologue
    .line 911
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 912
    .local v1, stringBuffer:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 913
    .local v0, calendar:Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 921
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 922
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 924
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 925
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 927
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 919
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static getPartyFormatTime(J)Ljava/lang/String;
    .locals 7
    .parameter "milliTime"

    .prologue
    const/16 v6, 0xa

    .line 937
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 938
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 939
    .local v0, calendar:Ljava/util/Calendar;
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    .line 941
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 947
    :goto_0
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 948
    .local v1, hour:I
    if-ge v1, v6, :cond_1

    .line 950
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 957
    :goto_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 958
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 959
    .local v2, min:I
    if-ge v2, v6, :cond_2

    .line 961
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 962
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 968
    :goto_2
    const-string v4, ":00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 971
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 945
    .end local v1           #hour:I
    .end local v2           #min:I
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 955
    .restart local v1       #hour:I
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 966
    .restart local v2       #min:I
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static getPhoneNums(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "sendToPhones"
    .parameter "seperate"

    .prologue
    .line 585
    if-nez p0, :cond_0

    .line 587
    const-string v5, ""

    .line 604
    :goto_0
    return-object v5

    .line 589
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 590
    .local v4, stringBuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 600
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 601
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 593
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 594
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v5, "phone"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, phoneString:Ljava/lang/String;
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #phoneString:Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 602
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v4           #stringBuffer:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v5

    .line 604
    const-string v5, ""

    goto :goto_0
.end method

.method public static getPlayThumbNailBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "srcBitmap"

    .prologue
    .line 1089
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1090
    .local v8, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1091
    .local v3, h:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1092
    .local v1, desBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1093
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1094
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1097
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200c8

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1098
    .local v7, playiconBitmap:Landroid/graphics/Bitmap;
    mul-int/lit8 v9, v3, 0x1

    div-int/lit8 v9, v9, 0x4

    invoke-static {v7, v9}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1099
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1100
    .local v5, iconw:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1101
    .local v4, iconh:I
    div-int/lit8 v9, v8, 0x2

    div-int/lit8 v10, v5, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    div-int/lit8 v11, v4, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v0, v7, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #desBitmap:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #iconh:I
    .end local v5           #iconw:I
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #playiconBitmap:Landroid/graphics/Bitmap;
    .end local v8           #w:I
    :goto_0
    return-object v1

    .line 1103
    :catch_0
    move-exception v2

    .line 1104
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v9, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    .line 1113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getRealTimeStamp(J)Ljava/lang/String;
    .locals 7
    .parameter "timestamp"

    .prologue
    const-wide/16 v5, 0x3c

    const-wide/16 v3, 0x3e8

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p0, v3

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v1, p0, v3

    rem-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-long v1, p0, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShareThumbFromUrl(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 13
    .parameter "context"
    .parameter "imageurl"

    .prologue
    const/4 v8, 0x0

    .line 306
    move-object v6, v8

    check-cast v6, [B

    .line 308
    .local v6, thumbbuf:[B
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "get thumb = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 309
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, fileurl:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v9, Lcom/rayclear/videomessage/common/SDcardUtil;

    invoke-direct {v9, p0}, Lcom/rayclear/videomessage/common/SDcardUtil;-><init>(Landroid/content/Context;)V

    iget-object v9, v9, Lcom/rayclear/videomessage/common/SDcardUtil;->sharethumbDir:Ljava/io/File;

    invoke-direct {v5, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v5, sharethumbfile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 314
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 315
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 316
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I

    .line 317
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object v8, v6

    .line 344
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .end local v3           #fileurl:Ljava/lang/String;
    .end local v5           #sharethumbfile:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v8

    .line 321
    .restart local v3       #fileurl:Ljava/lang/String;
    .restart local v5       #sharethumbfile:Ljava/io/File;
    :cond_1
    new-instance v7, Ljava/io/File;

    new-instance v9, Lcom/rayclear/videomessage/common/SDcardUtil;

    invoke-direct {v9, p0}, Lcom/rayclear/videomessage/common/SDcardUtil;-><init>(Landroid/content/Context;)V

    iget-object v9, v9, Lcom/rayclear/videomessage/common/SDcardUtil;->thumbsDir:Ljava/io/File;

    invoke-direct {v7, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v7, thumbfile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    .line 328
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v8, 0xa0

    invoke-static {v0, v8}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 332
    .local v4, shareBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 333
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v8, v9, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 335
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 336
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 337
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I

    .line 338
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v6

    .line 339
    goto :goto_0

    .line 341
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .end local v3           #fileurl:Ljava/lang/String;
    .end local v4           #shareBitmap:Landroid/graphics/Bitmap;
    .end local v5           #sharethumbfile:Ljava/io/File;
    .end local v7           #thumbfile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 342
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v6

    .line 344
    goto :goto_0
.end method

.method public static getThumbCacheWithUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "imageurl"

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-static {p1}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object v3

    .line 219
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, fileurl:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v4, Lcom/rayclear/videomessage/common/SDcardUtil;

    invoke-direct {v4, p0}, Lcom/rayclear/videomessage/common/SDcardUtil;-><init>(Landroid/content/Context;)V

    iget-object v4, v4, Lcom/rayclear/videomessage/common/SDcardUtil;->thumbsDir:Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v2, thumbfile:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getThumbCache path = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x190

    invoke-static {v4, v5}, Lcom/rayclear/videomessage/common/BitmapUtil;->getThumbFromCache(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 226
    .end local v1           #fileurl:Ljava/lang/String;
    .end local v2           #thumbfile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getThumbFromUrl(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 10
    .parameter "context"
    .parameter "imageurl"

    .prologue
    const/4 v5, 0x0

    .line 278
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get thumb = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 279
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, fileurl:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v6, Lcom/rayclear/videomessage/common/SDcardUtil;

    invoke-direct {v6, p0}, Lcom/rayclear/videomessage/common/SDcardUtil;-><init>(Landroid/content/Context;)V

    iget-object v6, v6, Lcom/rayclear/videomessage/common/SDcardUtil;->thumbsDir:Ljava/io/File;

    invoke-direct {v4, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    .local v4, thumbfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    :cond_0
    move-object v3, v5

    .line 296
    .end local v2           #fileurl:Ljava/lang/String;
    .end local v4           #thumbfile:Ljava/io/File;
    :goto_0
    return-object v3

    .line 287
    .restart local v2       #fileurl:Ljava/lang/String;
    .restart local v4       #thumbfile:Ljava/io/File;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v3, v6, [B

    .line 288
    .local v3, thumbbuf:[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 289
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 290
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .end local v2           #fileurl:Ljava/lang/String;
    .end local v3           #thumbbuf:[B
    .end local v4           #thumbfile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v5

    .line 296
    goto :goto_0
.end method

.method public static getTokenFromMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "message"

    .prologue
    .line 374
    if-nez p0, :cond_0

    .line 376
    const-string v1, ""

    .line 383
    :goto_0
    return-object v1

    .line 378
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, strings:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 381
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0

    .line 383
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static insertSMSToBox(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "to"
    .parameter "body"
    .parameter "context"

    .prologue
    .line 464
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 468
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    const-string v1, "address"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v0           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isDeviceSumSungCamera()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.os.Build.MODEL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 202
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ek-gc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ek-gn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sm-c1116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 207
    :goto_0
    return v0

    .line 204
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isFileImage(Ljava/lang/String;)Z
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 393
    invoke-static {p0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v2

    .line 397
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, fileString:Ljava/lang/String;
    const-string v4, "png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 404
    goto :goto_0

    .line 405
    :cond_2
    const-string v4, "jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 406
    goto :goto_0

    .line 407
    :cond_3
    const-string v4, "jpeg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 408
    goto :goto_0

    .line 409
    :cond_4
    const-string v4, "gif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 410
    goto :goto_0

    .line 411
    :cond_5
    const-string v4, "bmp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 412
    goto :goto_0
.end method

.method public static isFileVideo(Ljava/lang/String;)Z
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 424
    invoke-static {p0}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v2

    .line 428
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 433
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, fileString:Ljava/lang/String;
    const-string v4, "mov"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 435
    goto :goto_0

    .line 436
    :cond_2
    const-string v4, "mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 437
    goto :goto_0

    .line 438
    :cond_3
    const-string v4, "mpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 439
    goto :goto_0

    .line 440
    :cond_4
    const-string v4, "mpeg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 441
    goto :goto_0

    .line 442
    :cond_5
    const-string v4, "mpe"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v3

    .line 443
    goto :goto_0

    .line 444
    :cond_6
    const-string v4, "3gp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v3

    .line 445
    goto :goto_0

    .line 446
    :cond_7
    const-string v4, "m4v"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v3

    .line 447
    goto :goto_0

    .line 448
    :cond_8
    const-string v4, "avi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 449
    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 698
    const/4 v2, 0x0

    .line 700
    .local v2, hasconnected:Z
    :try_start_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 701
    .local v0, conMan:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 703
    const-string v6, "ConnectivityManager = null...."

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    move v2, v5

    .line 748
    .end local v0           #conMan:Landroid/net/ConnectivityManager;
    .end local v2           #hasconnected:Z
    :cond_0
    :goto_0
    return v2

    .line 707
    .restart local v0       #conMan:Landroid/net/ConnectivityManager;
    .restart local v2       #hasconnected:Z
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 708
    .local v4, networkInfos:[Landroid/net/NetworkInfo;
    if-nez v4, :cond_2

    .line 710
    const-string v6, "networkinfos = null"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    move v2, v5

    .line 711
    goto :goto_0

    .line 713
    :cond_2
    array-length v6, v4

    if-nez v6, :cond_3

    .line 715
    const-string v6, "networkinfos.length = 0"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    move v2, v5

    .line 716
    goto :goto_0

    .line 718
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "networkInfos.length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 719
    array-length v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v3, v4, v6

    .line 721
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "check network "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, v9, :cond_4

    move v2, v5

    .line 724
    goto :goto_0

    .line 719
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 742
    .end local v0           #conMan:Landroid/net/ConnectivityManager;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #networkInfos:[Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 743
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isStringEmpty(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    .line 672
    if-nez p0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeVideoTid(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
    .locals 5
    .parameter "token"
    .parameter "username"
    .parameter "width"
    .parameter "height"
    .parameter "kbps"

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, tidString:Ljava/lang/String;
    const-string v1, "%s_%s_%d_%d_%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 363
    return-object v0
.end method

.method public static parsePhones(Ljava/lang/String;)Ljava/util/Vector;
    .locals 12
    .parameter "phones"
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
    const/16 v11, 0xb

    const/4 v7, 0x0

    .line 515
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 516
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 517
    .local v6, vector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-object v6

    .line 522
    :cond_1
    const/4 v1, 0x0

    .line 523
    .local v1, beginIndex:I
    const/4 v4, 0x0

    .line 524
    .local v4, endIndex:I
    :cond_2
    :goto_1
    if-gez v4, :cond_3

    .line 556
    if-ltz v1, :cond_0

    .line 558
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 559
    .local v5, phoneString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 560
    .local v3, chars:[C
    const/4 v0, 0x1

    .line 561
    .local v0, allDigits:Z
    array-length v8, v3

    :goto_2
    if-lt v7, v8, :cond_7

    .line 569
    :goto_3
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    .end local v0           #allDigits:Z
    .end local v3           #chars:[C
    .end local v5           #phoneString:Ljava/lang/String;
    :cond_3
    const-string v8, ","

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 527
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "beginIndex="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  endIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 529
    :try_start_0
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 530
    .restart local v5       #phoneString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "substring = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 531
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_4

    .line 533
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 534
    .restart local v3       #chars:[C
    const/4 v0, 0x1

    .line 535
    .restart local v0       #allDigits:Z
    array-length v9, v3

    move v8, v7

    :goto_4
    if-lt v8, v9, :cond_5

    .line 543
    :goto_5
    if-eqz v0, :cond_4

    .line 545
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v0           #allDigits:Z
    .end local v3           #chars:[C
    .end local v5           #phoneString:Ljava/lang/String;
    :cond_4
    :goto_6
    if-lez v4, :cond_2

    .line 552
    add-int/lit8 v1, v4, 0x1

    goto :goto_1

    .line 535
    .restart local v0       #allDigits:Z
    .restart local v3       #chars:[C
    .restart local v5       #phoneString:Ljava/lang/String;
    :cond_5
    aget-char v2, v3, v8

    .line 537
    .local v2, c:C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_6

    .line 539
    const/4 v0, 0x0

    .line 540
    goto :goto_5

    .line 535
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 561
    .end local v2           #c:C
    :cond_7
    aget-char v2, v3, v7

    .line 563
    .restart local v2       #c:C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_8

    .line 565
    const/4 v0, 0x0

    .line 566
    goto :goto_3

    .line 561
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 548
    .end local v0           #allDigits:Z
    .end local v2           #c:C
    .end local v3           #chars:[C
    .end local v5           #phoneString:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_6
.end method

.method public static samlog(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveThumbUrlToFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "imageurl"

    .prologue
    .line 236
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "to get thumb = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, fileurl:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v9, Lcom/rayclear/videomessage/common/SDcardUtil;

    invoke-direct {v9, p0}, Lcom/rayclear/videomessage/common/SDcardUtil;-><init>(Landroid/content/Context;)V

    iget-object v9, v9, Lcom/rayclear/videomessage/common/SDcardUtil;->thumbsDir:Ljava/io/File;

    invoke-direct {v7, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v7, thumbfile:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "save path = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 242
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 244
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v9, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 246
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "get thumb result = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 247
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 249
    .local v5, inputStream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 250
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 251
    .local v6, readurllength:I
    const/16 v9, 0xbb8

    new-array v8, v9, [B

    .line 252
    .local v8, urlbuffer:[B
    :goto_0
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_1

    .line 257
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 258
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 259
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 267
    .end local v1           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v2           #fileurl:Ljava/lang/String;
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #readurllength:I
    .end local v7           #thumbfile:Ljava/io/File;
    .end local v8           #urlbuffer:[B
    :goto_1
    return-void

    .line 254
    .restart local v1       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileurl:Ljava/lang/String;
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v6       #readurllength:I
    .restart local v7       #thumbfile:Ljava/io/File;
    .restart local v8       #urlbuffer:[B
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "thumb read lengh = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 255
    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    .end local v1           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v2           #fileurl:Ljava/lang/String;
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #readurllength:I
    .end local v7           #thumbfile:Ljava/io/File;
    .end local v8           #urlbuffer:[B
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #fileurl:Ljava/lang/String;
    .restart local v7       #thumbfile:Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v9, "thumb already exists"

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
