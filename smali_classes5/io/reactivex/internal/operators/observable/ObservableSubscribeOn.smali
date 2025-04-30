.class public final Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;,
        Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;
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


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;->b:Lio/reactivex/h0;

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
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;-><init>(Lio/reactivex/g0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;->b:Lio/reactivex/h0;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;)V

    invoke-virtual {p1, v1}, Lio/reactivex/h0;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->a(Lio/reactivex/disposables/b;)V

    return-void
.end method
