.class public Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;
.super Landroid/app/Activity;
.source "VideoRecordRtmpFLV.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$OnZoomChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;,
        Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$MyTask;,
        Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;,
        Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;,
        Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$ZoomTask;
    }
.end annotation


# static fields
.field private static final ACTIVIYT_RESULT_SET_FRAME_SIZE:I = 0x1

.field private static final MESSAGE_BANDWITH_TOO_LOW:I = 0xdb

.field private static final MESSAGE_CHANGE_RECORD_IMG:I = 0xe2

.field private static final MESSAGE_CREATE_ACTIVITY_FAIL:I = 0xe7

.field private static final MESSAGE_CREATE_ACTIVITY_OK:I = 0xe6

.field private static final MESSAGE_HIDE_RECORD_TIP:I = 0xe0

.field private static final MESSAGE_RECONNECT_OK:I = 0xcd

.field private static final MESSAGE_RECORD_TIME_CNT:I = 0xd7

.field private static final MESSAGE_RTMP_SEND_FAIL:I = 0xe8

.field private static final MESSAGE_SET_RECORD_STAT_DISRECORDING:I = 0xdd

.field private static final MESSAGE_SET_RECORD_STAT_RECORDING:I = 0xdc

.field private static final MESSAGE_SET_ZOOM_INVISIABLE:I = 0xe4

.field private static final MESSAGE_SHOW_RAW_MESSAGE:I = 0xdf

.field private static final MESSAGE_SOCKET_BREAKUP:I = 0xce

.field private static final MESSAGE_SOCKET_MSG_RECEIVED:I = 0xe1

.field private static final MESSAGE_SOCKET_PACKET_SENDED:I = 0xde

.field private static final MESSAGE_UPLOAD_PROGRESS:I = 0xe3

.field private static final MESSAGE_ZOOM_CAMERA:I = 0xe5

.field private static messageStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/SpannableStringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public DES_FRAME_HEIGHT:I

.field public DES_FRAME_WIDTH:I

.field public SRC_FRAME_HEIGHT:I

.field public SRC_FRAME_WIDTH:I

.field private absoluteBeginTime:J

.field private activityTitleEditText:Landroid/widget/EditText;

.field private activityTitlePanel:Landroid/view/View;

.field private assureQuitChatAlertDialog:Landroid/app/AlertDialog;

.field private autoFocusView:Landroid/widget/ImageView;

.field private autofocusAnimation:Landroid/view/animation/Animation;

.field private batteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private batteryClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field bps:I

.field private camParams:Landroid/hardware/Camera$Parameters;

.field private camera:Landroid/hardware/Camera;

.field private chatroom:Ljava/lang/Object;

.field private chatroomTextView:Landroid/widget/TextView;

.field private connectingProgressDialog:Landroid/app/ProgressDialog;

.field private createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

.field private debug_drop_count:I

.field private encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

.field fps:I

.field private getChannelProgressDialog:Landroid/app/ProgressDialog;

.field private volatile isRecording:Z

.field private lastClickTime:J

.field private lastPreviewFrameComingTime:J

.field private lastSendedOffset:I

.field private lastZoomChangeTimeStamp:J

.field private maxCameraRoom:I

.field private final msgHandler:Landroid/os/Handler;

.field private recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

.field private recordBufferTextView:Landroid/widget/TextView;

.field private recordIV:Landroid/widget/ImageView;

.field private recordSpeedTextView:Landroid/widget/TextView;

.field private recordTextZone:Landroid/view/View;

.field private recordTimeCnt:I

.field private recordTimeCntAtStop:I

.field private recordTimeCntTextView:Landroid/widget/TextView;

.field private recordTimeCntTimer:Ljava/util/Timer;

.field private rtmpSendedSize:I

.field private sdcardSpaceTextView:Landroid/widget/TextView;

.field private sendingQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/rayclear/videomessage/model/SamMediaFrame;",
            ">;"
        }
    .end annotation
.end field

.field private sendingQueueLock:Ljava/util/concurrent/locks/Lock;

.field private sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

.field private sharePanel:Landroid/view/View;

.field private showChatContentTimer:Ljava/util/Timer;

.field private showbandwidthlowcnt:I

.field srcfmt:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private uploadProgress:I

.field private uploadProgressDialog:Landroid/app/ProgressDialog;

.field private zoomNumTextView:Landroid/widget/TextView;

.field private zoomPanelView:Landroid/view/View;

.field private zoomProgress:I

