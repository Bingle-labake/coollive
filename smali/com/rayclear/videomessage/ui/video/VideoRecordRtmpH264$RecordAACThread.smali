.class Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;
.super Ljava/lang/Thread;
.source "VideoRecordRtmpH264.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordAACThread"
.end annotation


# instance fields
.field private volatile audioFrameCount:I

.field private audioTimeStamp:J

.field private debugPreviousAudioTimestamp:J

.field public volatile flag:Z

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

.field private totalAudioLength:J


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 1940
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1942
    iput-boolean v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->flag:Z

    .line 1943
    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->totalAudioLength:J

    .line 1944
    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    .line 1945
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioFrameCount:I

    .line 1946
    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->debugPreviousAudioTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1940
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    .line 1949
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1950
    iput-boolean v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->flag:Z

    .line 1953
    :try_start_0
    const-string v1, "###\u65f6\u95f4\u6233RecordAACThread wait for frst frame"

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1955
    :goto_0
    iget-boolean v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->flag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->absoluteBeginTime:J
    invoke-static {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$35(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1959
    :cond_0
    iget-boolean v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->flag:Z

    if-nez v1, :cond_2

    .line 2005
    :goto_1
    return-void

    .line 1957
    :cond_1
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2001
    :catch_0
    move-exception v9

    .line 2002
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1963
    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "###\u65f6\u95f4\u6233RecordAACThread start"

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->absoluteBeginTime:J
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$35(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    .line 1967
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1968
    const/16 v1, 0x1f40

    const/16 v2, 0x10

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    .line 1969
    .local v6, audioBufferSize:I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x1f40

    const/16 v3, 0x10

    const/4 v4, 0x2

    mul-int/lit8 v5, v6, 0x4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 1970
    .local v0, audioRecord:Landroid/media/AudioRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audioBufferSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 1972
    const/16 v1, 0x800

    new-array v8, v1, [B

    .line 1973
    .local v8, buffer:[B
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->flag:Z

    if-nez v1, :cond_4

    .line 1998
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 1999
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 2000
    const-string v1, "stop and release audio"

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    goto :goto_1

    .line 1976
    :cond_4
    const/4 v1, 0x0

    array-length v2, v8

    invoke-virtual {v0, v8, v1, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v7

    .line 1978
    .local v7, audiolength:I
    iget-wide v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x4060

    add-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    .line 1980
    array-length v1, v8

    invoke-static {v8, v1}, Lcom/rayclear/jni/RTMPH264SegmentMuxer;->encodeAudioFrame([BI)[B

    move-result-object v10

    .line 1981
    .local v10, encodedaudio:[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enqueue a audio frame,timestamp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    invoke-static {v2, v3}, Lcom/rayclear/videomessage/common/SysUtil;->getRealTimeStamp(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    iget-wide v4, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->debugPreviousAudioTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1982
    iget-wide v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    iput-wide v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->debugPreviousAudioTimestamp:J

    .line 1983
    new-instance v11, Lcom/rayclear/videomessage/model/SamMediaFrame;

    invoke-direct {v11}, Lcom/rayclear/videomessage/model/SamMediaFrame;-><init>()V

    .line 1984
    .local v11, samMediaFrame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    const/4 v1, 0x0

    iput v1, v11, Lcom/rayclear/videomessage/model/SamMediaFrame;->type:I

    .line 1985
    iput-object v10, v11, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    .line 1986
    iget-wide v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    iput-wide v1, v11, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    .line 1988
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #calls: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->enqueueFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    invoke-static {v1, v11}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$36(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;Lcom/rayclear/videomessage/model/SamMediaFrame;)V

    .line 1990
    iget v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioFrameCount:I

    .line 1991
    iget v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioFrameCount:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioFrameCount:I

    rem-int/lit16 v1, v1, 0x960

    if-nez v1, :cond_3

    .line 1993
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$$$,\u65f6\u96945\u5206\u949f\uff0c\u8c03\u6574\u524d="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->this$0:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;

    #getter for: Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->absoluteBeginTime:J
    invoke-static {v3}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;->access$35(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    .line 1995
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$$$,\u65f6\u96945\u5206\u949f\uff0c\u8c03\u6574\u540e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpH264$RecordAACThread;->audioTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
