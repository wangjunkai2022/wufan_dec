.class public final Lio/reactivex/internal/operators/completable/CompletableObserveOn;
.super Lio/reactivex/a;
.source "CompletableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;->b:Lio/reactivex/h0;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver;-><init>(Lio/reactivex/d;Lio/reactivex/h0;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    return-void
.end method