.field private zoomProgressBar:Landroid/widget/ProgressBar;

.field private zoomTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->messageStrList:Ljava/util/List;

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x280

    const/16 v0, 0x1e0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    .line 139
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 141
    iput v5, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    .line 142
    iput v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    .line 143
    iput v5, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_WIDTH:I

    .line 144
    iput v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_HEIGHT:I

    .line 145
    const/16 v0, 0xf

    iput v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->fps:I

    .line 146
    const v0, 0x61a80

    iput v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->bps:I

    .line 147
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->srcfmt:I

    .line 149
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordIV:Landroid/widget/ImageView;

    .line 150
    iput-boolean v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->isRecording:Z

    .line 151
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTimer:Ljava/util/Timer;

    .line 152
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTextView:Landroid/widget/TextView;

    .line 153
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordSpeedTextView:Landroid/widget/TextView;

    .line 154
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordBufferTextView:Landroid/widget/TextView;

    .line 155
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTextZone:Landroid/view/View;

    .line 156
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->autoFocusView:Landroid/widget/ImageView;

    .line 157
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCnt:I

    .line 158
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntAtStop:I

    .line 159
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastSendedOffset:I

    .line 160
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->showbandwidthlowcnt:I

    .line 161
    iput-wide v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastClickTime:J

    .line 162
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->maxCameraRoom:I

    .line 163
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomProgressBar:Landroid/widget/ProgressBar;

    .line 164
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomPanelView:Landroid/view/View;

    .line 165
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomNumTextView:Landroid/widget/TextView;

    .line 166
    iput-wide v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastZoomChangeTimeStamp:J

    .line 167
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomProgress:I

    .line 168
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    .line 170
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->assureQuitChatAlertDialog:Landroid/app/AlertDialog;

    .line 172
    iput-wide v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->absoluteBeginTime:J

    .line 173
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    .line 174
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->connectingProgressDialog:Landroid/app/ProgressDialog;

    .line 175
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgress:I

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->chatroom:Ljava/lang/Object;

    .line 186
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->autofocusAnimation:Landroid/view/animation/Animation;

    .line 187
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->batteryClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 188
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sdcardSpaceTextView:Landroid/widget/TextView;

    .line 191
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueue:Ljava/util/Vector;

    .line 192
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;

    .line 193
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->rtmpSendedSize:I

    .line 194
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    .line 195
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    .line 196
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    .line 199
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sharePanel:Landroid/view/View;

    .line 200
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->activityTitlePanel:Landroid/view/View;

    .line 201
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->activityTitleEditText:Landroid/widget/EditText;

    .line 202
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    .line 203
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    .line 205
    iput-wide v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastPreviewFrameComingTime:J

    .line 206
    iput v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->debug_drop_count:I

    .line 243
    new-instance v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$1;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$1;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;

    .line 485
    new-instance v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$2;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$2;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->batteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->activityTitlePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I
    .locals 1
    .parameter

    .prologue
    .line 175
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgress:I

    return v0
.end method

