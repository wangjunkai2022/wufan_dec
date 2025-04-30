.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeConditionalSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final d:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lx2/a;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->d:Lx2/a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->a:J

    .line 2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->d:Lx2/a;

    .line 3
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->b:J

    :goto_0
    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    .line 4
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->c:Z

    if-eqz v5, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Lx2/a;->v0(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->c:Z

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {v2}, Ll3/c;->onComplete()V

    return-void
.end method

.method c(J)V
    .locals 12

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->a:J

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->b:J

    .line 3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->d:Lx2/a;

    const-wide/16 v5, 0x0

    :cond_0
    move-wide v7, v5

    :cond_1
    :goto_0
    cmp-long v9, v7, p1

    if-eqz v9, :cond_4

    cmp-long v9, v2, v0

    if-eqz v9, :cond_4

    .line 4
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->c:Z

    if-eqz v9, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Lx2/a;->v0(Ljava/lang/Object;)Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_3

    add-long/2addr v7, v10

    :cond_3
    add-long/2addr v2, v10

    goto :goto_0

    :cond_4
    cmp-long p1, v2, v0

    if-nez p1, :cond_6

    .line 6
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->c:Z

    if-nez p1, :cond_5

    .line 7
    invoke-interface {v4}, Ll3/c;->onComplete()V

    :cond_5
    return-void

    .line 8
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v9, v7, p1

    if-nez v9, :cond_1

    .line 9
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->b:J

    neg-long p1, v7

    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v7, p1, v5

    if-nez v7, :cond_0

    return-void
.end method
