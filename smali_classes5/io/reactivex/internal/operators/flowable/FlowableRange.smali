.class public final Lio/reactivex/internal/operators/flowable/FlowableRange;
.super Lio/reactivex/j;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;,
        Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/j<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->b:I

    add-int/2addr p1, p2

    .line 3
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->c:I

    return-void
.end method


# virtual methods
.method public h6(Ll3/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lx2/a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;

    move-object v1, p1

    check-cast v1, Lx2/a;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->b:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->c:I

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;-><init>(Lx2/a;II)V

    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->b:I

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->c:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;-><init>(Ll3/c;II)V

    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :goto_0
    return-void
.end method
