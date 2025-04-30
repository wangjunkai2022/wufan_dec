.class public final Lio/reactivex/internal/operators/flowable/f;
.super Lio/reactivex/i0;
.source "FlowableAnySingle.java"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lx2/b<",
        "Ljava/lang/Boolean;",
        ">;"
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

.field final b:Lw2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lw2/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lw2/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f;->a:Lio/reactivex/j;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/f;->b:Lw2/r;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/f$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/f;->b:Lw2/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/f$a;-><init>(Lio/reactivex/l0;Lw2/r;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method

.method public d()Lio/reactivex/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableAny;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/f;->a:Lio/reactivex/j;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/f;->b:Lw2/r;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableAny;-><init>(Lio/reactivex/j;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method
