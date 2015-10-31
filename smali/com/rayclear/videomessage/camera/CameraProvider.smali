.class public Lcom/rayclear/videomessage/camera/CameraProvider;
.super Ljava/lang/Object;
.source "CameraProvider.java"


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_FRONT:I = 0x1

.field public static final FRAME_SIZE_1280_720:I = 0x3

.field public static final FRAME_SIZE_176_144:I = 0x0

.field public static final FRAME_SIZE_320_240:I = 0x1

.field public static final FRAME_SIZE_360_200:I = 0x5

.field public static final FRAME_SIZE_480_270:I = 0x4

.field public static final FRAME_SIZE_480_360:I = 0x6

.field public static final FRAME_SIZE_640_480:I = 0x2

.field public static final VIDEO_BITRATE_176_144:I = 0x61a80

.field public static final VIDEO_BITRATE_320_240:I = 0x927c0

.field public static final VIDEO_BITRATE_640_480:I = 0xc3500

.field public static realFPS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xf

    sput v0, Lcom/rayclear/videomessage/camera/CameraProvider;->realFPS:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUseAdvancedCodec(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    invoke-static {}, Lcom/rayclear/videomessage/common/SysUtil;->isDeviceSumSungCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkIfContainFrameSize(Ljava/util/List;II)Z
    .locals 3
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 233
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 235
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p2, :cond_0

    .line 237
    const/4 v1, 0x1

    goto :goto_1

    .line 240
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static checkIfContainFrameSize(Lorg/json/JSONArray;II)Z
    .locals 4
    .parameter "jsonArray"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 284
    if-nez p0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v2

    .line 289
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ge v0, v3, :cond_0

    .line 292
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 294
    .local v1, object:Lorg/json/JSONObject;
    const-string v3, "width"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_2

    const-string v3, "height"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-ne v3, p2, :cond_2

    .line 296
    const/4 v2, 0x1

    goto :goto_0

    .line 298
    .end local v1           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 289
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getMinSupportedSize(Ljava/util/List;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/16 v0, 0x140

    const/16 v1, 0xf0

    invoke-static {p0, v0, v1}, Lcom/rayclear/videomessage/camera/CameraProvider;->checkIfContainFrameSize(Ljava/util/List;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 211
    :cond_0
    const/16 v0, 0xb0

    const/16 v1, 0x90

    invoke-static {p0, v0, v1}, Lcom/rayclear/videomessage/camera/CameraProvider;->checkIfContainFrameSize(Ljava/util/List;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_1
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    invoke-static {p0, v0, v1}, Lcom/rayclear/videomessage/camera/CameraProvider;->checkIfContainFrameSize(Ljava/util/List;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const/4 v0, 0x2

    goto :goto_0

    .line 220
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getMinSupportedSize(Lorg/json/JSONArray;)I
    .locals 3
    .parameter "jsonArray"

    .prologue
    const/4 v0, 0x0

    .line 255
    if-nez p0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-static {p0, v1, v2}, Lcom/rayclear/videomessage/camera/CameraProvider;->checkIfContainFrameSize(Lorg/json/JSONArray;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_2
    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-static {p0, v1, v2}, Lcom/rayclear/videomessage/camera/CameraProvider;->checkIfContainFrameSize(Lorg/json/JSONArray;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    invoke-static {p0, v0, v1}, Lcom/rayclear/videomessage/camera/CameraProvider;->checkIfContainFrameSize(Lorg/json/JSONArray;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    const/4 v0, 0x2

    goto :goto_0

    .line 272
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getPreviewSize(Landroid/hardware/Camera;)Landroid/hardware/Camera$Size;
    .locals 7
    .parameter "camera"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x258

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, presize:Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 157
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ge v3, v6, :cond_4

    .line 159
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "\u4e0d\u652f\u6301\u9884\u89c8\u683c\u5f0f"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 144
    .local v1, size:Landroid/hardware/Camera$Size;
    if-nez v0, :cond_3

    .line 146
    move-object v0, v1

    .line 147
    goto :goto_0

    .line 149
    :cond_3
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v4, v6, :cond_0

    .line 151
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    if-ge v4, v5, :cond_0

    .line 153
    move-object v0, v1

    goto :goto_0

    .line 161
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :cond_4
    return-object v0
.end method

.method public static getUserFrameSizeSet(Landroid/app/Activity;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 185
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 186
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->canUseAdvancedCodec(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const-string v3, "camera_quality_set"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, quality:I
    move v1, v0

    .line 192
    .end local v0           #quality:I
    .local v1, quality:I
    :goto_0
    return v1

    .line 191
    .end local v1           #quality:I
    :cond_0
    const-string v3, "camera_quality_set"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #quality:I
    move v1, v0

    .line 192
    .end local v0           #quality:I
    .restart local v1       #quality:I
    goto :goto_0
.end method

.method public static getUserSetVideoBps(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 118
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 119
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->canUseAdvancedCodec(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string v3, "videobps"

    const v4, 0x927c0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, bps:I
    move v1, v0

    .line 125
    .end local v0           #bps:I
    .local v1, bps:I
    :goto_0
    return v1

    .line 124
    .end local v1           #bps:I
    :cond_0
    const-string v3, "videobps"

    const v4, 0x61a80

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #bps:I
    move v1, v0

    .line 125
    .end local v0           #bps:I
    .restart local v1       #bps:I
    goto :goto_0
.end method

.method public static isDropFrameMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 104
    const-string v2, "pref"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "isdropframe"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 106
    .local v1, shoulddropframe:Z
    return v1
.end method

.method public static setIfUse10FPS(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "shoulduse10fps"

    .prologue
    .line 77
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 78
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "shoulduse10fps"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method

.method public static setRecordSizePref(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "quality"

    .prologue
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bbe\u7f6e\u5206\u8fa8\u7387 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 172
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "camera_quality_set"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method

.method public static shouldUse10FPS(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 90
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "shoulduse10fps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
