.class public final Lio/reactivex/internal/operators/maybe/f0;
.super Lio/reactivex/i0;
.source "MaybeToSingle.java"

# interfaces
.implements Lx2/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;",
        "Lx2/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/f0;->a:Lio/reactivex/w;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/f0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/f0;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/f0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/f0;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/f0$a;-><init>(Lio/reactivex/l0;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void
.end method

.method public source()Lio/reactivex/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/f0;->a:Lio/reactivex/w;

    return-object v0
.end method
