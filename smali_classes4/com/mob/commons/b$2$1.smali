.class Lcom/mob/commons/b$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b$2;


# direct methods
.method constructor <init>(Lcom/mob/commons/b$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/b$2$1;->a:Lcom/mob/commons/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b$2$1;->a:Lcom/mob/commons/b$2;

    iget-object v0, v0, Lcom/mob/commons/b$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/b;->c(Ljava/lang/String;)V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
