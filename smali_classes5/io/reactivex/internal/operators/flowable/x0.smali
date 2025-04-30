.class public final Lio/reactivex/internal/operators/flowable/x0;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/x0$a;
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
.field final c:Lw2/c;
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
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/x0;->c:Lw2/c;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/x0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/x0;->c:Lw2/c;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/x0$a;-><init>(Ll3/c;Lw2/c;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
