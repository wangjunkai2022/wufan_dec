.class final Lio/reactivex/schedulers/c$a;
.super Lio/reactivex/h0$c;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/c$a$a;
    }
.end annotation


# instance fields
.field volatile a:Z

.field final synthetic b:Lio/reactivex/schedulers/c;


# direct methods
.method constructor <init>(Lio/reactivex/schedulers/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/schedulers/c$a;->b:Lio/reactivex/schedulers/c;

    invoke-direct {p0}, Lio/reactivex/h0$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/reactivex/schedulers/c$a;->b:Lio/reactivex/schedulers/c;

    invoke-virtual {v0, p1}, Lio/reactivex/schedulers/c;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    .locals 10
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/schedulers/c$a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    new-instance v7, Lio/reactivex/schedulers/c$b;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lio/reactivex/schedulers/c$a;->b:Lio/reactivex/schedulers/c;

    iget-wide v5, v0, Lio/reactivex/schedulers/c;->c:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v5

    iput-wide v8, v0, Lio/reactivex/schedulers/c;->c:J

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/schedulers/c$b;-><init>(Lio/reactivex/schedulers/c$a;JLjava/lang/Runnable;J)V

    .line 4
    iget-object p1, p0, Lio/reactivex/schedulers/c$a;->b:Lio/reactivex/schedulers/c;

    iget-object p1, p1, Lio/reactivex/schedulers/c;->b:Ljava/util/Queue;

    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lio/reactivex/schedulers/c$a$a;

    invoke-direct {p1, p0, v7}, Lio/reactivex/schedulers/c$a$a;-><init>(Lio/reactivex/schedulers/c$a;Lio/reactivex/schedulers/c$b;)V

    invoke-static {p1}, Lio/reactivex/disposables/c;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/schedulers/c$a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    new-instance v7, Lio/reactivex/schedulers/c$b;

    iget-object v0, p0, Lio/reactivex/schedulers/c$a;->b:Lio/reactivex/schedulers/c;

    iget-wide v0, v0, Lio/reactivex/schedulers/c;->d:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    add-long v2, v0, p2

    iget-object p2, p0, Lio/reactivex/schedulers/c$a;->b:Lio/reactivex/schedulers/c;

    iget-wide v5, p2, Lio/reactivex/schedulers/c;->c:J

    const-wide/16 p3, 0x1

    add-long/2addr p3, v5

    iput-wide p3, p2, Lio/reactivex/schedulers/c;->c:J

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/schedulers/c$b;-><init>(Lio/reactivex/schedulers/c$a;JLjava/lang/Runnable;J)V

    .line 4
    iget-object p1, p0, Lio/reactivex/schedulers/c$a;->b:Lio/reactivex/schedulers/c;

    iget-object p1, p1, Lio/reactivex/schedulers/c;->b:Ljava/util/Queue;

    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lio/reactivex/schedulers/c$a$a;

    invoke-direct {p1, p0, v7}, Lio/reactivex/schedulers/c$a$a;-><init>(Lio/reactivex/schedulers/c$a;Lio/reactivex/schedulers/c$b;)V

    invoke-static {p1}, Lio/reactivex/disposables/c;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/schedulers/c$a;->a:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/schedulers/c$a;->a:Z

    return v0
.end method
