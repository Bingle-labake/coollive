.class public Lcom/rayclear/videomessage/common/DownloadFile;
.super Ljava/lang/Object;
.source "DownloadFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;,
        Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;
    }
.end annotation


# instance fields
.field private apkFile:Ljava/io/File;

.field private downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

.field private downloadThread:Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

.field private downloadedLength:I

.field private fileLength:I

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filelength"
    .parameter "url"
    .parameter "apkLocation"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->fileLength:I

    .line 14
    iput-object v1, p0, Lcom/rayclear/videomessage/common/DownloadFile;->urlString:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    .line 16
    iput-object v1, p0, Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadedLength:I

    .line 18
    iput-object v1, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadThread:Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

    .line 22
    iput-object p2, p0, Lcom/rayclear/videomessage/common/DownloadFile;->urlString:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/rayclear/videomessage/common/DownloadFile;->fileLength:I

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/common/DownloadFile;Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    return-void
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/common/DownloadFile;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/common/DownloadFile;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/rayclear/videomessage/common/DownloadFile;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput p1, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadedLength:I

    return-void
.end method

.method static synthetic access$4(Lcom/rayclear/videomessage/common/DownloadFile;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadedLength:I

    return v0
.end method

.method static synthetic access$5(Lcom/rayclear/videomessage/common/DownloadFile;)Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/rayclear/videomessage/common/DownloadFile;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->fileLength:I

    return v0
.end method


# virtual methods
.method public deleteApkFile()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDownloadListener(Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;)V
    .locals 0
    .parameter "downloadListener"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    .line 30
    return-void
.end method

.method public startDownload()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadThread:Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadThread:Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->stopDownload()V

    .line 41
    :cond_0
    new-instance v0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;-><init>(Lcom/rayclear/videomessage/common/DownloadFile;Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadThread:Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

    .line 42
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadThread:Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->start()V

    .line 43
    return-void
.end method

.method public stopDownload()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    .line 51
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadThread:Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile;->downloadThread:Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->stopDownload()V

    .line 55
    :cond_0
    return-void
.end method
