.class public final Lio/reactivex/internal/operators/flowable/r;
.super Lio/reactivex/j;
.source "FlowableDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3/b;Ll3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+TT;>;",
            "Ll3/b<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->b:Ll3/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/r;->c:Ll3/b;

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 2
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
    new-instance v1, Lio/reactivex/internal/operators/flowable/r$a;

    invoke-direct {v1, p0, v0, p1}, Lio/reactivex/internal/operators/flowable/r$a;-><init>(Lio/reactivex/internal/operators/flowable/r;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Ll3/c;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/r;->c:Ll3/b;

    invoke-interface {p1, v1}, Ll3/b;->c(Ll3/c;)V

    return-void
.end method
