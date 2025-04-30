.class final Lio/reactivex/internal/operators/flowable/h1$a;
.super Ljava/lang/Object;
.source "FlowableTimeInterval.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/h1;
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
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/h0;

.field d:Ll3/d;

.field e:J


# direct methods
.method constructor <init>(Ll3/c;Ljava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Lio/reactivex/schedulers/d<",
            "TT;>;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h1$a;->a:Ll3/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/h1$a;->c:Lio/reactivex/h0;

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/h1$a;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->d:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->c:Lio/reactivex/h0;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/h1$a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/h1$a;->e:J

    .line 3
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->e:J

    sub-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/h1$a;->a:Ll3/c;

    new-instance v3, Lio/reactivex/schedulers/d;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/h1$a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, p1, v0, v1, v4}, Lio/reactivex/schedulers/d;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v2, v3}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->d:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->c:Lio/reactivex/h0;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/h1$a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->e:J

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h1$a;->d:Ll3/d;

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h1$a;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h1$a;->d:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
