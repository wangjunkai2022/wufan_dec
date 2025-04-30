.class final Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableCache.java"

# interfaces
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final h:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicLong;

.field d:[Ljava/lang/Object;

.field e:I

.field f:I

.field g:J


# direct methods
.method constructor <init>(Ll3/c;Lio/reactivex/internal/operators/flowable/FlowableCache$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->a:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->a:Ll3/c;

    .line 3
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iget-wide v3, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->g:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 5
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {v11}, Lio/reactivex/internal/util/h;->c()I

    move-result v11

    if-eqz v11, :cond_a

    .line 7
    iget-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->d:[Ljava/lang/Object;

    if-nez v12, :cond_2

    .line 8
    iget-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {v12}, Lio/reactivex/internal/util/h;->b()[Ljava/lang/Object;

    move-result-object v12

    .line 9
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->d:[Ljava/lang/Object;

    .line 10
    :cond_2
    array-length v13, v12

    sub-int/2addr v13, v5

    .line 11
    iget v14, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->f:I

    .line 12
    iget v15, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->e:I

    :goto_1
    if-ge v14, v11, :cond_6

    cmp-long v16, v3, v7

    if-eqz v16, :cond_6

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    cmp-long v18, v16, v9

    if-nez v18, :cond_3

    return-void

    :cond_3
    if-ne v15, v13, :cond_4

    .line 14
    aget-object v12, v12, v13

    check-cast v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 15
    :cond_4
    aget-object v5, v12, v15

    .line 16
    invoke-static {v5, v1}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Ll3/c;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    :cond_5
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v17, 0x1

    add-long v3, v3, v17

    const/4 v5, 0x1

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v17

    cmp-long v5, v17, v9

    if-nez v5, :cond_7

    return-void

    :cond_7
    cmp-long v5, v7, v3

    if-nez v5, :cond_9

    .line 18
    aget-object v5, v12, v15

    .line 19
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 20
    invoke-interface {v1}, Ll3/c;->onComplete()V

    return-void

    .line 21
    :cond_8
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 22
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 23
    :cond_9
    iput v14, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->f:I

    .line 24
    iput v15, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->e:I

    .line 25
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->d:[Ljava/lang/Object;

    .line 26
    :cond_a
    iput-wide v3, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->g:J

    neg-int v5, v6

    .line 27
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_b

    return-void

    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->f(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->a()V

    :cond_0
    return-void
.end method
