.class public final Lio/reactivex/internal/operators/maybe/d0;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeOnErrorReturn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/d0;->b:Lw2/o;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/d0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/d0;->b:Lw2/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/d0$a;-><init>(Lio/reactivex/t;Lw2/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void
.end method
