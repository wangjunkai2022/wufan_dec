.class public Lcom/ss/android/downloadlib/d/c;
.super Ljava/lang/Object;
.source "ClickEventHelper.java"


# static fields
.field private static volatile b:Lcom/ss/android/downloadlib/d/c;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/d/b;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/d/b;-><init>(Landroid/content/Context;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/d/c;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v1

    const-string v2, "ClickEventHelper"

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/d/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/d/c;->b:Lcom/ss/android/downloadlib/d/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/d/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/d/c;->b:Lcom/ss/android/downloadlib/d/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/d/c;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/d/c;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/d/c;->b:Lcom/ss/android/downloadlib/d/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/d/c;->b:Lcom/ss/android/downloadlib/d/c;

    return-object v0
.end method

.method private c(JLjava/lang/String;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "req_id"

    .line 5
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "time < ? AND ad_id = ? AND req_id = ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x48190800

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    .line 8
    iget-object p1, p0, Lcom/ss/android/downloadlib/d/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "click_event"

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 5

    const-string v0, "req_id"

    .line 7
    iget-object v1, p0, Lcom/ss/android/downloadlib/d/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_3

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 12
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ad_id"

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "time"

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "click_event"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/d/c;->c(JLjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "click_event_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public b(JLjava/lang/String;)Z
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_6

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "req_id"

    .line 5
    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const-string v6, "time > ? AND ad_id = ? AND req_id = ?"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v7, p2

    const/4 p1, 0x2

    aput-object p3, v7, p1

    .line 8
    iget-object v3, p0, Lcom/ss/android/downloadlib/d/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "click_event"

    sget-object v5, Lcom/ss/android/downloadlib/d/b;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_3

    const/4 v1, 0x1

    .line 10
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1

    :cond_6
    :goto_1
    return v1
.end method

.method public c()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "click_event_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
