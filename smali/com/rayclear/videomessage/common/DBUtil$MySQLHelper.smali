.class Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/common/DBUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MySQLHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/common/DBUtil;


# direct methods
.method public constructor <init>(Lcom/rayclear/videomessage/common/DBUtil;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;->this$0:Lcom/rayclear/videomessage/common/DBUtil;

    .line 201
    const-string v0, "shipinmsgdb"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 202
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 206
    const-string v0, "create table if not exists parties (id integer primary key,duration integer,num integer,passwd varchar,url varchar,starttime integer,title varchar);"

    .line 215
    .local v0, sql3:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 222
    const-string v0, "drop table if exists parties"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 224
    return-void
.end method
