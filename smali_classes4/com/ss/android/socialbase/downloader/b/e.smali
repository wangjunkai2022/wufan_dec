.class public Lcom/ss/android/socialbase/downloader/b/e;
.super Lcom/ss/android/socialbase/downloader/b/c$a;
.source "SqlDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/t;


# static fields
.field private static volatile b:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field a:Lcom/ss/android/socialbase/downloader/b/b;

.field private c:Lcom/ss/android/socialbase/downloader/b/g;

.field private d:Lcom/ss/android/socialbase/downloader/b/g;

.field private e:Lcom/ss/android/socialbase/downloader/b/g;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/b/e;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/c$a;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->a:Lcom/ss/android/socialbase/downloader/b/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/b/e;->f:Z

    .line 5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/b/e;->a()V

    return-void
.end method

.method private a(IIIILandroid/database/sqlite/SQLiteStatement;)V
    .locals 5

    .line 97
    :try_start_0
    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "chunkIndex"

    .line 99
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    sget-object p4, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    const-string v2, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    .line 102
    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    monitor-exit p5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    .line 113
    :try_start_0
    monitor-enter p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "curOffset"

    .line 115
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    sget-object p4, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p5, "downloadChunk"

    const-string v1, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 118
    invoke-virtual {p4, p5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    monitor-exit p6

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(IIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    .line 105
    :try_start_0
    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "curOffset"

    .line 107
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    sget-object p3, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p4, "downloadChunk"

    const-string v1, "_id = ? AND chunkIndex = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 110
    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    monitor-exit p5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(ILandroid/content/ContentValues;)V
    .locals 5

    const/16 v0, 0xa

    .line 164
    :goto_0
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x5

    .line 165
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 167
    :cond_0
    :try_start_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 168
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private a(ILandroid/database/sqlite/SQLiteStatement;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    int-to-long v1, p1

    .line 71
    :try_start_1
    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 72
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 73
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;IIIILandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/b/e;->a(IIIILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/socialbase/downloader/b/e;->a(IIIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;IIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/b/e;->a(IIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/content/ContentValues;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/b;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/b/e;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValue(Landroid/database/sqlite/SQLiteStatement;)V

    .line 80
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 81
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/b;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/b;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 85
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 86
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 21
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ltz v4, :cond_9

    .line 22
    sget-object v5, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    goto/16 :goto_9

    .line 23
    :cond_0
    sget-object v5, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v5

    .line 24
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/b/e;->i()V

    .line 25
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_3

    .line 26
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v6

    const-string v9, "clear_invalid_task_error"

    invoke-virtual {v6, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 27
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 28
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    move-object/from16 v10, p1

    .line 29
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v10, p1

    .line 30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CAST(_id AS TEXT) IN ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    new-array v10, v10, [C

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V

    const-string v10, "\u0000"

    const-string v12, "?,"

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "?)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 31
    sget-object v10, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "downloader"

    invoke-virtual {v10, v11, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    sget-object v10, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "downloadChunk"

    invoke-virtual {v10, v11, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v6, ", "

    move-object/from16 v9, p2

    .line 33
    invoke-static {v6, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 34
    sget-object v9, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "downloader"

    const-string v11, "_id IN (?)"

    new-array v12, v8, [Ljava/lang/String;

    aput-object v6, v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 35
    sget-object v9, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "downloadChunk"

    const-string v11, "_id IN (?)"

    new-array v12, v8, [Ljava/lang/String;

    aput-object v6, v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_6

    .line 36
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 37
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 38
    sget-object v11, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "downloader"

    const-string v13, "_id = ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-virtual {v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    sget-object v11, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "downloader"

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->toContentValues()Landroid/content/ContentValues;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 40
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v11

    if-le v11, v8, :cond_5

    .line 41
    invoke-virtual {v1, v9}, Lcom/ss/android/socialbase/downloader/b/e;->c(I)Ljava/util/List;

    move-result-object v11

    .line 42
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_4

    goto :goto_4

    .line 43
    :cond_4
    sget-object v12, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "downloadChunk"

    const-string v15, "_id = ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v7

    invoke-virtual {v12, v13, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/socialbase/downloader/model/b;

    .line 45
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/ss/android/socialbase/downloader/model/b;->b(I)V

    .line 46
    sget-object v12, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "downloadChunk"

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->a()Landroid/content/ContentValues;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 47
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_5
    if-ge v7, v0, :cond_8

    .line 48
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    .line 49
    invoke-virtual {v1, v4}, Lcom/ss/android/socialbase/downloader/b/e;->c(I)Ljava/util/List;

    move-result-object v6

    .line 50
    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 51
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 52
    invoke-virtual {v3, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 53
    :cond_8
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_6
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/b/e;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 55
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    .line 56
    :goto_7
    :try_start_3
    monitor-exit v5

    return-void

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/b/e;->j()V

    throw v2

    .line 58
    :goto_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_9
    :goto_9
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/e;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/b/e;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    return-object p0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValue(Landroid/database/sqlite/SQLiteStatement;)V

    .line 15
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBindValueCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 16
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 17
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 18
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;

    return-object p0
.end method

.method private c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 15
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$9;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$9;-><init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->k()V

    return-void
.end method

.method private declared-synchronized d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 12
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic g()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private h()V
    .locals 6

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/b/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/a;->a()Lcom/ss/android/socialbase/downloader/b/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    new-instance v1, Lcom/ss/android/socialbase/downloader/b/g;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloader"

    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/c;->a:[Ljava/lang/String;

    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/c;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;

    .line 6
    new-instance v1, Lcom/ss/android/socialbase/downloader/b/g;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloadChunk"

    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/c;->c:[Ljava/lang/String;

    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/c;->d:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    .line 7
    new-instance v1, Lcom/ss/android/socialbase/downloader/b/g;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "segments"

    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/c;->e:[Ljava/lang/String;

    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/c;->f:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e;->e:Lcom/ss/android/socialbase/downloader/b/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized k()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->i()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 8
    :try_start_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->j()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private update(ILandroid/content/ContentValues;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/e$3;-><init>(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 6

    .line 121
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 122
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xa

    .line 123
    :goto_0
    :try_start_0
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const-wide/16 v2, 0x5

    .line 124
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 125
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "chunkCount"

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    sget-object p2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloader"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 130
    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 3

    .line 142
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x4

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 3

    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "totalBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "eTag"

    .line 138
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "name"

    .line 140
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 64
    :try_start_0
    sget-object v4, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM %s WHERE %s = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "downloader"

    aput-object v7, v6, v2

    const-string v7, "url"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    new-array p1, v3, [Landroid/database/Cursor;

    aput-object v1, p1, v2

    .line 67
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 68
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v3, [Landroid/database/Cursor;

    aput-object v1, p1, v2

    .line 69
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    new-array v0, v3, [Landroid/database/Cursor;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V

    return-void
.end method

.method public a(IIII)V
    .locals 7

    .line 94
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-eq p4, p2, :cond_1

    if-ltz p4, :cond_1

    .line 95
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$8;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/b/e$8;-><init>(Lcom/ss/android/socialbase/downloader/b/e;IIII)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IIIJ)V
    .locals 8

    .line 91
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    .line 92
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$7;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/b/e$7;-><init>(Lcom/ss/android/socialbase/downloader/b/e;IIIJ)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IIJ)V
    .locals 7

    .line 88
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    .line 89
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$6;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/b/e$6;-><init>(Lcom/ss/android/socialbase/downloader/b/e;IIJ)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;)V"
        }
    .end annotation

    .line 171
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Landroid/util/SparseArray;)Ljava/util/HashMap;

    move-result-object p1

    .line 172
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Landroid/util/SparseArray;)Ljava/util/HashMap;

    move-result-object p2

    .line 173
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->a:Lcom/ss/android/socialbase/downloader/b/b;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/b;->a(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;",
            "Lcom/ss/android/socialbase/downloader/b/d;",
            ")V"
        }
    .end annotation

    .line 14
    :try_start_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/e$1;-><init>(Lcom/ss/android/socialbase/downloader/b/e;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V

    .line 15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->r()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/b;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e;->a:Lcom/ss/android/socialbase/downloader/b/b;

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 76
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$5;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$5;-><init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/b;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public a(ILjava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)Z"
        }
    .end annotation

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 148
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 149
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 150
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 151
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/socialbase/downloader/f/i;

    .line 152
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/f/i;->k()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 153
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/b/e;->e:Lcom/ss/android/socialbase/downloader/b/g;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/b/g;->d()Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 156
    monitor-enter p2

    .line 157
    :try_start_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v4, 0x1

    int-to-long v5, p1

    .line 158
    invoke-virtual {p2, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 159
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 161
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string p1, "SqlDownloadCache"

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSegments cost="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->c(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_1
    move-exception p1

    .line 163
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    if-eqz p1, :cond_1

    .line 133
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$10;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$10;-><init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 4
    :try_start_0
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT * FROM %s WHERE %s = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "downloader"

    aput-object v6, v5, v0

    const-string v6, "_id"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {v3, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v2, [Landroid/database/Cursor;

    aput-object p1, v1, v0

    .line 9
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    return-object v3

    :cond_0
    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object p1, v1

    .line 10
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    .line 11
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_2
    move-exception v1

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    throw v1

    :cond_1
    :goto_1
    return-object v1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 4

    .line 20
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "curBytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    const/4 p2, 0x0

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isFirstDownload"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->d(I)V

    if-eqz p2, :cond_2

    .line 26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/b;

    if-nez p2, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 28
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 30
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 3

    .line 20
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x3

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isFirstDownload"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "isFirstSuccess"

    .line 24
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 4
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    :try_start_0
    sget-object v4, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM %s WHERE %s = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "downloadChunk"

    aput-object v7, v6, v2

    const-string v7, "_id"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    .line 7
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/b;

    invoke-direct {p1, v1}, Lcom/ss/android/socialbase/downloader/model/b;-><init>(Landroid/database/Cursor;)V

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-array p1, v3, [Landroid/database/Cursor;

    aput-object v1, p1, v2

    .line 11
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v3, [Landroid/database/Cursor;

    aput-object v1, p1, v2

    .line 13
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    new-array v0, v3, [Landroid/database/Cursor;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 18
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/b/e$2;-><init>(Lcom/ss/android/socialbase/downloader/b/e;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 3

    .line 14
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x2

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->d:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$4;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$4;-><init>(Lcom/ss/android/socialbase/downloader/b/e;I)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->f:Z

    return v0
.end method

.method public e(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 3

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x4

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->c:Lcom/ss/android/socialbase/downloader/b/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public f(I)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e$11;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/b/e$11;-><init>(Lcom/ss/android/socialbase/downloader/b/e;I)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 3

    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x5

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isFirstDownload"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 3

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 3

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x7

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->l(I)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 3
    :try_start_0
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT * FROM %s WHERE %s = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "segments"

    aput-object v6, v5, v0

    const-string v6, "_id"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    .line 5
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "info"

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 8
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 9
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 11
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 12
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 13
    new-instance v7, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-direct {v7, v6}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(Lorg/json/JSONObject;)V

    .line 14
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v2, [Landroid/database/Cursor;

    aput-object p1, v1, v0

    .line 15
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    return-object v4

    :cond_2
    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object p1, v1

    .line 16
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    .line 17
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_2
    move-exception v1

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Landroid/database/Cursor;)V

    throw v1

    :cond_3
    :goto_3
    return-object v1
.end method

.method public m(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/e;->h()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/e;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e;->e:Lcom/ss/android/socialbase/downloader/b/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic n(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/e;->k(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
