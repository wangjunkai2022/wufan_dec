.class final Lio/reactivex/internal/operators/flowable/a1$a;
.super Ljava/lang/Object;
.source "FlowableSingleSingle.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/a1;
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

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Ll3/d;

.field d:Z

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/l0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->a:Lio/reactivex/l0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/a1$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 2
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->d:Z

    .line 3
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->e:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->b:Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->a:Lio/reactivex/l0;

    invoke-interface {v1, v0}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->a:Lio/reactivex/l0;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->d:Z

    .line 4
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->a:Lio/reactivex/l0;

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->d:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 5
    sget-object p1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->a:Lio/reactivex/l0;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a1$a;->c:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1$a;->a:Lio/reactivex/l0;

    invoke-interface {v0, p0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/b;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method
