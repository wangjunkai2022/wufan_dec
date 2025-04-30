.class public final Lio/reactivex/internal/operators/observable/ObservableTakeUntil;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TU;>;"
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
            "TT;>;",
            "Lio/reactivex/e0<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->b:Lio/reactivex/e0;

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
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;-><init>(Lio/reactivex/g0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->b:Lio/reactivex/e0;

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;->c:Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver;

    invoke-interface {p1, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
