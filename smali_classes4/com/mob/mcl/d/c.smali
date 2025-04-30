.class public Lcom/mob/mcl/d/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mob/mcl/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/mcl/d/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/mcl/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/mcl/d/c;->a:Lcom/mob/mcl/d/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 9

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/d/c;->a:Lcom/mob/mcl/d/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "select expireTime from msg where workId = ?"

    .line 9
    const-class v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "rawQuery"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, [Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v7

    aput-object v1, v3, v8

    .line 10
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "expireTime"

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 13
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a()V
    .locals 9

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/d/c;->a:Lcom/mob/mcl/d/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from msg where expireTime < ?"

    .line 17
    const-class v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "execSQL"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    new-array v1, v8, [Ljava/lang/String;

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    aput-object v1, v3, v8

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 20
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/d/c;->a:Lcom/mob/mcl/d/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "workId"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expireTime"

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "msg"

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/d/c;->a:Lcom/mob/mcl/d/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from msg where workId = ?"

    .line 2
    const-class v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "execSQL"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v7

    aput-object v1, v3, v8

    .line 3
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
