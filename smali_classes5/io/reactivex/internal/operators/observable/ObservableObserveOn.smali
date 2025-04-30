.class public final Lio/reactivex/internal/operators/observable/ObservableObserveOn;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
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
.field final b:Lio/reactivex/h0;

.field final c:Z

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/h0;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/h0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->b:Lio/reactivex/h0;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->c:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->d:I

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->b:Lio/reactivex/h0;

    instance-of v1, v0, Lio/reactivex/internal/schedulers/l;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {v0, p1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/h0;->c()Lio/reactivex/h0$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->c:Z

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->d:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;-><init>(Lio/reactivex/g0;Lio/reactivex/h0$c;ZI)V

    invoke-interface {v1, v2}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    :goto_0
    return-void
.end method
