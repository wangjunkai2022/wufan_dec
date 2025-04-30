.class final Lio/reactivex/internal/operators/completable/w$a;
.super Ljava/lang/Object;
.source "CompletableTimeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/w$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Lio/reactivex/disposables/a;

.field final c:Lio/reactivex/d;

.field final synthetic d:Lio/reactivex/internal/operators/completable/w;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/w;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/a;Lio/reactivex/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/w$a;->d:Lio/reactivex/internal/operators/completable/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/w$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/w$a;->b:Lio/reactivex/disposables/a;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/w$a;->c:Lio/reactivex/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/w$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/w$a;->b:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->d()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/w$a;->d:Lio/reactivex/internal/operators/completable/w;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/w;->e:Lio/reactivex/g;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/w$a;->c:Lio/reactivex/d;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/completable/w$a$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/completable/w$a$a;-><init>(Lio/reactivex/internal/operators/completable/w$a;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    :cond_1
    :goto_0
    return-void
.end method
