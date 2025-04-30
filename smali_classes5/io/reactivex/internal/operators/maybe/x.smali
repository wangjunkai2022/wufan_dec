.class public final Lio/reactivex/internal/operators/maybe/x;
.super Lio/reactivex/i0;
.source "MaybeIsEmptySingle.java"

# interfaces
.implements Lx2/f;
.implements Lx2/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/x$a;
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
        "Lx2/f<",
        "TT;>;",
        "Lx2/c<",
        "Ljava/lang/Boolean;",
        ">;"
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


# direct methods
.method public constructor <init>(Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/x;->a:Lio/reactivex/w;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 2
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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/x;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/x$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/x$a;-><init>(Lio/reactivex/l0;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void
.end method

.method public c()Lio/reactivex/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/q<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/w;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/x;->a:Lio/reactivex/w;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/maybe/w;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/x;->a:Lio/reactivex/w;

    return-object v0
.end method
