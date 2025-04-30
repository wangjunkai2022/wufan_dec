.class public abstract Lio/reactivex/h0;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/h0$a;,
        Lio/reactivex/h0$b;,
        Lio/reactivex/h0$c;
    }
.end annotation


# static fields
.field static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    .line 2
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/reactivex/h0;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()J
    .locals 2

    .line 1
    sget-wide v0, Lio/reactivex/h0;->a:J

    return-wide v0
.end method


# virtual methods
.method public abstract c()Lio/reactivex/h0$c;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end method

.method public d(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 2
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
    invoke-virtual {p0}, Lio/reactivex/h0;->c()Lio/reactivex/h0$c;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    new-instance v1, Lio/reactivex/h0$a;

    invoke-direct {v1, p1, v0}, Lio/reactivex/h0$a;-><init>(Ljava/lang/Runnable;Lio/reactivex/h0$c;)V

    .line 4
    invoke-virtual {v0, v1, p2, p3, p4}, Lio/reactivex/h0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    return-object v1
.end method

.method public g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/h0;->c()Lio/reactivex/h0$c;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    new-instance v7, Lio/reactivex/h0$b;

    invoke-direct {v7, p1, v0}, Lio/reactivex/h0$b;-><init>(Ljava/lang/Runnable;Lio/reactivex/h0$c;)V

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 4
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/h0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    .line 5
    sget-object p2, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    return-object v7
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j(Lw2/o;)Lio/reactivex/h0;
    .locals 1
    .param p1    # Lw2/o;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lio/reactivex/h0;",
            ":",
            "Lio/reactivex/disposables/b;",
            ">(",
            "Lw2/o<",
            "Lio/reactivex/j<",
            "Lio/reactivex/j<",
            "Lio/reactivex/a;",
            ">;>;",
            "Lio/reactivex/a;",
            ">;)TS;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerWhen;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/schedulers/SchedulerWhen;-><init>(Lw2/o;Lio/reactivex/h0;)V

    return-object v0
.end method
