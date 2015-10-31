.class public Lcom/rayclear/videomessage/common/DBUtil;
.super Ljava/lang/Object;
.source "DBUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;
    }
.end annotation


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "shipinmsgdb"

.field public static final PARTIES_TABLE_NAME:Ljava/lang/String; = "parties"

.field public static final PARTY_DURATION:Ljava/lang/String; = "duration"

.field public static final PARTY_JOIN_NUM:Ljava/lang/String; = "num"

.field public static final PARTY_PASSWD:Ljava/lang/String; = "passwd"

.field public static final PARTY_SQL_ID:Ljava/lang/String; = "id"

.field public static final PARTY_START_TIME:Ljava/lang/String; = "starttime"

.field public static final PARTY_TITLE:Ljava/lang/String; = "title"

.field public static final PARTY_URL_TOKEN:Ljava/lang/String; = "url"


# instance fields
.field private mySQLHelper:Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/common/DBUtil;->mySQLHelper:Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;

    .line 43
    new-instance v0, Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;

    invoke-direct {v0, p0, p1}, Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;-><init>(Lcom/rayclear/videomessage/common/DBUtil;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rayclear/videomessage/common/DBUtil;->mySQLHelper:Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;

    .line 44
    return-void
.end method


# virtual methods
.method public deletePartyModel(I)Z
    .locals 10
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    const/4 v0, 0x0

    .line 161
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/rayclear/videomessage/common/DBUtil;->mySQLHelper:Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;

    invoke-virtual {v4}, Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    if-gez p1, :cond_0

    .line 191
    :goto_0
    return v2

    .line 168
    :cond_0
    const-string v4, "parties"

    const-string v5, "id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    move v2, v3

    .line 191
    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const-string v3, "error!!!!!!!!!!!!: deleteVideoModel(int id)"

    invoke-static {v3}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 182
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v3

    goto :goto_0

    .line 189
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public getAllParties(Landroid/content/Context;)Ljava/util/Vector;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/rayclear/videomessage/model/PartyModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 56
    .local v12, v:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/rayclear/videomessage/model/PartyModel;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 60
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/rayclear/videomessage/common/DBUtil;->mySQLHelper:Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;

    invoke-virtual {v1}, Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    const-string v1, "parties"

    .line 62
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id"

    .line 61
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 63
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 103
    :goto_1
    new-instance v8, Lcom/rayclear/videomessage/common/DBUtil$1;

    invoke-direct {v8, p0}, Lcom/rayclear/videomessage/common/DBUtil$1;-><init>(Lcom/rayclear/videomessage/common/DBUtil;)V

    .line 110
    .local v8, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/rayclear/videomessage/model/PartyModel;>;"
    invoke-static {v12, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    .end local v8           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/rayclear/videomessage/model/PartyModel;>;"
    :goto_2
    return-object v12

    .line 67
    :cond_1
    :try_start_2
    new-instance v11, Lcom/rayclear/videomessage/model/PartyModel;

    invoke-direct {v11}, Lcom/rayclear/videomessage/model/PartyModel;-><init>()V

    .line 68
    .local v11, partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    const-string v1, "id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    .line 69
    const-string v1, "duration"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v11, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    .line 70
    const-string v1, "num"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    .line 71
    const-string v1, "passwd"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    .line 72
    const-string v1, "starttime"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v11, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    .line 73
    const-string v1, "title"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    .line 74
    const-string v1, "url"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    .line 75
    invoke-virtual {v12, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 83
    .end local v11           #partyModel:Lcom/rayclear/videomessage/model/PartyModel;
    :catch_0
    move-exception v10

    .line 85
    .local v10, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 95
    :catch_1
    move-exception v1

    goto :goto_2

    .line 91
    :catch_2
    move-exception v1

    goto :goto_3

    .line 101
    .end local v10           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public insertNewPartyModel(Lcom/rayclear/videomessage/model/PartyModel;)I
    .locals 8
    .parameter "partyModel"

    .prologue
    const/4 v7, -0x1

    .line 117
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return v7

    .line 121
    :cond_0
    const/4 v3, -0x1

    .line 122
    .local v3, id:I
    const/4 v1, 0x0

    .line 125
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/rayclear/videomessage/common/DBUtil;->mySQLHelper:Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;

    invoke-virtual {v4}, Lcom/rayclear/videomessage/common/DBUtil$MySQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 126
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "duration"

    iget-wide v5, p1, Lcom/rayclear/videomessage/model/PartyModel;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    const-string v4, "num"

    iget v5, p1, Lcom/rayclear/videomessage/model/PartyModel;->joinNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v4, "passwd"

    iget-object v5, p1, Lcom/rayclear/videomessage/model/PartyModel;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v4, "starttime"

    iget-wide v5, p1, Lcom/rayclear/videomessage/model/PartyModel;->starttime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v4, "title"

    iget-object v5, p1, Lcom/rayclear/videomessage/model/PartyModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v4, "url"

    iget-object v5, p1, Lcom/rayclear/videomessage/model/PartyModel;->urlToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v4, "parties"

    const-string v5, "id"

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcom/rayclear/videomessage/model/PartyModel;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v4

    goto :goto_0

    .line 135
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v4, :cond_1

    .line 139
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 143
    :catch_2
    move-exception v4

    goto :goto_0
.end method
