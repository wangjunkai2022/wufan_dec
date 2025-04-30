.class final Lio/reactivex/internal/operators/flowable/a0$a;
.super Ljava/lang/Object;
.source "FlowableElementAtSingle.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/a0;
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
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/l0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Ll3/d;

.field e:J

.field f:Z


# direct methods
.method constructor <init>(Lio/reactivex/l0;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a0$a;->a:Lio/reactivex/l0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/a0$a;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/a0$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 2
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->f:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a0$a;->a:Lio/reactivex/l0;

    invoke-interface {v1, v0}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->a:Lio/reactivex/l0;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->f:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->f:Z

    .line 4
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->a:Lio/reactivex/l0;

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->e:J

    .line 3
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/a0$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->f:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 6
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->a:Lio/reactivex/l0;

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->e:J

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a0$a;->d:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a0$a;->a:Lio/reactivex/l0;

    invoke-interface {v0, p0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/b;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method
