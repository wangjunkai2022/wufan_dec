.class final Lio/reactivex/internal/operators/flowable/f1$a;
.super Ljava/lang/Object;
.source "FlowableTakeUntilPredicate.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/f1;
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
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Ll3/d;

.field d:Z


# direct methods
.method constructor <init>(Ll3/c;Lw2/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;",
            "Lw2/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f1$a;->a:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/f1$a;->b:Lw2/r;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->c:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->b:Lw2/r;

    invoke-interface {v0, p1}, Lw2/r;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/f1$a;->d:Z

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/f1$a;->c:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/f1$a;->a:Ll3/c;

    invoke-interface {p1}, Ll3/c;->onComplete()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->c:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 9
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/f1$a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->c:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f1$a;->c:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/f1$a;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f1$a;->c:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
