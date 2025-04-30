.class public final Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableRepeatWhen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-",
            "Lio/reactivex/z<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/e0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lw2/o<",
            "-",
            "Lio/reactivex/z<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/e0<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;->b:Lw2/o;

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->l8()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/c;->j8()Lio/reactivex/subjects/c;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;->b:Lw2/o;

    invoke-interface {v1, v0}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The handler returned a null ObservableSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;-><init>(Lio/reactivex/g0;Lio/reactivex/subjects/c;Lio/reactivex/e0;)V

    .line 4
    invoke-interface {p1, v2}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 5
    iget-object p1, v2, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;->e:Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver$InnerRepeatObserver;

    invoke-interface {v1, p1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 6
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;->d()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/g0;)V

    return-void
.end method
