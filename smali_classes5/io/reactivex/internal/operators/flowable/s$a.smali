.class final Lio/reactivex/internal/operators/flowable/s$a;
.super Ljava/lang/Object;
.source "FlowableDematerialize.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/s;
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
        "Lio/reactivex/y<",
        "TT;>;>;",
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

.field b:Z

.field c:Ll3/d;


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
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s$a;->a:Ll3/c;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/y<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->b:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/reactivex/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/reactivex/y;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/y;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->c:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 6
    invoke-virtual {p1}, Lio/reactivex/y;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/s$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lio/reactivex/y;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/s$a;->c:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/s$a;->onComplete()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->a:Ll3/c;

    invoke-virtual {p1}, Lio/reactivex/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->c:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->b:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->b:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/reactivex/y;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/s$a;->a(Lio/reactivex/y;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->c:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/s$a;->c:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/s$a;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/s$a;->c:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
