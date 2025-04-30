.class public final Lio/reactivex/internal/operators/flowable/FlowableDoFinally;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDoFinally.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallyConditionalSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;
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
.field final c:Lw2/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally;->c:Lw2/a;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lx2/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallyConditionalSubscriber;

    check-cast p1, Lx2/a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally;->c:Lw2/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallyConditionalSubscriber;-><init>(Lx2/a;Lw2/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoFinally;->c:Lw2/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber;-><init>(Ll3/c;Lw2/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method
