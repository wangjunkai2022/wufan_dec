.class Lcom/tencent/stat/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/stat/n;


# direct methods
.method constructor <init>(Lcom/tencent/stat/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/t;->a:Lcom/tencent/stat/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/stat/t;->a:Lcom/tencent/stat/n;

    invoke-static {v1}, Lcom/tencent/stat/n;->b(Lcom/tencent/stat/n;)Lcom/tencent/stat/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "config"

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

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Lcom/tencent/stat/b;

    invoke-direct {v5, v1}, Lcom/tencent/stat/b;-><init>(I)V

    iput v1, v5, Lcom/tencent/stat/b;->a:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v5, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;

    iput-object v3, v5, Lcom/tencent/stat/b;->c:Ljava/lang/String;

    iput v4, v5, Lcom/tencent/stat/b;->d:I

    invoke-static {v5}, Lcom/tencent/stat/StatConfig;->a(Lcom/tencent/stat/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/tencent/stat/n;->d()Lcom/tencent/stat/common/StatLogger;

    move-result-object v2

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
