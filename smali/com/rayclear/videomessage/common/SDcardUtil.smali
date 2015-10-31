.class public Lcom/rayclear/videomessage/common/SDcardUtil;
.super Ljava/lang/Object;
.source "SDcardUtil.java"


# static fields
.field private static final LOGS_DIR_NAME:Ljava/lang/String; = "logs"

.field private static final PHOTO_DIR_NAME:Ljava/lang/String; = "photos"

.field private static final ROOT_DIR_NAME:Ljava/lang/String; = "yishizhibo"

.field private static final SHARE_THUMB_DIR_NAME:Ljava/lang/String; = "sharethumb"

.field private static final THUMBNAILS_DIR_NAME:Ljava/lang/String; = "thumbs"

.field private static final VIDEO_DIR_NAME:Ljava/lang/String; = "videos"


# instance fields
.field private context:Landroid/content/Context;

.field public logsDir:Ljava/io/File;

.field public photoDir:Ljava/io/File;

.field public rootDir:Ljava/io/File;

.field public sharethumbDir:Ljava/io/File;

.field public sysFileStateOK:Z

.field public thumbsDir:Ljava/io/File;

.field public videoDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v4, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    .line 24
    iput-object v4, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->videoDir:Ljava/io/File;

    .line 25
    iput-object v4, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->photoDir:Ljava/io/File;

    .line 26
    iput-object v4, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->thumbsDir:Ljava/io/File;

    .line 27
    iput-object v4, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->logsDir:Ljava/io/File;

    .line 28
    iput-object v4, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->sharethumbDir:Ljava/io/File;

    .line 29
    iput-boolean v5, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->sysFileStateOK:Z

    .line 31
    iput-object v4, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->context:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->context:Landroid/content/Context;

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/rayclear/videomessage/common/SDcardUtil;->getSDCardFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "yishizhibo"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    .line 39
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 43
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    const-string v3, "videos"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->videoDir:Ljava/io/File;

    .line 44
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->videoDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->videoDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 48
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    const-string v3, "photos"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->photoDir:Ljava/io/File;

    .line 49
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->photoDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->photoDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 53
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    const-string v3, "thumbs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->thumbsDir:Ljava/io/File;

    .line 54
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->thumbsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->thumbsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 58
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    const-string v3, "logs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->logsDir:Ljava/io/File;

    .line 59
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->logsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 61
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->logsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 63
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->rootDir:Ljava/io/File;

    const-string v3, "sharethumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->sharethumbDir:Ljava/io/File;

    .line 64
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->sharethumbDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 66
    iget-object v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->sharethumbDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 68
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->sysFileStateOK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iput-object v4, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->context:Landroid/content/Context;

    .line 79
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v1, :cond_6

    .line 74
    const-string v1, "tryAndCheckFileSys"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    iput-boolean v5, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->sysFileStateOK:Z

    goto :goto_0
.end method


# virtual methods
.method public getSDCardAvableSpaceMb(Ljava/lang/String;)I
    .locals 11
    .parameter "path"

    .prologue
    .line 141
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 142
    .local v6, statFs:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 143
    .local v2, blocSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 144
    .local v0, availaBlocks:J
    mul-long v7, v0, v2

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    const-wide/16 v9, 0x400

    div-long v4, v7, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v4, freeSizeMb:J
    long-to-int v7, v4

    .line 148
    .end local v0           #availaBlocks:J
    .end local v2           #blocSize:J
    .end local v4           #freeSizeMb:J
    .end local v6           #statFs:Landroid/os/StatFs;
    :goto_0
    return v7

    .line 146
    :catch_0
    move-exception v7

    .line 148
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getSDCardFile()Ljava/io/File;
    .locals 9

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    const-string v5, "\u4f7f\u7528\u5185\u90e8\u5b58\u50a8\u5361!!!"

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 87
    iget-object v5, p0, Lcom/rayclear/videomessage/common/SDcardUtil;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 129
    :goto_0
    return-object v2

    .line 90
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 92
    .local v2, extSDCard:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 94
    .local v3, parentRoot:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, alldir:[Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Environment.getExternalStorageState() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 100
    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_1

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "final choose sdcard = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    aget-object v1, v0, v5

    .line 103
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_3

    .line 100
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, paths:[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v7, v4

    if-eqz v7, :cond_2

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 119
    move-object v2, v1

    goto :goto_2
.end method
