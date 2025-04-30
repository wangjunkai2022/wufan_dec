.class Lcom/ss/android/downloadlib/addownload/b/f$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/b/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/b/f;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/b/f$1;->a:Lcom/ss/android/downloadlib/addownload/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/f$1;->a:Lcom/ss/android/downloadlib/addownload/b/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/downloadlib/addownload/b/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/addownload/b/f;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/f$1;->a:Lcom/ss/android/downloadlib/addownload/b/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/downloadlib/addownload/b/f;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/f$1;->a:Lcom/ss/android/downloadlib/addownload/b/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/b/f;->b(Lcom/ss/android/downloadlib/addownload/b/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/i;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 5
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/f$1;->a:Lcom/ss/android/downloadlib/addownload/b/f;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/downloadlib/addownload/b/f;Z)Z

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
