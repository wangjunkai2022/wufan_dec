.class public final Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;
.super Lio/reactivex/a;
.source "CompletableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver;
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
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;->a:Lio/reactivex/g;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver;-><init>(Lio/reactivex/d;Lio/reactivex/g;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;->b:Lio/reactivex/h0;

    invoke-virtual {p1, v0}, Lio/reactivex/h0;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver;->b:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    return-void
.end method
