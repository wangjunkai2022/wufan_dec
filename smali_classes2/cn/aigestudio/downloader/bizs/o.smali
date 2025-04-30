.class Lcn/aigestudio/downloader/bizs/o;
.super Ljava/lang/Object;
.source "TaskDAO.java"

# interfaces
.implements Lcn/aigestudio/downloader/bizs/m;


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

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "SELECT base_url, real_url, file_path, file_name, mime_type, e_tag, disposition, location, currentBytes, totalBytes FROM task_info WHERE base_url=?"

    .line 2
    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcn/aigestudio/downloader/bizs/f;

    invoke-direct {v2}, Lcn/aigestudio/downloader/bizs/f;-><init>()V

    .line 5
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    const/4 v1, 0x2

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    const/4 v1, 0x3

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    const/4 v1, 0x4

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->k:Ljava/lang/String;

    const/4 v1, 0x5

    .line 10
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->l:Ljava/lang/String;

    const/4 v1, 0x6

    .line 11
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    const/4 v1, 0x7

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    .line 13
    iget-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 14
    iget-object v1, v2, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v2
.end method

.method public d(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->k:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object p1, v1, v2

    const-string p1, "UPDATE task_info SET disposition=?,location=?,mime_type=?,totalBytes=?,file_name=?,currentBytes=? WHERE base_url=?"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public e(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->k:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->l:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 v2, 0x9

    aput-object p1, v1, v2

    const-string p1, "INSERT INTO task_info(base_url, real_url, file_path, file_name, mime_type, e_tag, disposition, location, currentBytes, totalBytes) values (?,?,?,?,?,?,?,?,?,?)"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DELETE FROM task_info WHERE base_url=?"

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method
