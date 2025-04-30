.class final Lio/reactivex/internal/operators/flowable/q$a;
.super Ljava/lang/Object;
.source "FlowableDelay.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/q$a$a;,
        Lio/reactivex/internal/operators/flowable/q$a$b;,
        Lio/reactivex/internal/operators/flowable/q$a$c;
    }
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

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0$c;

.field final e:Z

.field f:Ll3/d;


# direct methods
.method constructor <init>(Ll3/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0$c;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->a:Ll3/c;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/q$a;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/q$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/q$a;->d:Lio/reactivex/h0$c;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/q$a;->e:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->d:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->d:Lio/reactivex/h0$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/q$a$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/flowable/q$a$a;-><init>(Lio/reactivex/internal/operators/flowable/q$a;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/q$a;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/q$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/h0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->d:Lio/reactivex/h0$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/q$a$b;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/flowable/q$a$b;-><init>(Lio/reactivex/internal/operators/flowable/q$a;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->e:Z

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/q$a;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/reactivex/h0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->d:Lio/reactivex/h0$c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/q$a$c;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/flowable/q$a$c;-><init>(Lio/reactivex/internal/operators/flowable/q$a;Ljava/lang/Object;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/q$a;->b:J

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/reactivex/h0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/q$a;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$a;->f:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
