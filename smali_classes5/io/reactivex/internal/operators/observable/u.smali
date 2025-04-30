.class public final Lio/reactivex/internal/operators/observable/u;
.super Lio/reactivex/z;
.source "ObservableDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "+TT;>;",
            "Lio/reactivex/e0<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/u;->a:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/u;->b:Lio/reactivex/e0;

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/observable/u$a;

    invoke-direct {v1, p0, v0, p1}, Lio/reactivex/internal/operators/observable/u$a;-><init>(Lio/reactivex/internal/operators/observable/u;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/g0;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/u;->b:Lio/reactivex/e0;

    invoke-interface {p1, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
