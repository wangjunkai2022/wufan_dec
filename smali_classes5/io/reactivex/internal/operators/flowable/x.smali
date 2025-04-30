.class public final Lio/reactivex/internal/operators/flowable/x;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/x$a;,
        Lio/reactivex/internal/operators/flowable/x$b;
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
.field final c:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lw2/a;

.field final f:Lw2/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/g;Lw2/g;Lw2/a;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/x;->c:Lw2/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/x;->d:Lw2/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/x;->e:Lw2/a;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/x;->f:Lw2/a;

    return-void
.end method


# virtual methods
.method protected h6(Ll3/c;)V
    .locals 8
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

    new-instance v7, Lio/reactivex/internal/operators/flowable/x$a;

    move-object v2, p1

    check-cast v2, Lx2/a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/x;->c:Lw2/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/x;->d:Lw2/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/x;->e:Lw2/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/x;->f:Lw2/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/x$a;-><init>(Lx2/a;Lw2/g;Lw2/g;Lw2/a;Lw2/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/x$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/x;->c:Lw2/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/x;->d:Lw2/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/x;->e:Lw2/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/x;->f:Lw2/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/x$b;-><init>(Ll3/c;Lw2/g;Lw2/g;Lw2/a;Lw2/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method
