.class public final Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableSkipLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/h0;

.field final f:I

.field final g:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->e:Lio/reactivex/h0;

    .line 5
    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->f:I

    .line 6
    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->g:Z

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v9, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->e:Lio/reactivex/h0;

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->f:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed;->g:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber;-><init>(Ll3/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V

    invoke-virtual {v0, v9}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
