.class public final Ln/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ln/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ln/b;
    .locals 8

    const-class v0, Ln/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ln/b;->c:Ln/b;

    if-nez v1, :cond_2

    .line 2
    new-instance v1, Ln/b;

    invoke-direct {v1}, Ln/b;-><init>()V

    sput-object v1, Ln/b;->c:Ln/b;

    .line 3
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v1

    iget-object v1, v1, Lm/b;->a:Landroid/content/Context;

    .line 4
    new-instance v2, Ln/a;

    invoke-direct {v2, v1}, Ln/a;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {v1}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v1}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/util/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v4, Ln/b;->c:Ln/b;

    invoke-virtual {v2, v3, v1}, Ln/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ln/b;->a:Ljava/lang/String;

    .line 8
    sget-object v4, Ln/b;->c:Ln/b;

    invoke-virtual {v2, v3, v1}, Ln/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ln/b;->b:Ljava/lang/String;

    .line 9
    sget-object v4, Ln/b;->c:Ln/b;

    iget-object v4, v4, Ln/b;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    sget-object v4, Ln/b;->c:Ln/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    iput-object v5, v4, Ln/b;->b:Ljava/lang/String;

    .line 11
    :cond_1
    sget-object v4, Ln/b;->c:Ln/b;

    iget-object v5, v4, Ln/b;->a:Ljava/lang/String;

    iget-object v4, v4, Ln/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v5, v4}, Ln/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    sget-object v1, Ln/b;->c:Ln/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Ln/a;

    invoke-direct {v0, p1}, Ln/a;-><init>(Landroid/content/Context;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/sdk/util/b;->e()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v2, p0, Ln/b;->a:Ljava/lang/String;

    iget-object v3, p0, Ln/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Ln/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    throw p1

    :catch_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln/b;->a:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln/b;->b:Ljava/lang/String;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static h()V
    .locals 4

    .line 1
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v0

    iget-object v0, v0, Lm/b;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ln/a;

    invoke-direct {v3, v0}, Ln/a;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v3, v1, v2}, Ln/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
