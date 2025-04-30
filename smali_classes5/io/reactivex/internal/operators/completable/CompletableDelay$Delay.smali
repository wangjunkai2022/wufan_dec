.class final Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableDelay.java"

# interfaces
.implements Lio/reactivex/d;
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Delay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Lio/reactivex/d;",
        "Ljava/lang/Runnable;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x67777c1e4b8e28eL


# instance fields
.field final a:Lio/reactivex/d;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Z

.field f:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->a:Lio/reactivex/d;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->d:Lio/reactivex/h0;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->e:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->d:Lio/reactivex/h0;

    iget-wide v1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->f:Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->d:Lio/reactivex/h0;

    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p0, v0, v1, v2}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->f:Ljava/lang/Throwable;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :goto_0
    return-void
.end method
