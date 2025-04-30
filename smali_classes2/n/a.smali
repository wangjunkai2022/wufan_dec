.class public final Ln/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "msp.db"

.field private static final c:I = 0x1


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "msp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "select tid from tb_tid"

    .line 3
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    iget-object v4, p0, Ln/a;->a:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/sdk/util/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5, v3, v4}, Lcom/alipay/sdk/encrypt/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0

    :catch_1
    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    :goto_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    return-object v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v0, "select name from tb_tid where tid!=\'\' order by dt asc"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 5
    new-array v2, v1, [Ljava/lang/String;

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 7
    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    if-gt v1, v3, :cond_1

    .line 9
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_0
    if-ge v4, v1, :cond_4

    .line 10
    aget-object v0, v2, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    aget-object v0, v2, v4

    invoke-static {p0, v0}, Ln/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "tb_tid"

    const-string v1, "name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p4, v0}, Lcom/alipay/sdk/encrypt/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2, p3}, Ln/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    aput-object p4, v0, v1

    const/4 p2, 0x2

    aput-object p5, v0, p2

    const-string p2, "insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime(\'now\', \'localtime\'))"

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "select name from tb_tid where tid!=\'\' order by dt asc"

    const/4 p4, 0x0

    .line 3
    invoke-virtual {p1, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p4

    const/16 p5, 0xe

    if-gt p4, p5, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p4

    sub-int/2addr p4, p5

    new-array p5, p4, [Ljava/lang/String;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p5, v0

    add-int/2addr v0, v1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-gt p4, v0, :cond_1

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :goto_0
    if-ge p3, p4, :cond_4

    aget-object p2, p5, p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    aget-object p2, p5, p3

    invoke-static {p1, p2}, Ln/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "select count(*) from tb_tid where name=?"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    .line 1
    invoke-static {p1, p2}, Ln/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {p0, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    nop

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-lez p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p4, v0}, Lcom/alipay/sdk/encrypt/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v0, v2

    aput-object p5, v0, v1

    .line 2
    invoke-static {p2, p3}, Ln/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    const-string p2, "update tb_tid set tid=?, key_tid=?, dt=datetime(\'now\', \'localtime\') where name=?"

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    const-string v0, "select dt from tb_tid where name=?"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ln/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p1, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, p1

    .line 8
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    :goto_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catch_0
    nop

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v1

    :goto_1
    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw p1

    :catch_1
    move-object v4, v1

    :goto_2
    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_3
    return-wide v2
.end method

.method private static p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v5, ""

    const-string v6, ""

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Ln/a;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2}, Ln/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    throw p1

    :catch_0
    nop

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v7, p1, p2}, Ln/a;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Ln/a;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime(\'now\', \'localtime\'))"

    .line 4
    iget-object v2, p0, Ln/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/sdk/util/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, p3, v2}, Lcom/alipay/sdk/encrypt/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ln/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    aput-object p3, v2, v3

    const/4 p1, 0x2

    aput-object p4, v2, p1

    invoke-virtual {v7, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "select name from tb_tid where tid!=\'\' order by dt asc"

    invoke-virtual {v7, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    const/16 p4, 0xe

    if-gt p3, p4, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    sub-int/2addr p3, p4

    new-array p4, p3, [Ljava/lang/String;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    if-gt p3, v0, :cond_2

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_0
    if-ge p2, p3, :cond_5

    aget-object p1, p4, p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    aget-object p1, p4, p2

    invoke-static {v7, p1}, Ln/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v7, :cond_7

    .line 5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v7

    goto :goto_2

    :catch_0
    move-object v0, v7

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw p1

    :catch_1
    nop

    :goto_3
    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "select tid from tb_tid where name=?"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ln/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-object p1, v1

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw p2

    :catch_2
    move-object p1, v1

    move-object v2, p1

    :goto_2
    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Ln/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/sdk/util/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2, v1, p1}, Lcom/alipay/sdk/encrypt/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "select key_tid from tb_tid where name=?"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ln/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-object p1, v1

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw p2

    :catch_2
    move-object p1, v1

    move-object v2, p1

    :goto_2
    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "drop table if exists tb_tid"

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);"

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
