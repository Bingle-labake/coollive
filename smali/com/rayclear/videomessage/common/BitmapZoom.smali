.class public Lcom/rayclear/videomessage/common/BitmapZoom;
.super Ljava/lang/Object;
.source "BitmapZoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapZoomByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "srcBitmap"
    .parameter "newHeight"

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 53
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 55
    .local v2, srcHeight:I
    int-to-float v4, p1

    int-to-float v5, v2

    div-float v0, v4, v5

    .line 56
    .local v0, scaleHeight:F
    move v1, v0

    .line 58
    .local v1, scaleWidth:F
    invoke-static {p0, v1, v0}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public static bitmapZoomByPercent(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "srcBitmap"
    .parameter "percent"

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 18
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 20
    .local v2, srcHeight:I
    double-to-float v1, p1

    .line 21
    .local v1, scaleWidth:F
    double-to-float v0, p1

    .line 23
    .local v0, scaleHeight:F
    invoke-static {p0, v1, v0}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public static bitmapZoomByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "srcBitmap"
    .parameter "scaleWidth"
    .parameter "scaleHeight"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 88
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 89
    .local v4, srcHeight:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 92
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 91
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 93
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 100
    .end local v7           #resizedBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .restart local v7       #resizedBitmap:Landroid/graphics/Bitmap;
    :cond_0
    move-object v7, p0

    goto :goto_0
.end method

.method public static bitmapZoomBySize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "srcBitmap"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 36
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 38
    .local v2, srcHeight:I
    int-to-float v4, p1

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 39
    .local v1, scaleWidth:F
    int-to-float v4, p2

    int-to-float v5, v2

    div-float v0, v4, v5

    .line 41
    .local v0, scaleHeight:F
    invoke-static {p0, v1, v0}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public static bitmapZoomByWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "srcBitmap"
    .parameter "newWidth"

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 70
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 72
    .local v2, srcHeight:I
    int-to-float v4, p1

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 73
    .local v1, scaleWidth:F
    move v0, v1

    .line 75
    .local v0, scaleHeight:F
    invoke-static {p0, v1, v0}, Lcom/rayclear/videomessage/common/BitmapZoom;->bitmapZoomByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method
