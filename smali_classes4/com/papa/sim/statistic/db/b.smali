.class public Lcom/papa/sim/statistic/db/b;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field private static e:Ljava/lang/String; = "b"

.field private static f:Lcom/papa/sim/statistic/db/b;


# instance fields
.field private a:Ljava/util/concurrent/Semaphore;

.field private b:Lcom/papa/sim/statistic/db/c;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    .line 3
    invoke-static {p1}, Lcom/papa/sim/statistic/db/c;->a(Landroid/content/Context;)Lcom/papa/sim/statistic/db/c;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/db/b;->b:Lcom/papa/sim/statistic/db/c;

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/papa/sim/statistic/db/b;->d:Landroid/content/Context;

    return-void
.end method

.method public static o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/db/b;->f:Lcom/papa/sim/statistic/db/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/sim/statistic/db/b;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/db/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/sim/statistic/db/b;->f:Lcom/papa/sim/statistic/db/b;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    new-instance v0, Lcom/papa/sim/statistic/db/b;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/db/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/sim/statistic/db/b;->f:Lcom/papa/sim/statistic/db/b;

    .line 5
    :cond_2
    sget-object p0, Lcom/papa/sim/statistic/db/b;->f:Lcom/papa/sim/statistic/db/b;

    return-object p0
.end method

