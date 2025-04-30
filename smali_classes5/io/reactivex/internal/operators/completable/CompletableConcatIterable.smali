.class public final Lio/reactivex/internal/operators/completable/CompletableConcatIterable;
.super Lio/reactivex/a;
.source "CompletableConcatIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable;->a:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public F0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "The iterator returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;-><init>(Lio/reactivex/d;Ljava/util/Iterator;)V

    .line 3
    iget-object v0, v1, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->c:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 4
    invoke-virtual {v1}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/d;)V

    return-void
.end method
