.class public final Lio/reactivex/internal/operators/flowable/v;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/v$a;,
        Lio/reactivex/internal/operators/flowable/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final d:Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/o;Lw2/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/o<",
            "-TT;TK;>;",
            "Lw2/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/v;->c:Lw2/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/v;->d:Lw2/d;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 4
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
    check-cast p1, Lx2/a;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/v$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/v;->c:Lw2/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/v;->d:Lw2/d;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/v$a;-><init>(Lx2/a;Lw2/o;Lw2/d;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/v$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/v;->c:Lw2/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/v;->d:Lw2/d;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/v$b;-><init>(Ll3/c;Lw2/o;Lw2/d;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method
