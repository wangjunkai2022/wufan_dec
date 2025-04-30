.class public final Lio/reactivex/internal/operators/completable/i;
.super Lio/reactivex/a;
.source "CompletableFromAction.java"


# instance fields
.field final a:Lw2/a;


# direct methods
.method public constructor <init>(Lw2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/i;->a:Lw2/a;

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/reactivex/disposables/c;->b()Lio/reactivex/disposables/b;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/i;->a:Lw2/a;

    invoke-interface {v1}, Lw2/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Lio/reactivex/d;->onComplete()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
