.class public final Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InnerQueuedSubscriber.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ll3/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51462814a312b8L


# instance fields
.field final a:Lio/reactivex/internal/subscribers/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscribers/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field volatile d:Lx2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:J

.field g:I


# direct methods
.method public constructor <init>(Lio/reactivex/internal/subscribers/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/g<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->a:Lio/reactivex/internal/subscribers/g;

    .line 3
    iput p2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->b:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->e:Z

    return v0
.end method

.method public b()Lx2/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx2/o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->d:Lx2/o;

    return-object v0
.end method

.method public c()V
    .locals 5

    .line 1
    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-wide v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    iget v2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->f:J

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/d;

    invoke-interface {v2, v0, v1}, Ll3/d;->request(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->f:J

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->e:Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->a:Lio/reactivex/internal/subscribers/g;

    invoke-interface {v0, p0}, Lio/reactivex/internal/subscribers/g;->c(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->a:Lio/reactivex/internal/subscribers/g;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/subscribers/g;->d(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Throwable;)V

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
    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->a:Lio/reactivex/internal/subscribers/g;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/subscribers/g;->a(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->a:Lio/reactivex/internal/subscribers/g;

    invoke-interface {p1}, Lio/reactivex/internal/subscribers/g;->b()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lx2/l;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lx2/l;

    const/4 v1, 0x3

    .line 4
    invoke-interface {v0, v1}, Lx2/k;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iput v1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->g:I

    .line 6
    iput-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->d:Lx2/o;

    .line 7
    iput-boolean v2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->e:Z

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->a:Lio/reactivex/internal/subscribers/g;

    invoke-interface {p1, p0}, Lio/reactivex/internal/subscribers/g;->c(Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->g:I

    .line 10
    iput-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->d:Lx2/o;

    .line 11
    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->b:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/n;->j(Ll3/d;I)V

    return-void

    .line 12
    :cond_1
    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->b:I

    invoke-static {v0}, Lio/reactivex/internal/util/n;->c(I)Lx2/o;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->d:Lx2/o;

    .line 13
    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->b:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/n;->j(Ll3/d;I)V

    :cond_2
    return-void
.end method

.method public request(J)V
    .locals 3

    .line 1
    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-wide v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->f:J

    add-long/2addr v0, p1

    .line 3
    iget p1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->c:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->f:J

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/d;

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->f:J

    :cond_1
    :goto_0
    return-void
.end method
