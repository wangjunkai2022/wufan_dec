.class Lcom/ss/android/downloadlib/a/b/a$1;
.super Ljava/lang/Object;
.source "AidlClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a/b/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    iget-object p1, p1, Lcom/ss/android/downloadlib/a/b/a;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/b/a;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    invoke-static {p2}, Lcom/ss/android/downloadlib/a/b/c$a;->a(Landroid/os/IBinder;)Lcom/ss/android/downloadlib/a/b/c;

    move-result-object p2

    iput-object p2, v0, Lcom/ss/android/downloadlib/a/b/a;->a:Lcom/ss/android/downloadlib/a/b/c;

    .line 4
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    invoke-virtual {p2}, Lcom/ss/android/downloadlib/a/b/a;->c()V

    .line 5
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    iget-object p2, p2, Lcom/ss/android/downloadlib/a/b/a;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/b/a$a;

    .line 6
    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/b/a$a;->a()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    iget-object p1, p1, Lcom/ss/android/downloadlib/a/b/a;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/b/a;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/a$1;->a:Lcom/ss/android/downloadlib/a/b/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ss/android/downloadlib/a/b/a;->a:Lcom/ss/android/downloadlib/a/b/c;

    .line 4
    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/a/b/a$a;

    .line 5
    invoke-interface {v1}, Lcom/ss/android/downloadlib/a/b/a$a;->b()V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
