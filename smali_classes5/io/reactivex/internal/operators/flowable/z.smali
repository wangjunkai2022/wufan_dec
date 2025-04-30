.class public final Lio/reactivex/internal/operators/flowable/z;
.super Lio/reactivex/q;
.source "FlowableElementAtMaybe.java"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
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

.field final b:J


# direct methods
.method public constructor <init>(Lio/reactivex/j;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/z;->a:Lio/reactivex/j;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/z;->b:J

    return-void
.end method


# virtual methods
.method public d()Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/flowable/FlowableElementAt;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/z;->a:Lio/reactivex/j;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/z;->b:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableElementAt;-><init>(Lio/reactivex/j;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method protected o1(Lio/reactivex/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/z;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/z$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/z;->b:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/z$a;-><init>(Lio/reactivex/t;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->g6(Lio/reactivex/o;)V

    return-void
.end method
