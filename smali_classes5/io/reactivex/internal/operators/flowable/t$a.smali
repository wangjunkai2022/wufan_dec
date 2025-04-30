.class final Lio/reactivex/internal/operators/flowable/t$a;
.super Ljava/lang/Object;
.source "FlowableDetach.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# instance fields
.field a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Ll3/d;


# direct methods
.method constructor <init>(Ll3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Ll3/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Ll3/d;

    .line 2
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Ll3/d;

    .line 3
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Ll3/c;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Ll3/c;

    .line 4
    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Ll3/c;

    .line 2
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Ll3/d;

    .line 3
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Ll3/c;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Ll3/c;

    .line 4
    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Ll3/c;

    .line 2
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Ll3/d;

    .line 3
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Ll3/c;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Ll3/c;

    .line 4
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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/t$a;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t$a;->b:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
