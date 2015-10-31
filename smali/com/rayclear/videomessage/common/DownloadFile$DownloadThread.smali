.class Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/common/DownloadFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field private flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/common/DownloadFile;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/common/DownloadFile;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/common/DownloadFile;Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;-><init>(Lcom/rayclear/videomessage/common/DownloadFile;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 82
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 83
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->flag:Z

    .line 84
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$1(Lcom/rayclear/videomessage/common/DownloadFile;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 87
    :try_start_0
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$1(Lcom/rayclear/videomessage/common/DownloadFile;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 88
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$1(Lcom/rayclear/videomessage/common/DownloadFile;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 93
    :cond_0
    :goto_0
    :try_start_1
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->urlString:Ljava/lang/String;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$2(Lcom/rayclear/videomessage/common/DownloadFile;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 95
    .local v3, httpURLConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 96
    .local v4, inputStream:Ljava/io/InputStream;
    const/16 v8, 0xbb8

    new-array v0, v8, [B

    .line 97
    .local v0, buffer:[B
    const/4 v6, -0x1

    .line 98
    .local v6, readlength:I
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$1(Lcom/rayclear/videomessage/common/DownloadFile;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    const/4 v9, 0x0

    #setter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadedLength:I
    invoke-static {v8, v9}, Lcom/rayclear/videomessage/common/DownloadFile;->access$3(Lcom/rayclear/videomessage/common/DownloadFile;I)V

    .line 100
    :cond_1
    iget-boolean v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->flag:Z

    if-eqz v8, :cond_2

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-gez v6, :cond_4

    .line 116
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 123
    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$5(Lcom/rayclear/videomessage/common/DownloadFile;)Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 125
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$5(Lcom/rayclear/videomessage/common/DownloadFile;)Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    move-result-object v8

    iget-object v9, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->apkFile:Ljava/io/File;
    invoke-static {v9}, Lcom/rayclear/videomessage/common/DownloadFile;->access$1(Lcom/rayclear/videomessage/common/DownloadFile;)Ljava/io/File;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;->onDownloadSuccess(Ljava/io/File;)V

    .line 136
    .end local v0           #buffer:[B
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v3           #httpURLConnection:Ljava/net/HttpURLConnection;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v6           #readlength:I
    .end local v7           #url:Ljava/net/URL;
    :cond_3
    :goto_4
    return-void

    .line 102
    .restart local v0       #buffer:[B
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #httpURLConnection:Ljava/net/HttpURLConnection;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v6       #readlength:I
    .restart local v7       #url:Ljava/net/URL;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "readlength = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 103
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 104
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadedLength:I
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$4(Lcom/rayclear/videomessage/common/DownloadFile;)I

    move-result v9

    add-int/2addr v9, v6

    #setter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadedLength:I
    invoke-static {v8, v9}, Lcom/rayclear/videomessage/common/DownloadFile;->access$3(Lcom/rayclear/videomessage/common/DownloadFile;I)V

    .line 105
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$5(Lcom/rayclear/videomessage/common/DownloadFile;)Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 107
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadedLength:I
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$4(Lcom/rayclear/videomessage/common/DownloadFile;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    iget-object v9, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->fileLength:I
    invoke-static {v9}, Lcom/rayclear/videomessage/common/DownloadFile;->access$6(Lcom/rayclear/videomessage/common/DownloadFile;)I

    move-result v9

    div-int v5, v8, v9

    .line 108
    .local v5, progress:I
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$5(Lcom/rayclear/videomessage/common/DownloadFile;)Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;->onDownloadProgress(I)V

    .line 109
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadedLength:I
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$4(Lcom/rayclear/videomessage/common/DownloadFile;)I

    move-result v8

    iget-object v9, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->fileLength:I
    invoke-static {v9}, Lcom/rayclear/videomessage/common/DownloadFile;->access$6(Lcom/rayclear/videomessage/common/DownloadFile;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v9

    if-lt v8, v9, :cond_1

    goto :goto_1

    .line 128
    .end local v0           #buffer:[B
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v3           #httpURLConnection:Ljava/net/HttpURLConnection;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #progress:I
    .end local v6           #readlength:I
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$5(Lcom/rayclear/videomessage/common/DownloadFile;)Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 132
    iget-object v8, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    #getter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
    invoke-static {v8}, Lcom/rayclear/videomessage/common/DownloadFile;->access$5(Lcom/rayclear/videomessage/common/DownloadFile;)Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;->onDownloadFail()V

    goto :goto_4

    .line 117
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #httpURLConnection:Ljava/net/HttpURLConnection;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v6       #readlength:I
    .restart local v7       #url:Ljava/net/URL;
    :catch_1
    move-exception v8

    goto/16 :goto_2

    .line 121
    :catch_2
    move-exception v8

    goto/16 :goto_3

    .line 89
    .end local v0           #buffer:[B
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v3           #httpURLConnection:Ljava/net/HttpURLConnection;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v6           #readlength:I
    .end local v7           #url:Ljava/net/URL;
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method public stopDownload()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->flag:Z

    .line 78
    iget-object v0, p0, Lcom/rayclear/videomessage/common/DownloadFile$DownloadThread;->this$0:Lcom/rayclear/videomessage/common/DownloadFile;

    const/4 v1, 0x0

    #setter for: Lcom/rayclear/videomessage/common/DownloadFile;->downloadListener:Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;
    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/DownloadFile;->access$0(Lcom/rayclear/videomessage/common/DownloadFile;Lcom/rayclear/videomessage/common/DownloadFile$DownloadListener;)V

    .line 79
    return-void
.end method
