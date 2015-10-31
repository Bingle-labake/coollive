.class public interface abstract Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
.super Ljava/lang/Object;
.source "DownloadFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/common/DownloadFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadFail()V
.end method

.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onDownloadSuccess(Ljava/io/File;)V
.end method
