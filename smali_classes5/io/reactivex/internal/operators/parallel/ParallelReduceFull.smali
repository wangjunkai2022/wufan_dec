.class public final Lio/reactivex/internal/operators/parallel/ParallelReduceFull;
.super Lio/reactivex/j;
.source "ParallelReduceFull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;,
        Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Lw2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "+TT;>;",
            "Lw2/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull;->b:Lio/reactivex/parallel/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull;->c:Lw2/c;

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
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull;->b:Lio/reactivex/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/parallel/a;->F()I

    move-result v1

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull;->c:Lw2/c;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;-><init>(Ll3/c;ILw2/c;)V

    .line 2
    invoke-interface {p1, v0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull;->b:Lio/reactivex/parallel/a;

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber;->k:[Lio/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber;

    invoke-virtual {p1, v0}, Lio/reactivex/parallel/a;->Q([Ll3/c;)V

    return-void
.end method
