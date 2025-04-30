.class public Lcom/php25/PDownload/a;
.super Ljava/lang/Object;
.source "DownloadFileDao.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EBean;
    scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Singleton:Lorg/androidannotations/annotations/EBean$Scope;
.end annotation


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com_php25_PDownload_metaFile.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE IF NOT EXISTS DownloadFile (id INTEGER PRIMARY KEY AUTOINCREMENT,tag VARCHAR,url VARCHAR,basePath VARCHAR,name VARCHAR,absolutePath VARCHAR,gameZipPath VARCHAR,totalSize INTEGER,completeSize INTEGER,downloading SMALLINT,showName VARCHAR,createTime VARCHAR,dtype VARCHAR,finished SMALLINT,fileType VARCHAR,finishTime VARCHAR,packageName VARCHAR,tips VARCHAR,portraitURL VARCHAR,percentage VARCHAR,isAutoPause SMALLINT,crc_link_type_val VARCHAR,ver VARCHAR,ver_name VARCHAR,gid VARCHAR,starNumber VARCHAR,romType VARCHAR )"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;
    .locals 9

    .line 1
    new-instance v0, Lcom/php25/PDownload/DownloadFile;

    invoke-direct {v0}, Lcom/php25/PDownload/DownloadFile;-><init>()V

    const-string v1, "tips"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lcom/join/mgps/dto/TipBean;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "id"

    .line 4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->Z(Ljava/lang/Long;)V

    const-string v2, "tag"

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->m0(Ljava/lang/String;)V

    const-string v2, "url"

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->q0(Ljava/lang/String;)V

    const-string v2, "basePath"

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->M(Ljava/lang/String;)V

    const-string v2, "name"

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->c0(Ljava/lang/String;)V

    const-string v2, "showName"

    .line 9
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->j0(Ljava/lang/String;)V

    const-string v2, "finishTime"

    .line 10
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->V(Ljava/lang/String;)V

    const-string v2, "dtype"

    .line 11
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->T(Ljava/lang/String;)V

    const-string v2, "fileType"

    .line 12
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->U(Ljava/lang/String;)V

    const-string v2, "absolutePath"

    .line 13
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->K(Ljava/lang/String;)V

    const-string v2, "gameZipPath"

    .line 14
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->X(Ljava/lang/String;)V

    const-string v2, "createTime"

    .line 15
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->P(Ljava/lang/String;)V

    const-string v2, "totalSize"

    .line 16
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->o0(Ljava/lang/Integer;)V

    const-string v2, "completeSize"

    .line 17
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/php25/PDownload/DownloadFile;->N(J)V

    const-string v2, "packageName"

    .line 18
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->e0(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->n0(Ljava/util/List;)V

    const-string v1, "portraitURL"

    .line 20
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->g0(Ljava/lang/String;)V

    const-string v1, "percentage"

    .line 21
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->f0(Ljava/lang/String;)V

    const-string v1, "crc_link_type_val"

    .line 22
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->O(Ljava/lang/String;)V

    const-string v1, "ver"

    .line 23
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->r0(Ljava/lang/String;)V

    const-string v1, "ver_name"

    .line 24
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->s0(Ljava/lang/String;)V

    const-string v1, "gid"

    .line 25
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->Y(Ljava/lang/String;)V

    const-string v1, "starNumber"

    .line 26
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->l0(Ljava/lang/String;)V

    const-string v1, "romType"

    .line 27
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->i0(Ljava/lang/String;)V

    const-string v1, "downloading"

    .line 28
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    const-string v2, "finished"

    .line 29
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0, v5}, Lcom/php25/PDownload/DownloadFile;->R(Z)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0, v8}, Lcom/php25/PDownload/DownloadFile;->R(Z)V

    :goto_0
    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v0, v5}, Lcom/php25/PDownload/DownloadFile;->W(Z)V

    goto :goto_1

    .line 33
    :cond_3
    invoke-virtual {v0, v8}, Lcom/php25/PDownload/DownloadFile;->W(Z)V

    :goto_1
    const-string v1, "isAutoPause"

    .line 34
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    goto :goto_2

    .line 35
    :cond_4
    invoke-virtual {v0, v5}, Lcom/php25/PDownload/DownloadFile;->L(Z)V

    goto :goto_2

    .line 36
    :cond_5
    invoke-virtual {v0, v8}, Lcom/php25/PDownload/DownloadFile;->L(Z)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/php25/PDownload/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select * from DownloadFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public d(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/php25/PDownload/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "select * from DownloadFile where  fileType=? and finished =0 "

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "select * from DownloadFile where fileType=? and finished =1 "

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public delete(Lcom/php25/PDownload/DownloadFile;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->m()Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "delete from downloadFile where id=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/enums/Dtype;",
            ")",
            "Ljava/util/List<",
            "Lcom/php25/PDownload/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "select * from DownloadFile where fileType=? and finished =1 "

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "select * from DownloadFile where dtype=? and finished =1 "

    invoke-virtual {v3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/php25/PDownload/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "select * from DownloadFile where fileType=?  and finished=0"

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/php25/PDownload/DownloadFile;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "select * from DownloadFile where packageName=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/php25/PDownload/DownloadFile;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "select * from DownloadFile where tag=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public update(Lcom/php25/PDownload/DownloadFile;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->G()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->j()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->A()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->r()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->E()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->m()Ljava/lang/Long;

    move-result-object p1

    const/16 v2, 0x8

    aput-object p1, v1, v2

    const-string p1, "update DownloadFile set downloading=? ,finished=? ,finishTime=?,totalSize=?,percentage=? ,completeSize=? ,gameZipPath=?,ver_name=? where id=?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