.method static synthetic access$12(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->isRecording:Z

    return v0
.end method

.method static synthetic access$13(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I
    .locals 1
    .parameter

    .prologue
    .line 157
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCnt:I

    return v0
.end method

.method static synthetic access$14(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTextZone:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCnt:I

    return-void
.end method

.method static synthetic access$17(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastSendedOffset:I

    return-void
.end method

.method static synthetic access$18(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->showbandwidthlowcnt:I

    return-void
.end method

.method static synthetic access$19(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sharePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$20(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I
    .locals 1
    .parameter

    .prologue
    .line 158
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntAtStop:I

    return v0
.end method

.method static synthetic access$21(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sdcardSpaceTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I
    .locals 1
    .parameter

    .prologue
    .line 193
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->rtmpSendedSize:I

    return v0
.end method

.method static synthetic access$23(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I
    .locals 1
    .parameter

    .prologue
    .line 159
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastSendedOffset:I

    return v0
.end method

.method static synthetic access$24(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I
    .locals 1
    .parameter

    .prologue
    .line 160
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->showbandwidthlowcnt:I

    return v0
.end method

.method static synthetic access$25(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$26(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordSpeedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->connectingProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$28(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->startRecord()V

    return-void
.end method

.method static synthetic access$29(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->stopRecord()V

    return-void
.end method

.method static synthetic access$3(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I
    .locals 1
    .parameter

    .prologue
    .line 167
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomProgress:I

    return v0
.end method

.method static synthetic access$30()Ljava/util/List;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->messageStrList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$31(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->chatroom:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$32(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->chatroomTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$33(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->showChatContentTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$34(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/graphics/drawable/ClipDrawable;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->batteryClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    return-object v0
.end method

.method static synthetic access$35(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)J
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->absoluteBeginTime:J

    return-wide v0
.end method

.method static synthetic access$36(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1473
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->enqueueFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V

    return-void
.end method

.method static synthetic access$37(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$38(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$39(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->rtmpSendedSize:I

    return-void
.end method

.method static synthetic access$4(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)I
    .locals 1
    .parameter

    .prologue
    .line 162
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->maxCameraRoom:I

    return v0
.end method

.method static synthetic access$40(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->releaseCamera()V

    return-void
.end method

.method static synthetic access$41(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Lcom/rayclear/videomessage/common/CreateNewActivityThread;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    return-object v0
.end method

.method static synthetic access$42(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->autoFocusView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomProgress:I

    return-void
.end method

.method static synthetic access$6(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$7(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$9(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomPanelView:Landroid/view/View;

    return-object v0
.end method

.method private connectServer()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->connectingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 717
    new-instance v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 738
    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$6;->start()V

    .line 740
    return-void
.end method

.method private enqueueFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1476
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1477
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1478
    return-void
.end method

.method private openCamera(Landroid/view/SurfaceHolder;)V
    .locals 16
    .parameter "holder"

    .prologue
    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->releaseCamera()V

    .line 865
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 875
    const-string v1, "camera == null"

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 960
    :goto_1
    return-void

    .line 866
    :catch_0
    move-exception v11

    .line 867
    .local v11, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    .line 868
    sget-boolean v1, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 881
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v1, 0xf

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->fps:I

    .line 883
    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->getUserSetVideoBps(Landroid/content/Context;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->bps:I

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65f6\u95f4\u6233fps = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->fps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 887
    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/camera/CameraProvider;->getUserFrameSizeSet(Landroid/app/Activity;)I

    move-result v15

    .line 888
    .local v15, userquality:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userquality = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    if-gez v15, :cond_3

    .line 891
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;

    const/16 v2, 0xdf

    const-string v3, "\u65e0\u6cd5\u6253\u5f00\u6444\u50cf\u5934"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 894
    :cond_3
    packed-switch v15, :pswitch_data_0

    .line 925
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    .line 926
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->srcfmt:I

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->maxCameraRoom:I

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxCameraRoom = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->maxCameraRoom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    invoke-static {v1, v2, v3}, Lcom/rayclear/videomessage/camera/CameraProvider;->checkIfContainFrameSize(Ljava/util/List;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 934
    move-object/from16 v0, p0

    iget v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_WIDTH:I

    .line 935
    move-object/from16 v0, p0

    iget v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_HEIGHT:I

    .line 940
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SRC_FRAME_WIDTH = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",SRC_FRAME_HEIGHT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",DES_FRAME_WIDTH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",DES_FRAME_HEIGHT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_HEIGHT:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 942
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 945
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 950
    :goto_4
    const/4 v10, 0x3

    .line 951
    .local v10, FRAME_BUFFER_Q_SIZE:I
    new-array v12, v10, [[B

    .line 952
    .local v12, frameBuffer:[[B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    if-lt v13, v10, :cond_5

    .line 956
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 959
    move-object/from16 v0, p0

    iget v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->srcfmt:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->fps:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->bps:I

    const/16 v8, 0x1f40

    const/4 v9, 0x1

    invoke-static/range {v1 .. v9}, Lcom/rayclear/jni/RTMPStreamMuxer;->initContext(IIIIIIIII)Z

    goto/16 :goto_1

    .line 897
    .end local v10           #FRAME_BUFFER_Q_SIZE:I
    .end local v12           #frameBuffer:[[B
    .end local v13           #i:I
    :pswitch_0
    const/16 v1, 0xb0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    .line 898
    const/16 v1, 0x90

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    goto/16 :goto_2

    .line 901
    :pswitch_1
    const/16 v1, 0x160

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    .line 902
    const/16 v1, 0xc6

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    goto/16 :goto_2

    .line 905
    :pswitch_2
    const/16 v1, 0x140

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    .line 906
    const/16 v1, 0xf0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    goto/16 :goto_2

    .line 909
    :pswitch_3
    const/16 v1, 0x280

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    .line 910
    const/16 v1, 0x1e0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    goto/16 :goto_2

    .line 913
    :pswitch_4
    const/16 v1, 0x500

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    .line 914
    const/16 v1, 0x2d0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    .line 916
    :pswitch_5
    const/16 v1, 0x1e0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_WIDTH:I

    .line 917
    const/16 v1, 0x10e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->DES_FRAME_HEIGHT:I

    goto/16 :goto_2

    .line 937
    :cond_4
    const/16 v1, 0x280

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_WIDTH:I

    .line 938
    const/16 v1, 0x1e0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_HEIGHT:I

    goto/16 :goto_3

    .line 946
    :catch_1
    move-exception v14

    .line 947
    .local v14, ioe:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 953
    .end local v14           #ioe:Ljava/io/IOException;
    .restart local v10       #FRAME_BUFFER_Q_SIZE:I
    .restart local v12       #frameBuffer:[[B
    .restart local v13       #i:I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->SRC_FRAME_HEIGHT:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    aput-object v1, v12, v13

    .line 954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    aget-object v2, v12, v13

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 952
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 894
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized releaseCamera()V
    .locals 3

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 966
    const-string v1, "will release camera!!!!!!!!!!"

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    :try_start_1
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 973
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 977
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 979
    :goto_2
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    .line 980
    invoke-static {}, Lcom/rayclear/jni/RTMPStreamMuxer;->releaseContext()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 982
    :cond_0
    monitor-exit p0

    return-void

    .line 969
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 964
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 974
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 978
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private shareToEmail()V
    .locals 8

    .prologue
    .line 1197
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u300a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    const-string v5, "text/plain"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1202
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    .line 1201
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1203
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 1204
    .local v1, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1215
    :goto_0
    if-nez v1, :cond_2

    .line 1217
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1218
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1219
    const-string v6, "\u6ca1\u6709\u627e\u5230\u90ae\u4ef6\u5e94\u7528"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1220
    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1221
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1222
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1228
    :goto_1
    return-void

    .line 1204
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1206
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v6, "match activity:"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1207
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1208
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1209
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "mail"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1211
    move-object v1, v4

    .line 1212
    goto :goto_0

    .line 1226
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private shareToSinaWeibo()V
    .locals 8

    .prologue
    .line 1232
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u300a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    const-string v5, "text/plain"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1237
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    .line 1236
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1238
    .local v1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 1239
    .local v4, sinaResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1249
    if-nez v4, :cond_2

    .line 1251
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1252
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1253
    const-string v6, "\u60a8\u5c1a\u672a\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1254
    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1255
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1256
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1261
    :goto_1
    return-void

    .line 1239
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1241
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v6, "match activity:"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1242
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1243
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1244
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sina.weibo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1246
    move-object v4, v3

    goto :goto_0

    .line 1259
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private shareToSms()V
    .locals 8

    .prologue
    .line 1162
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u300a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const-string v5, "text/plain"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1168
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    .line 1167
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1169
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 1170
    .local v1, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1181
    :goto_0
    if-nez v1, :cond_2

    .line 1183
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1184
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1185
    const-string v6, "\u6ca1\u6709\u627e\u5230\u77ed\u4fe1\u5e94\u7528"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1186
    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1187
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1188
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1193
    :goto_1
    return-void

    .line 1170
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1172
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v6, "match activity:"

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1173
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1174
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1175
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1177
    move-object v1, v4

    .line 1178
    goto :goto_0

    .line 1191
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private shareToWeixin()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1265
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.TEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u300a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v12

    iget-object v12, v12, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v12

    iget-object v12, v12, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const-string v10, "text/plain"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1268
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1270
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v10, 0x1

    .line 1269
    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1271
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 1272
    .local v3, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1283
    :goto_0
    if-nez v3, :cond_2

    .line 1285
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1286
    const-string v11, "\u63d0\u793a"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1287
    const-string v11, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1288
    const-string v11, "\u786e\u5b9a"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1289
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 1290
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 1318
    :goto_1
    return-void

    .line 1272
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1274
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v11, "match activity:"

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1275
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1276
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1277
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.tencent.mm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1279
    move-object v3, v7

    .line 1280
    goto :goto_0

    .line 1294
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string v1, "wxd8379a6d7637c354"

    .line 1295
    .local v1, WEI_XIN_APP_ID:Ljava/lang/String;
    invoke-static {p0, v1, v13}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    .line 1296
    .local v2, iwxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 1298
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "iwxapi.getWXAppSupportAPI() = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1301
    new-instance v9, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v9}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    .line 1302
    .local v9, wxWebpageObject:Lcom/tencent/mm/sdk/openapi/WXWebpageObject;
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    iput-object v10, v9, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 1304
    new-instance v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v8}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 1305
    .local v8, wxMediaMessage:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object v9, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 1306
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->description:Ljava/lang/String;

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 1307
    iget-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-static {v10}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1309
    const-string v10, "\u6b63\u5728\u76f4\u64ad\u6d3b\u52a8"

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 1311
    :cond_3
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 1313
    new-instance v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v6}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 1314
    .local v6, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 1315
    iput-object v8, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 1316
    iput v13, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 1317
    invoke-interface {v2, v6}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    goto/16 :goto_1
.end method

.method private shareToWeixinCircle()V
    .locals 13

    .prologue
    .line 1322
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v0, ACTION_SENDintent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.TEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u300a"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v12

    iget-object v12, v12, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v12

    iget-object v12, v12, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    const-string v10, "text/plain"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1327
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v10, 0x1

    .line 1326
    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1328
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 1329
    .local v3, matchedInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1340
    :goto_0
    if-nez v3, :cond_2

    .line 1342
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1343
    const-string v11, "\u63d0\u793a"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1344
    const-string v11, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1345
    const-string v11, "\u786e\u5b9a"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1346
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 1347
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 1375
    :goto_1
    return-void

    .line 1329
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1331
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v11, "match activity:"

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1332
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1333
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1334
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.tencent.mm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1336
    move-object v3, v7

    .line 1337
    goto :goto_0

    .line 1353
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string v1, "wxd8379a6d7637c354"

    .line 1354
    .local v1, WEI_XIN_APP_ID:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {p0, v1, v10}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    .line 1355
    .local v2, iwxapi:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 1356
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "iwxapi.getWXAppSupportAPI() = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1358
    new-instance v9, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v9}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    .line 1359
    .local v9, wxWebpageObject:Lcom/tencent/mm/sdk/openapi/WXWebpageObject;
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    iput-object v10, v9, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 1361
    new-instance v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v8}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 1362
    .local v8, wxMediaMessage:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object v9, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 1363
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->description:Ljava/lang/String;

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 1364
    iget-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-static {v10}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1366
    const-string v10, "\u6b63\u5728\u76f4\u64ad\u6d3b\u52a8"

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 1368
    :cond_3
    invoke-static {p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v10

    iget-object v10, v10, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    iput-object v10, v8, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 1370
    new-instance v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v6}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 1371
    .local v6, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 1372
    iput-object v8, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 1373
    const/4 v10, 0x1

    iput v10, v6, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 1374
    invoke-interface {v2, v6}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    goto/16 :goto_1
.end method

.method private startRecord()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 750
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 751
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingQueueLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 752
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->flag:Z

    .line 756
    :cond_0
    new-instance v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    invoke-direct {v0, p0, v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    .line 757
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->start()V

    .line 758
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;->flag:Z

    .line 762
    :cond_1
    new-instance v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    invoke-direct {v0, p0, v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    .line 763
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;->start()V

    .line 764
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->flag:Z

    .line 768
    :cond_2
    new-instance v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    invoke-direct {v0, p0, v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    .line 769
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->start()V

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->absoluteBeginTime:J

    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->isRecording:Z

    .line 772
    const-string v0, "\u91cd\u65b0\u6253\u5f00"

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 773
    new-instance v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$7;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$7;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 784
    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$7;->start()V

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->absoluteBeginTime:J

    .line 786
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 789
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTimer:Ljava/util/Timer;

    .line 790
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTimer:Ljava/util/Timer;

    new-instance v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$8;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$8;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 797
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    .line 790
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 799
    return-void
.end method

.method private stopRecord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 808
    iget v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCnt:I

    iput v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntAtStop:I

    .line 809
    iput-boolean v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->isRecording:Z

    .line 810
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->showChatContentTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->showChatContentTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->flag:Z

    .line 821
    :cond_1
    iput-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    .line 822
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;->flag:Z

    .line 826
    :cond_2
    iput-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordAACThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$RecordAACThread;

    .line 827
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    if-eqz v0, :cond_3

    .line 829
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    iput-boolean v1, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;->flag:Z

    .line 831
    :cond_3
    iput-object v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sendingThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$SendingThread;

    .line 832
    return-void

    .line 814
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 666
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->releaseCamera()V

    .line 667
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 677
    return-void

    .line 672
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$$$$$$$$$onAutoFocus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->autoFocusView:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 838
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 839
    new-instance v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$9;

    invoke-direct {v0, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$9;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 851
    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$9;->start()V

    .line 853
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sharePanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sharePanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->activityTitlePanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->assureQuitChatAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 691
    :cond_1
    iget-boolean v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->isRecording:Z

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->assureQuitChatAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 696
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 19
    .parameter "v"

    .prologue
    .line 1057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1061
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastClickTime:J

    .line 1064
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1088
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->shareToEmail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v17

    .line 1154
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1067
    .end local v17           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1068
    new-instance v18, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-direct/range {v18 .. v18}, Lcom/rayclear/videomessage/model/PartyModel;-><init>()V

    .line 1069
    .local v18, partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    const-wide/32 v2, 0x36ee80

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    .line 1070
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    .line 1071
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    .line 1072
    const-string v2, ""

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    .line 1073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->activityTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    .line 1075
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1077
    const-string v2, "\u6211\u7684\u76f4\u64ad"

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    .line 1079
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/rayclear/videomessage/common/AppContext;->savePartyModel(Landroid/content/Context;Lcom/rayclear/videomessage/model/PartyModel;)V

    .line 1080
    new-instance v2, Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/common/AppContext;->getCookieStore(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/common/AppContext;->getUserID(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;

    const/16 v6, 0xe6

    const/16 v7, 0xe7

    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v8

    iget-object v8, v8, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v9

    iget-wide v9, v9, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v11

    iget-wide v11, v11, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v13

    iget v13, v13, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    const-string v14, ""

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/rayclear/videomessage/common/CreateNewActivityThread;-><init>(Lorg/apache/http/client/CookieStore;ILandroid/os/Handler;IILjava/lang/String;JJILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->createNewActivityThread:Lcom/rayclear/videomessage/common/CreateNewActivityThread;

    invoke-virtual {v2}, Lcom/rayclear/videomessage/common/CreateNewActivityThread;->start()V

    goto/16 :goto_0

    .line 1085
    .end local v18           #partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sharePanel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1091
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->shareToSms()V

    goto/16 :goto_0

    .line 1094
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->shareToSinaWeibo()V

    goto/16 :goto_0

    .line 1097
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->shareToWeixin()V

    goto/16 :goto_0

    .line 1100
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->shareToWeixinCircle()V

    goto/16 :goto_0

    .line 1103
    :sswitch_7
    const-string v2, "clipboard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/text/ClipboardManager;

    .line 1104
    .local v16, cmb:Landroid/text/ClipboardManager;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u300a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-object v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300b\u76f4\u64ad\u6d3b\u52a8\u5f00\u59cb\u5566\uff0c\u5c0f\u4f19\u4f34\u4eec\u5feb\u6765\u89c2\u770b\u5427\uff0c\u89c2\u770b\u76f4\u64ad\u5730\u5740: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v3

    iget-object v3, v3, Lcom/rayclear/videomessage/model/PartyModel;->shareMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    const-string v2, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1108
    .end local v16           #cmb:Landroid/text/ClipboardManager;
    :sswitch_8
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/rayclear/videomessage/ui/settings/SettingsActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1112
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sharePanel:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1115
    :sswitch_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->isRecording:Z

    if-eqz v2, :cond_2

    .line 1117
    const-string v2, "^^^^^^^^^^^^uploadProgressDialog.show();"

    invoke-static {v2}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1118
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1119
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1120
    const-string v3, "\u662f\u5426\u7ed3\u675f\u6b64\u6b21\u62cd\u6444\u6d3b\u52a8?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1121
    const-string v3, "\u7ed3\u675f"

    new-instance v4, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$11;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1129
    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1130
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1135
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/rayclear/videomessage/common/AppContext;->getUserAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1137
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1138
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/rayclear/videomessage/common/AppContext;->getUnavailableReason(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1140
    const-string v3, "\u786e\u5b9a"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1141
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1142
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1146
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->connectServer()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1064
    :sswitch_data_0
    .sparse-switch
        0x7f080006 -> :sswitch_0
        0x7f080007 -> :sswitch_3
        0x7f080008 -> :sswitch_4
        0x7f080009 -> :sswitch_5
        0x7f08000a -> :sswitch_6
        0x7f08000b -> :sswitch_7
        0x7f08000c -> :sswitch_2
        0x7f080054 -> :sswitch_a
        0x7f08005c -> :sswitch_9
        0x7f08005d -> :sswitch_8
        0x7f080063 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 500
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 501
    const-string v9, "@@@@@@@@@@"

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 503
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->batteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 505
    const v9, 0x7f030010

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->setContentView(I)V

    .line 506
    const v9, 0x7f080051

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTimeCntTextView:Landroid/widget/TextView;

    .line 507
    const v9, 0x7f080052

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordSpeedTextView:Landroid/widget/TextView;

    .line 508
    const v9, 0x7f080053

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordBufferTextView:Landroid/widget/TextView;

    .line 509
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordBufferTextView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    const v9, 0x7f080050

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordTextZone:Landroid/view/View;

    .line 512
    const v9, 0x7f08004f

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->chatroomTextView:Landroid/widget/TextView;

    .line 513
    const v9, 0x7f080058

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->autoFocusView:Landroid/widget/ImageView;

    .line 515
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9, v13}, Ljava/util/Timer;-><init>(Z)V

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->showChatContentTimer:Ljava/util/Timer;

    .line 518
    const v9, 0x7f08004e

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceView;

    .line 519
    .local v7, surfaceView:Landroid/view/SurfaceView;
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    .line 520
    .local v6, surfaceHolder:Landroid/view/SurfaceHolder;
    invoke-interface {v6, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 521
    const/4 v9, 0x3

    invoke-interface {v6, v9}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 522
    invoke-virtual {v7, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 524
    const v9, 0x7f08005c

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const v9, 0x7f08005d

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    const v9, 0x7f080057

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomProgressBar:Landroid/widget/ProgressBar;

    .line 528
    const v9, 0x7f080055

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomPanelView:Landroid/view/View;

    .line 529
    const v9, 0x7f080056

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomNumTextView:Landroid/widget/TextView;

    .line 530
    const v9, 0x7f08005a

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 531
    const v9, 0x7f080059

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 533
    const/high16 v9, 0x7f04

    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->autofocusAnimation:Landroid/view/animation/Animation;

    .line 535
    const v9, 0x7f08005e

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 536
    .local v1, batteryIV:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/ClipDrawable;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->batteryClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 537
    const v9, 0x7f08005f

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sdcardSpaceTextView:Landroid/widget/TextView;

    .line 541
    const v9, 0x7f080054

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordIV:Landroid/widget/ImageView;

    .line 542
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->recordIV:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 547
    const-string v10, "\u60a8\u786e\u5b9a\u8981\u9000\u51fa\u76f4\u64ad?"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 548
    const-string v10, "\u786e\u5b9a"

    new-instance v11, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$3;

    invoke-direct {v11, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$3;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 555
    const-string v10, "\u53d6\u6d88"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 556
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 545
    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->assureQuitChatAlertDialog:Landroid/app/AlertDialog;

    .line 559
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-direct {v9, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    .line 560
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9, v13}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 561
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    const-string v10, "\u6b63\u5728\u4e0a\u4f20\u5269\u4f59\u90e8\u5206\u89c6\u9891"

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 563
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 564
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 565
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->uploadProgressDialog:Landroid/app/ProgressDialog;

    new-instance v10, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$4;

    invoke-direct {v10, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$4;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 573
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-direct {v9, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->connectingProgressDialog:Landroid/app/ProgressDialog;

    .line 574
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->connectingProgressDialog:Landroid/app/ProgressDialog;

    const-string v10, "\u6b63\u5728\u8fde\u63a5\u670d\u52a1\u5668"

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->connectingProgressDialog:Landroid/app/ProgressDialog;

    const-string v10, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 578
    const v9, 0x7f080004

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->sharePanel:Landroid/view/View;

    .line 579
    const v9, 0x7f08000a

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    const v9, 0x7f080006

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    const v9, 0x7f080008

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    const v9, 0x7f080007

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    const v9, 0x7f080009

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    const v9, 0x7f08000c

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    const v9, 0x7f080005

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    const v9, 0x7f08000b

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    const v9, 0x7f080060

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->activityTitlePanel:Landroid/view/View;

    .line 589
    const v9, 0x7f080062

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->activityTitleEditText:Landroid/widget/EditText;

    .line 590
    const v9, 0x7f080063

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    const v9, 0x7f080061

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    invoke-virtual {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "live"

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 595
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->activityTitlePanel:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_0
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-direct {v9, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    .line 600
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    const-string v10, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    const-string v10, "\u6b63\u5728\u83b7\u53d6\u5206\u4eab\u5730\u5740"

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v9, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getChannelProgressDialog:Landroid/app/ProgressDialog;

    .line 603
    new-instance v10, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$5;

    invoke-direct {v10, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$5;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 611
    const-string v9, "pref"

    invoke-virtual {p0, v9, v12}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "bluetooth"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 612
    .local v8, usebluetooth:Z
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "use bluetooth = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 613
    if-eqz v8, :cond_4

    .line 616
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 617
    .local v2, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_1

    .line 619
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 620
    .local v4, bluetoothDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v4, :cond_3

    .line 622
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 651
    .end local v2           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v4           #bluetoothDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    :goto_1
    return-void

    .line 622
    .restart local v2       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v4       #bluetoothDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 624
    .local v3, bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "###\u914d\u5bf9\u7684\u84dd\u7259 = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 625
    const-string v10, "use bluetooth!!!!!!!!!!!!"

    invoke-static {v10}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 626
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 627
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 628
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v3           #bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #bluetoothDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v5

    .line 635
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "##############"

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 631
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v4       #bluetoothDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    :try_start_1
    const-string v9, "\u6ca1\u6709\u68c0\u6d4b\u5230\u84dd\u7259\u8bbe\u5907"

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 639
    .end local v2           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v4           #bluetoothDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    const-string v9, "\u4e0d\u9002\u7528\u84dd\u7259"

    invoke-static {v9}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 641
    :try_start_2
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 642
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 643
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 645
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_1
    move-exception v5

    .line 646
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 655
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 656
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->batteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 704
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 705
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->stopRecord()V

    .line 706
    invoke-direct {p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->releaseCamera()V

    .line 707
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->msgHandler:Landroid/os/Handler;

    const/16 v1, 0xdd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 708
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 213
    :try_start_0
    iget-boolean v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->isRecording:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    invoke-virtual {v1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->canEnqueueMoreFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->fps:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 217
    iget-wide v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastPreviewFrameComingTime:J

    .line 216
    sub-long/2addr v1, v3

    .line 217
    const/16 v3, 0x3e8

    iget v4, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->fps:I

    add-int/lit8 v4, v4, 0x8

    div-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 218
    iget v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->debug_drop_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->debug_drop_count:I

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#####,drop frame because frame interval too small,drop count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    iget v2, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->debug_drop_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 238
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->lastPreviewFrameComingTime:J

    .line 227
    new-instance v0, Lcom/rayclear/videomessage/model/SamMediaFrame;

    invoke-direct {v0}, Lcom/rayclear/videomessage/model/SamMediaFrame;-><init>()V

    .line 228
    .local v0, mediaFrame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    const/4 v1, 0x1

    iput v1, v0, Lcom/rayclear/videomessage/model/SamMediaFrame;->type:I

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->absoluteBeginTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/rayclear/videomessage/model/SamMediaFrame;->timestamp:J

    .line 230
    iput-object p1, v0, Lcom/rayclear/videomessage/model/SamMediaFrame;->data:[B

    .line 231
    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->encodeVideoThread:Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;

    invoke-virtual {v1, v0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$EncodeVideoThread;->addRawFrame(Lcom/rayclear/videomessage/model/SamMediaFrame;)V

    goto :goto_0

    .line 235
    .end local v0           #mediaFrame:Lcom/rayclear/videomessage/model/SamMediaFrame;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 661
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 662
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 986
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1049
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$$$$$$ X = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 1051
    return v6

    .line 988
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x4461

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->autoFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->autoFocusView:Landroid/widget/ImageView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 993
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    .line 998
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 999
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1008
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomPanelView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1014
    :try_start_1
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1015
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1019
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    .line 1020
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    new-instance v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$ZoomTask;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$ZoomTask;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 1021
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 1025
    :try_start_2
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1026
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1030
    :cond_3
    :goto_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    .line 1031
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->zoomTimer:Ljava/util/Timer;

    new-instance v1, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$10;

    invoke-direct {v1, p0}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV$10;-><init>(Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;)V

    .line 1035
    const-wide/16 v2, 0xc8

    .line 1031
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 1027
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1016
    :catch_2
    move-exception v0

    goto :goto_1

    .line 986
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08004e -> :sswitch_0
        0x7f080059 -> :sswitch_1
        0x7f08005a -> :sswitch_1
    .end sparse-switch
.end method

.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onZoomChange,stopped = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1389
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->openCamera(Landroid/view/SurfaceHolder;)V

    .line 1391
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1380
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/video/VideoRecordRtmpFLV;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1384
    return-void
.end method
