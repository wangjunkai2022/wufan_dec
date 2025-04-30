.class public final Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableRepeatUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lw2/e;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;->c:Lw2/e;

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-direct {v0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil;->c:Lw2/e;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;-><init>(Ll3/c;Lw2/e;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Ll3/b;)V

    .line 4
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber;->a()V

    return-void
.end method
