.class final Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "FlowableAny.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableAny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x201337e32e45b575L


# instance fields
.field final k:Lw2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field l:Ll3/d;

.field m:Z


# direct methods
.method constructor <init>(Ll3/c;Lw2/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lw2/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Ll3/c;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->k:Lw2/r;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->l:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->m:Z

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->m:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->a:Ll3/c;

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->k:Lw2/r;

    invoke-interface {v0, p1}, Lw2/r;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->m:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->l:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->d(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->l:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->l:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber;->l:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->a:Ll3/c;

    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method
