.class public final Lio/reactivex/internal/operators/maybe/l;
.super Lio/reactivex/q;
.source "MaybeFilterSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
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

.field final b:Lw2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Lw2/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Lw2/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/l;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/l;->b:Lw2/r;

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/l;->a:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/maybe/l$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/l;->b:Lw2/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/l$a;-><init>(Lio/reactivex/t;Lw2/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
