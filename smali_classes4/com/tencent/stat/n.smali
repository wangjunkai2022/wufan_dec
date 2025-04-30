.class public Lcom/tencent/stat/n;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/tencent/stat/common/StatLogger;

.field private static f:Lcom/tencent/stat/n;


# instance fields
.field a:Landroid/os/Handler;

.field volatile b:I

.field c:Lcom/tencent/stat/DeviceInfo;

.field private d:Lcom/tencent/stat/w;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/stat/n;->b:I

    iput-object v0, p0, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/stat/n;->g:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatStore"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch store thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/tencent/stat/w;

    invoke-direct {v0, p1}, Lcom/tencent/stat/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/tencent/stat/n;->b(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;

    invoke-virtual {p0}, Lcom/tencent/stat/n;->c()V

    invoke-direct {p0}, Lcom/tencent/stat/n;->f()V

    iget-object p1, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/stat/o;

    invoke-direct {v0, p0}, Lcom/tencent/stat/o;-><init>(Lcom/tencent/stat/n;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/stat/n;
    .locals 2

    const-class v0, Lcom/tencent/stat/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/stat/n;

    invoke-direct {v1, p0}, Lcom/tencent/stat/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;

    :cond_0
    sget-object p0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/stat/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/stat/n;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/n;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/stat/n;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/n;Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/n;->b(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/n;Lcom/tencent/stat/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/stat/n;->b(Lcom/tencent/stat/b;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/n;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/stat/n;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/stat/n;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/n;->b(Ljava/util/List;I)V

    return-void
.end method

.method public static b()Lcom/tencent/stat/n;
    .locals 1

    sget-object v0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/stat/n;)Lcom/tencent/stat/w;
    .locals 0

    iget-object p0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    return-object p0
.end method

.method private declared-synchronized b(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/stat/n;->b:I

    if-lez v0, :cond_4

    if-gtz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/stat/n;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unsent events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    invoke-static {}, Lcom/tencent/stat/StatConfig;->a()I

    move-result v2

    if-le p1, v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/stat/StatConfig;->a()I

    move-result p1

    :cond_2
    iget v2, p0, Lcom/tencent/stat/n;->b:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/tencent/stat/n;->b:I

    invoke-direct {p0, v1, p1}, Lcom/tencent/stat/n;->c(Ljava/util/List;I)V

    sget-object v2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Peek "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " unsent events."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/tencent/stat/n;->b(Ljava/util/List;I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/stat/x;

    iget-object v3, v3, Lcom/tencent/stat/x;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/stat/d;->b()Lcom/tencent/stat/d;

    move-result-object v2

    new-instance v3, Lcom/tencent/stat/u;

    invoke-direct {v3, p0, v1, p1}, Lcom/tencent/stat/u;-><init>(Lcom/tencent/stat/n;Ljava/util/List;I)V

    invoke-virtual {v2, v0, v3}, Lcom/tencent/stat/d;->b(Ljava/util/List;Lcom/tencent/stat/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private declared-synchronized b(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget v0, p0, Lcom/tencent/stat/n;->b:I

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "Too many events stored in db."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    iget v0, p0, Lcom/tencent/stat/n;->b:I

    iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "events"

    const-string v4, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/stat/n;->b:I

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "send_count"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "events"

    invoke-virtual {p1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long p1, v2, v5

    if-nez p1, :cond_2

    sget-object p1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to store event:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/tencent/stat/n;->b:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/tencent/stat/n;->b:I

    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/tencent/stat/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    sget-object p2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_5
    iget-object p2, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private declared-synchronized b(Lcom/tencent/stat/b;)V
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/stat/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/stat/common/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "content"

    iget-object v5, p1, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "md5sum"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Lcom/tencent/stat/b;->c:Ljava/lang/String;

    const-string v2, "version"

    iget v4, p1, Lcom/tencent/stat/b;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "config"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget v7, p1, Lcom/tencent/stat/b;->a:I

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ne v5, v4, :cond_2

    iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "config"

    const-string v7, "type=?"

    new-array v5, v5, [Ljava/lang/String;

    iget p1, p1, Lcom/tencent/stat/b;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {v0, v4, v3, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    goto :goto_1

    :cond_2
    const-string v4, "type"

    iget p1, p1, Lcom/tencent/stat/b;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v4, "config"

    invoke-virtual {p1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    sget-object p1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store cfg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sucessed to store cfg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_4

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_4
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_5

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private declared-synchronized b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/stat/x;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sent events in thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/stat/x;

    iget v1, p0, Lcom/tencent/stat/n;->b:I

    iget-object v2, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const-string v4, "event_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, v0, Lcom/tencent/stat/x;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/stat/n;->b:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "events"

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/stat/n;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_4
    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_6
    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_7
    iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_8
    sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V

    :goto_3
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private declared-synchronized b(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/stat/x;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sending events to status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/stat/x;

    iget v1, p2, Lcom/tencent/stat/x;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxSendRetryCount()I

    move-result v3

    const/4 v4, 0x0

    if-le v1, v3, :cond_1

    iget v1, p0, Lcom/tencent/stat/n;->b:I

    iget-object v3, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v5, "events"

    const-string v6, "event_id=?"

    new-array v2, v2, [Ljava/lang/String;

    iget-wide v7, p2, Lcom/tencent/stat/x;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/tencent/stat/n;->b:I

    goto :goto_0

    :cond_1
    const-string v1, "send_count"

    iget v3, p2, Lcom/tencent/stat/x;->d:I

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update event:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p2, Lcom/tencent/stat/x;->a:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " for content:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "events"

    const-string v5, "event_id=?"

    new-array v2, v2, [Ljava/lang/String;

    iget-wide v6, p2, Lcom/tencent/stat/x;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {v1, v3, v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_0

    sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update db, error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "events"

    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/tencent/stat/n;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    sget-object p2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    :goto_1
    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_4
    sget-object p2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object p1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_6
    sget-object p2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_7
    iget-object p2, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catch_2
    move-exception p2

    :try_start_8
    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, p2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V

    :goto_3
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private c(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/stat/x;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const/4 v4, 0x0

    const-string v5, "status=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "event_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/stat/common/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 p2, 0x3

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance p2, Lcom/tencent/stat/x;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/tencent/stat/x;-><init>(JLjava/lang/String;II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic d()Lcom/tencent/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    return-object v0
.end method

.method private e()V
    .locals 8

    const-string v0, "events"

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "status=?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/tencent/stat/n;->b:I

    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/stat/n;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unsent events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "keyvalues"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/stat/n;->g:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/stat/n;->b:I

    return v0
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/stat/v;

    invoke-direct {v1, p0, p1}, Lcom/tencent/stat/v;-><init>(Lcom/tencent/stat/n;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
    .locals 5

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/n;->b(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/stat/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/stat/r;-><init>(Lcom/tencent/stat/n;Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method a(Lcom/tencent/stat/b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/stat/s;

    invoke-direct {v1, p0, p1}, Lcom/tencent/stat/s;-><init>(Lcom/tencent/stat/n;Lcom/tencent/stat/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/stat/x;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/stat/n;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/stat/q;

    invoke-direct {v1, p0, p1}, Lcom/tencent/stat/q;-><init>(Lcom/tencent/stat/n;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/stat/x;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/n;->b(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/stat/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/stat/p;-><init>(Lcom/tencent/stat/n;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_9

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    div-long/2addr v14, v4

    if-eq v9, v7, :cond_1

    mul-long v12, v12, v4

    invoke-static {v12, v13}, Lcom/tencent/stat/common/k;->a(J)Ljava/lang/String;

    move-result-object v12

    mul-long v16, v14, v4

    invoke-static/range {v16 .. v17}, Lcom/tencent/stat/common/k;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    or-int/lit8 v12, v12, 0x2

    :cond_2
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    array-length v13, v11

    if-lez v13, :cond_5

    aget-object v13, v11, v6

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-ge v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v2, 0xa

    if-le v5, v2, :cond_3

    move-object v13, v4

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v11, :cond_6

    array-length v4, v11

    if-lt v4, v10, :cond_6

    aget-object v4, v11, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    :cond_7
    :goto_4
    new-instance v5, Lcom/tencent/stat/DeviceInfo;

    invoke-direct {v5, v13, v4, v12}, Lcom/tencent/stat/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v5, v1, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v8}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "uid"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "user_type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "app_ver"

    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ts"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v5, "user"

    const-string v8, "uid=?"

    new-array v10, v7, [Ljava/lang/String;

    aput-object v0, v10, v6

    invoke-virtual {v2, v5, v4, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    if-eq v12, v9, :cond_a

    iget-object v0, v1, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "user"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_5
    if-nez v7, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_b
    move-object v4, v0

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "uid"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "user_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "app_ver"

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ts"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, v1, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "user"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v4, Lcom/tencent/stat/DeviceInfo;

    invoke-direct {v4, v0, v2, v6}, Lcom/tencent/stat/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, v1, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    move-object v2, v7

    :goto_7
    :try_start_4
    sget-object v3, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v3, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_d

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_8
    iget-object v0, v1, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_e

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/stat/t;

    invoke-direct {v1, p0}, Lcom/tencent/stat/t;-><init>(Lcom/tencent/stat/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
