.class public Lcom/rayclear/videomessage/common/GPSLocation;
.super Ljava/lang/Object;
.source "GPSLocation.java"


# static fields
.field public static cell_lantitude:D

.field public static cell_longtitude:D

.field public static gps_lantitude:D

.field public static gps_longtitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    sput-wide v0, Lcom/rayclear/videomessage/common/GPSLocation;->cell_lantitude:D

    .line 33
    sput-wide v0, Lcom/rayclear/videomessage/common/GPSLocation;->cell_longtitude:D

    .line 34
    sput-wide v0, Lcom/rayclear/videomessage/common/GPSLocation;->gps_lantitude:D

    .line 35
    sput-wide v0, Lcom/rayclear/videomessage/common/GPSLocation;->gps_longtitude:D

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
