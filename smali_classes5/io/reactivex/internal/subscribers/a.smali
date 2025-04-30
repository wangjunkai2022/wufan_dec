.class public abstract Lio/reactivex/internal/subscribers/a;
.super Ljava/lang/Object;
.source "BasicFuseableConditionalSubscriber.java"

# interfaces
.implements Lx2/a;
.implements Lx2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx2/a<",
        "TT;>;",
        "Lx2/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected final a:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected b:Ll3/d;

.field protected c:Lx2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected d:Z

.field protected e:I


# direct methods
.method public constructor <init>(Lx2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/subscribers/a;->a:Lx2/a;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->b:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 3
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->b:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->c:Lx2/l;

    invoke-interface {v0}, Lx2/o;->clear()V

    return-void
.end method

.method protected final d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->c:Lx2/l;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lx2/k;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput p1, p0, Lio/reactivex/internal/subscribers/a;->e:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->c:Lx2/l;

    invoke-interface {v0}, Lx2/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/a;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->a:Lx2/a;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/a;->d:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->a:Lx2/a;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->b:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/subscribers/a;->b:Ll3/d;

    .line 3
    instance-of v0, p1, Lx2/l;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lx2/l;

    iput-object p1, p0, Lio/reactivex/internal/subscribers/a;->c:Lx2/l;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/subscribers/a;->a:Lx2/a;

    invoke-interface {p1, p0}, Lio/reactivex/o;->onSubscribe(Ll3/d;)V

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/a;->a()V

    :cond_1
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->b:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
