.class public final Lio/reactivex/internal/operators/observable/d0;
.super Lio/reactivex/q;
.source "ObservableElementAtMaybe.java"

# interfaces
.implements Lx2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;",
        "Lx2/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J


# direct methods
.method public constructor <init>(Lio/reactivex/e0;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d0;->a:Lio/reactivex/e0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/d0;->b:J

    return-void
.end method


# virtual methods
.method public b()Lio/reactivex/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/c0;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/d0;->a:Lio/reactivex/e0;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/d0;->b:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/c0;-><init>(Lio/reactivex/e0;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public o1(Lio/reactivex/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/d0$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/d0;->b:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/d0$a;-><init>(Lio/reactivex/t;J)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
