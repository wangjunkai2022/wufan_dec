.class abstract Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "FlowableRepeatWhen.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WhenSourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4dc79ef2e0d16b40L


# instance fields
.field protected final h:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected final i:Lio/reactivex/processors/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/a<",
            "TU;>;"
        }
    .end annotation
.end field

.field protected final j:Ll3/d;

.field private k:J


# direct methods
.method constructor <init>(Ll3/c;Lio/reactivex/processors/a;Ll3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;",
            "Lio/reactivex/processors/a<",
            "TU;>;",
            "Ll3/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->h:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->i:Lio/reactivex/processors/a;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->j:Ll3/d;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->j:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method protected final i(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->k:J

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->g(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->j:Ll3/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Ll3/d;->request(J)V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->i:Lio/reactivex/processors/a;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->k:J

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->h:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Ll3/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->h(Ll3/d;)V

    return-void
.end method
