.class public Lcom/rayclear/videomessage/common/SamSeek;
.super Ljava/lang/Object;
.source "SamSeek.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferSeek([B[BI)I
    .locals 6
    .parameter "buff"
    .parameter "key"
    .parameter "beginPosition"

    .prologue
    const/4 v3, -0x1

    .line 64
    array-length v4, p0

    if-lt p2, v4, :cond_1

    move v0, v3

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_1
    array-length v4, p0

    array-length v5, p1

    sub-int/2addr v4, v5

    if-lt v0, v4, :cond_2

    move v0, v3

    .line 84
    goto :goto_0

    .line 70
    :cond_2
    const/4 v2, 0x1

    .line 71
    .local v2, seekSuccess:Z
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v4, p1

    if-lt v1, v4, :cond_3

    .line 79
    :goto_3
    if-nez v2, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_3
    add-int v4, v0, v1

    aget-byte v4, p0, v4

    aget-byte v5, p1, v1

    if-eq v4, v5, :cond_4

    .line 75
    const/4 v2, 0x0

    .line 76
    goto :goto_3

    .line 71
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static fileSeek(Ljava/io/RandomAccessFile;[BI)I
    .locals 10
    .parameter "randomAccessFile"
    .parameter "key"
    .parameter "beginPosition"

    .prologue
    const/4 v5, -0x1

    .line 10
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    array-length v8, p1

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    int-to-long v6, p2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v5

    .line 15
    :catch_0
    move-exception v1

    .line 16
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 20
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v6, 0x3e8

    new-array v4, v6, [B

    .line 21
    .local v4, tempbuff:[B
    move v3, p2

    .line 22
    .local v3, skippedcnt:I
    const/4 v2, 0x0

    .line 23
    .local v2, readlength:I
    const/4 v0, 0x0

    .line 25
    .local v0, curFindIndex:I
    int-to-long v6, p2

    :try_start_1
    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    :goto_1
    if-ltz v2, :cond_0

    .line 28
    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .line 30
    if-ltz v2, :cond_0

    .line 31
    const/4 v6, 0x0

    invoke-static {v4, p1, v6}, Lcom/rayclear/videomessage/common/SamSeek;->bufferSeek([B[BI)I

    move-result v0

    .line 32
    if-ge v0, v2, :cond_0

    .line 33
    if-ltz v0, :cond_2

    .line 35
    add-int v5, v3, v0

    goto :goto_0

    .line 37
    :cond_2
    array-length v6, v4

    if-lt v2, v6, :cond_0

    .line 38
    add-int v6, v3, v2

    array-length v7, p1

    sub-int v3, v6, v7

    .line 39
    int-to-long v6, v3

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 42
    :catch_1
    move-exception v1

    .line 43
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
