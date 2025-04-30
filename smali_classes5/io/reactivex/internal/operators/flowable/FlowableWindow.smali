.class public final Lio/reactivex/internal/operators/flowable/FlowableWindow;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:J

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->d:J

    .line 4
    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->e:I

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->d:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;-><init>(Ll3/c;JI)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->d:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;-><init>(Ll3/c;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->c:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->d:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;-><init>(Ll3/c;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method
