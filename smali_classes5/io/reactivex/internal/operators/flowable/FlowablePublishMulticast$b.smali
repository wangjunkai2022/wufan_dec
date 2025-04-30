.class final Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;
.super Ljava/lang/Object;
.source "FlowablePublishMulticast.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TR;>;",
        "Ll3/d;"
    }
.end annotation


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a<",
            "*>;"
        }
    .end annotation
.end field

.field c:Ll3/d;


# direct methods
.method constructor <init>(Ll3/c;Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;",
            "Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->a:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->c:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->b:Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$a;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->c:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->c:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishMulticast$b;->c:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
