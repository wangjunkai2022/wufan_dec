.class Lcom/tencent/stat/w;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/tencent/stat/common/k;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "user"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    invoke-static {v0}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "uid"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "user"

    const-string v6, "uid=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v2, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/tencent/stat/n;->d()Lcom/tencent/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-instance v2, Lcom/tencent/stat/x;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/tencent/stat/x;-><init>(JLjava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/stat/x;

    const-string v6, "content"

    iget-object v7, v5, Lcom/tencent/stat/x;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "events"

    const-string v7, "event_id=?"

    new-array v8, v3, [Ljava/lang/String;

    iget-wide v9, v5, Lcom/tencent/stat/x;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {p1, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {}, Lcom/tencent/stat/n;->d()Lcom/tencent/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table if not exists events(event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, content TEXT, status INTEGER, send_count INTEGER, timestamp LONG)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists user(uid TEXT PRIMARY KEY, user_type INTEGER, app_ver TEXT, ts INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists config(type INTEGER PRIMARY KEY NOT NULL, content TEXT, md5sum TEXT, version INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    invoke-static {}, Lcom/tencent/stat/n;->d()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgrade DB from oldVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to newVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/tencent/stat/common/StatLogger;->debug(Ljava/lang/Object;)V

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const-string p3, "create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/stat/w;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/tencent/stat/w;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/stat/w;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/tencent/stat/w;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return-void
.end method
