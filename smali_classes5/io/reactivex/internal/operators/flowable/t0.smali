.class public final Lio/reactivex/internal/operators/flowable/t0;
.super Lio/reactivex/q;
.source "FlowableReduceMaybe.java"

# interfaces
.implements Lx2/h;
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;",
        "Lx2/h<",
        "TT;>;",
        "Lx2/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/t0;->a:Lio/reactivex/j;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/t0;->b:Lw2/c;

    return-void
.end method


# virtual methods
.method public d()Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReduce;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/t0;->a:Lio/reactivex/j;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/t0;->b:Lw2/c;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableReduce;-><init>(Lio/reactivex/j;Lw2/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method protected o1(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t0;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/t0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/t0;->b:Lw2/c;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/t0$a;-><init>(Lio/reactivex/t;Lw2/c;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method

.method public source()Ll3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll3/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t0;->a:Lio/reactivex/j;

    return-object v0
.end method
