.class public Lcom/rayclear/videomessage/common/YUV2RGB;
.super Ljava/lang/Object;
.source "YUV2RGB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeYUV420SP([I[BII)V
    .locals 17
    .parameter "rgb"
    .parameter "yuv420sp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 6
    mul-int v2, p2, p3

    .line 8
    .local v2, frameSize:I
    const/4 v5, 0x0

    .local v5, j:I
    const/4 v13, 0x0

    .local v13, yp:I
    :goto_0
    move/from16 v0, p3

    if-lt v5, v0, :cond_0

    .line 41
    return-void

    .line 9
    :cond_0
    shr-int/lit8 v14, v5, 0x1

    mul-int v14, v14, p2

    add-int v8, v2, v14

    .local v8, uvp:I
    const/4 v7, 0x0

    .local v7, u:I
    const/4 v10, 0x0

    .line 10
    .local v10, v:I
    const/4 v4, 0x0

    .local v4, i:I
    move v9, v8

    .end local v8           #uvp:I
    .local v9, uvp:I
    :goto_1
    move/from16 v0, p2

    if-lt v4, v0, :cond_1

    .line 8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v11, v14, -0x10

    .line 12
    .local v11, y:I
    if-gez v11, :cond_2

    .line 13
    const/4 v11, 0x0

    .line 14
    :cond_2
    and-int/lit8 v14, v4, 0x1

    if-nez v14, :cond_9

    .line 15
    add-int/lit8 v8, v9, 0x1

    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v14, -0x80

    .line 16
    add-int/lit8 v9, v8, 0x1

    .end local v8           #uvp:I
    .restart local v9       #uvp:I
    aget-byte v14, p1, v8

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v7, v14, -0x80

    move v8, v9

    .line 19
    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    :goto_2
    mul-int/lit16 v12, v11, 0x4a8

    .line 20
    .local v12, y1192:I
    mul-int/lit16 v14, v10, 0x662

    add-int v6, v12, v14

    .line 21
    .local v6, r:I
    mul-int/lit16 v14, v10, 0x341

    sub-int v14, v12, v14

    mul-int/lit16 v15, v7, 0x190

    sub-int v3, v14, v15

    .line 22
    .local v3, g:I
    mul-int/lit16 v14, v7, 0x812

    add-int v1, v12, v14

    .line 24
    .local v1, b:I
    if-gez v6, :cond_6

    .line 25
    const/4 v6, 0x0

    .line 28
    :cond_3
    :goto_3
    if-gez v3, :cond_7

    .line 29
    const/4 v3, 0x0

    .line 32
    :cond_4
    :goto_4
    if-gez v1, :cond_8

    .line 33
    const/4 v1, 0x0

    .line 37
    :cond_5
    :goto_5
    const/high16 v14, -0x100

    shl-int/lit8 v15, v6, 0x6

    const/high16 v16, 0xff

    and-int v15, v15, v16

    or-int/2addr v14, v15

    .line 38
    shr-int/lit8 v15, v3, 0x2

    const v16, 0xff00

    and-int v15, v15, v16

    or-int/2addr v14, v15

    shr-int/lit8 v15, v1, 0xa

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    .line 37
    aput v14, p0, v13

    .line 10
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v13, v13, 0x1

    move v9, v8

    .end local v8           #uvp:I
    .restart local v9       #uvp:I
    goto :goto_1

    .line 26
    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    :cond_6
    const v14, 0x3ffff

    if-le v6, v14, :cond_3

    .line 27
    const v6, 0x3ffff

    goto :goto_3

    .line 30
    :cond_7
    const v14, 0x3ffff

    if-le v3, v14, :cond_4

    .line 31
    const v3, 0x3ffff

    goto :goto_4

    .line 34
    :cond_8
    const v14, 0x3ffff

    if-le v1, v14, :cond_5

    .line 35
    const v1, 0x3ffff

    goto :goto_5

    .end local v1           #b:I
    .end local v3           #g:I
    .end local v6           #r:I
    .end local v8           #uvp:I
    .end local v12           #y1192:I
    .restart local v9       #uvp:I
    :cond_9
    move v8, v9

    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    goto :goto_2
.end method
