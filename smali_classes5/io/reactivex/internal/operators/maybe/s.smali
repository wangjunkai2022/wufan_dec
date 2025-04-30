.class public final Lio/reactivex/internal/operators/maybe/s;
.super Lio/reactivex/q;
.source "MaybeFromSingle.java"

# interfaces
.implements Lx2/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;",
        "Lx2/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/s;->a:Lio/reactivex/o0;

    return-void
.end method


# virtual methods
.method protected o1(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s;->a:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/maybe/s$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/s$a;-><init>(Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method

.method public source()Lio/reactivex/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/s;->a:Lio/reactivex/o0;

    return-object v0
.end method
