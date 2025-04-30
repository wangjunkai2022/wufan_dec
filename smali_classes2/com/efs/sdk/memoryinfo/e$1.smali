.class final Lcom/efs/sdk/memoryinfo/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/memoryinfo/e;-><init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic D:Landroid/content/Context;

.field final synthetic E:Lcom/efs/sdk/memoryinfo/e;


# direct methods
.method constructor <init>(Lcom/efs/sdk/memoryinfo/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    iput-object p2, p0, Lcom/efs/sdk/memoryinfo/e$1;->D:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "umid"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "um_umid_header"

    .line 3
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    invoke-static {p2}, Lcom/efs/sdk/memoryinfo/e;->a(Lcom/efs/sdk/memoryinfo/e;)Lcom/efs/sdk/base/EfsReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    .line 5
    const-class p1, Lcom/efs/sdk/memoryinfo/e;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    invoke-static {p2}, Lcom/efs/sdk/memoryinfo/e;->b(Lcom/efs/sdk/memoryinfo/e;)Z

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object p1, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    invoke-static {p1}, Lcom/efs/sdk/memoryinfo/e;->c(Lcom/efs/sdk/memoryinfo/e;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;

    .line 9
    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    invoke-static {v0, p2}, Lcom/efs/sdk/memoryinfo/e;->a(Lcom/efs/sdk/memoryinfo/e;Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "send cache:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    invoke-static {p2}, Lcom/efs/sdk/memoryinfo/e;->c(Lcom/efs/sdk/memoryinfo/e;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    sget-boolean p1, Lcom/efs/sdk/memoryinfo/a;->DEBUG:Z

    .line 12
    iget-object p1, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    invoke-static {p1}, Lcom/efs/sdk/memoryinfo/e;->c(Lcom/efs/sdk/memoryinfo/e;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/efs/sdk/memoryinfo/e$1;->D:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    const-string p2, "umid"

    invoke-virtual {p1, p2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->unregistImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 14
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    const-string p2, "umid "

    .line 15
    invoke-static {p2, p1}, Lcom/efs/sdk/memoryinfo/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
