.class final Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;
.super Ljava/util/ArrayDeque;
.source "FlowableSkipLast.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipLast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipLastSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayDeque<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x34d6eda843bdac95L


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Ll3/d;


# direct methods
.method constructor <init>(Ll3/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->a:Ll3/c;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->b:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->c:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->b:I

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->a:Ll3/c;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->c:Ll3/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Ll3/d;->request(J)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->c:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->c:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;->c:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