.method private declared-synchronized p()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->b:Lcom/papa/sim/statistic/db/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private q()Landroid/database/Cursor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT * FROM BossTable limit 50"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "EMUApkTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(Lcom/papa/sim/statistic/Event;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "BossTable"

    const-string v2, "type = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d(Lcom/papa/sim/statistic/db/a;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "BossTable"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->e()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public delete(I)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 14
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "StatisticTable"

    const-string v2, "id = ?"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public delete(Lcom/papa/sim/statistic/Event;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "StatisticTable"

    const-string v2, "type = ?"

    .line 4
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public delete(Lcom/papa/sim/statistic/db/d;)V
    .locals 6

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 6
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 7
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "StatisticTable"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 12
    throw p1
.end method

.method public e(Lcom/papa/sim/statistic/db/d;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update StatisticTable set send=3 where id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 8
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 10
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    throw p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "StatisticTable"

    const-string p2, "type = ? and time =?"

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "3"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatisticTable"

    const-string v3, "send =?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletDBNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public h(Lcom/papa/sim/statistic/Event;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "SELECT * FROM StatisticTable where type=? "

    .line 4
    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public i(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p2, "SELECT * FROM StatisticTable where type=? and args2=?"

    .line 4
    invoke-virtual {v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    .line 6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    xor-int/2addr p1, v0

    return p1
.end method

.method public j(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "SELECT * FROM EMUApkTable where package_name=? "

    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM StatisticTable  order by id limit 50"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {v2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    const-string v3, "id"

    .line 6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->o(I)V

    const-string v3, "uid"

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    const-string v3, "type"

    .line 8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    const-string v3, "args1"

    .line 9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    const-string v3, "args2"

    .line 10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    const-string v3, "time"

    .line 11
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    const-string v3, "ad"

    .line 12
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    const-string v3, "countType"

    .line 13
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    const-string v3, "send"

    .line 14
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->r(I)V

    const-string v3, "newData"

    .line 15
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->q(I)V

    const-string v3, "isdirect"

    .line 16
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/d;->p(I)V

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 18
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 19
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    .line 20
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 21
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->q()Landroid/database/Cursor;

    move-result-object v1

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/papa/sim/statistic/db/a;

    invoke-direct {v2}, Lcom/papa/sim/statistic/db/a;-><init>()V

    const-string v3, "id"

    .line 6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/a;->l(I)V

    const-string v3, "uid"

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/a;->o(Ljava/lang/String;)V

    const-string v3, "type"

    .line 8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/a;->n(Ljava/lang/String;)V

    const-string v3, "args1"

    .line 9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/a;->i(Ljava/lang/String;)V

    const-string v3, "args2"

    .line 10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/a;->j(Ljava/lang/String;)V

    const-string v3, "time"

    .line 11
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/a;->m(Ljava/lang/String;)V

    const-string v3, "ad"

    .line 12
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/a;->h(Ljava/lang/String;)V

    const-string v3, "countType"

    .line 13
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/a;->k(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 16
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    .line 17
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 18
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/EMUApkTable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM EMUApkTable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/papa/sim/statistic/db/EMUApkTable;

    invoke-direct {v2}, Lcom/papa/sim/statistic/db/EMUApkTable;-><init>()V

    const-string v3, "id"

    .line 6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->t(I)V

    const-string v3, "apk_name"

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->q(Ljava/lang/String;)V

    const-string v3, "logo"

    .line 8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->v(Ljava/lang/String;)V

    const-string v3, "package_name"

    .line 9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->w(Ljava/lang/String;)V

    const-string v3, "launch_name"

    .line 10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->u(Ljava/lang/String;)V

    const-string v3, "team_info"

    .line 11
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->A(Ljava/lang/String;)V

    const-string v3, "ver_info"

    .line 12
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->D(Ljava/lang/String;)V

    const-string v3, "down_url"

    .line 13
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->r(Ljava/lang/String;)V

    const-string v3, "size"

    .line 14
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->y(Ljava/lang/String;)V

    const-string v3, "release_date"

    .line 15
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->x(Ljava/lang/String;)V

    const-string v3, "ver"

    .line 16
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->B(Ljava/lang/String;)V

    const-string v3, "ver_compatible"

    .line 17
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->C(Ljava/lang/String;)V

    const-string v3, "tag_id"

    .line 18
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->z(Ljava/lang/String;)V

    const-string v3, "apkPath"

    .line 19
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->p(Ljava/lang/String;)V

    const-string v3, "downloadFinish"

    .line 20
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->s(I)V

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 22
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 3
    iget-object v1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM StatisticTable where type=? and time=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/papa/sim/statistic/db/d;

    invoke-direct {p2}, Lcom/papa/sim/statistic/db/d;-><init>()V

    const-string v1, "id"

    .line 6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->o(I)V

    const-string v1, "uid"

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->u(Ljava/lang/String;)V

    const-string v1, "type"

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->t(Ljava/lang/String;)V

    const-string v1, "args1"

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->l(Ljava/lang/String;)V

    const-string v1, "args2"

    .line 10
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->m(Ljava/lang/String;)V

    const-string v1, "time"

    .line 11
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->s(Ljava/lang/String;)V

    const-string v1, "ad"

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->k(Ljava/lang/String;)V

    const-string v1, "countType"

    .line 13
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->n(Ljava/lang/String;)V

    const-string v1, "send"

    .line 14
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->r(I)V

    const-string v1, "newData"

    .line 15
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->q(I)V

    const-string v1, "isdirect"

    .line 16
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/d;->p(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 18
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 20
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    iget-object p2, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz p1, :cond_1

    .line 22
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    .line 23
    :goto_2
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v0, :cond_2

    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 25
    :cond_2
    throw p2
.end method

.method public r(Lcom/papa/sim/statistic/db/d;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 3
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v0

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xa

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(?, ?,?, ?, ?,?,?,?,?,?,?)"

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/Object;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v10

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v8

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v7

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v5

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v4

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v14, v3

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v12

    .line 8
    invoke-virtual {v0, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(null, ?,?, ?, ?,?,?,?,?,?,?)"

    new-array v12, v12, [Ljava/lang/Object;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v11

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v10

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v9

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v8

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v7

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v6

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v5

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v4

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v3

    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v2

    .line 12
    invoke-virtual {v0, v13, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :goto_0
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 15
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 18
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 20
    :goto_2
    :try_start_4
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 21
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_3
    throw v2
.end method

.method public s(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 3
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/sim/statistic/db/d;

    .line 5
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v3

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(?, ?,?, ?, ?,?,?,?,?,?,?)"

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->e()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v13

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v12

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v11

    .line 8
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v10

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v9

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v8

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v7

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->h()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v5

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v4

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v14, v4

    .line 9
    invoke-virtual {v3, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(null,?, ?, ?, ?,?,?,?,?,?,?)"

    const/16 v15, 0xa

    new-array v15, v15, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->j()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v15, v12

    .line 12
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v11

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->c()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v10

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->i()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v15, v9

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->a()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v15, v8

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v7

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->h()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v6

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v5

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v4

    .line 13
    invoke-virtual {v3, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 14
    :cond_1
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    iget-object v2, v1, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 16
    iget-object v2, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 17
    throw v0

    .line 18
    :catch_0
    :goto_1
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 19
    iget-object v0, v1, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public t(Lcom/papa/sim/statistic/db/a;)V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->e()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x7

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "INSERT INTO BossTable VALUES(?, ?,?, ?, ?,?,?,?)"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->e()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->g()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    .line 7
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v8

    .line 8
    invoke-virtual {v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "INSERT INTO BossTable VALUES(null, ?,?, ?, ?,?,?,?)"

    new-array v8, v8, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->g()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 11
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/a;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v1

    .line 12
    invoke-virtual {v0, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 15
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 18
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 20
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 21
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_3
    throw p1
.end method

.method public u(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/EMUApkTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/sim/statistic/db/EMUApkTable;

    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO EMUApkTable VALUES(?,?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?)"

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->o()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    .line 8
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->n()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 13
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 15
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    invoke-direct {p0}, Lcom/papa/sim/statistic/db/b;->p()V

    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    iget-object v0, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update StatisticTable set send=1,isdirect=1 where type=? and time=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 8
    iget-object p1, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    .line 9
    :goto_1
    iget-object p2, p0, Lcom/papa/sim/statistic/db/b;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 10
    iget-object p2, p0, Lcom/papa/sim/statistic/db/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    throw p1
.end method
