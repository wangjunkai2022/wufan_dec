.class Lcn/aigestudio/downloader/bizs/p;
.super Ljava/lang/Object;
.source "ThreadDAO.java"

# interfaces
.implements Lcn/aigestudio/downloader/bizs/n;


# instance fields
.field private final a:Lcn/aigestudio/downloader/bizs/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/aigestudio/downloader/bizs/b;

    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/bizs/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/p;->a:Lcn/aigestudio/downloader/bizs/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/p;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DELETE FROM thread_info WHERE id=?"

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/j;
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/p;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "SELECT base_url, start, end FROM thread_info WHERE id=? order by end"

    .line 2
    invoke-virtual {v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcn/aigestudio/downloader/bizs/j;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcn/aigestudio/downloader/bizs/j;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v4
.end method

.method public f(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/p;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE thread_info SET start=? WHERE base_url=? AND id=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    iget-wide v4, p1, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    aput-object p1, v2, v3

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/p;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcn/aigestudio/downloader/bizs/j;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "INSERT INTO thread_info(base_url, start, end, id) VALUES (?,?,?,?)"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/p;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DELETE FROM thread_info WHERE base_url=?"

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/j;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/p;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "SELECT base_url, start, end, id FROM thread_info WHERE base_url=? order by end"

    .line 3
    invoke-virtual {v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v3, Lcn/aigestudio/downloader/bizs/j;

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v8, v5

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v10, v5

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcn/aigestudio/downloader/bizs/j;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0
.end method
