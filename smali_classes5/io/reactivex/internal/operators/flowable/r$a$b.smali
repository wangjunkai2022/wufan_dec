.class final Lio/reactivex/internal/operators/flowable/r$a$b;
.super Ljava/lang/Object;
.source "FlowableDelaySubscriptionOther.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/r$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/r$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r$a$b;->a:Lio/reactivex/internal/operators/flowable/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r$a$b;->a:Lio/reactivex/internal/operators/flowable/r$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/r$a;->b:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r$a$b;->a:Lio/reactivex/internal/operators/flowable/r$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/r$a;->b:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r$a$b;->a:Lio/reactivex/internal/operators/flowable/r$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/r$a;->b:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/r$a$b;->a:Lio/reactivex/internal/operators/flowable/r$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/r$a;->a:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->h(Ll3/d;)V

    return-void
.end method
