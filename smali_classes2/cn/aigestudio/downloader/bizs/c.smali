.class public final Lcn/aigestudio/downloader/bizs/c;
.super Ljava/lang/Object;
.source "DLDBManager.java"

# interfaces
.implements Lcn/aigestudio/downloader/bizs/m;
.implements Lcn/aigestudio/downloader/bizs/n;


# static fields
.field private static c:Lcn/aigestudio/downloader/bizs/c;


# instance fields
.field private a:Lcn/aigestudio/downloader/bizs/o;

.field private b:Lcn/aigestudio/downloader/bizs/p;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/aigestudio/downloader/bizs/o;

    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/bizs/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    .line 3
    new-instance v0, Lcn/aigestudio/downloader/bizs/p;

    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/bizs/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    return-void
.end method

.method public static k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/aigestudio/downloader/bizs/c;->c:Lcn/aigestudio/downloader/bizs/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/aigestudio/downloader/bizs/c;

    invoke-direct {v0, p0}, Lcn/aigestudio/downloader/bizs/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/aigestudio/downloader/bizs/c;->c:Lcn/aigestudio/downloader/bizs/c;

    .line 3
    :cond_0
    sget-object p0, Lcn/aigestudio/downloader/bizs/c;->c:Lcn/aigestudio/downloader/bizs/c;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/o;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/j;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->c(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/o;->d(Lcn/aigestudio/downloader/bizs/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/o;->e(Lcn/aigestudio/downloader/bizs/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->f(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->g(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/o;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
