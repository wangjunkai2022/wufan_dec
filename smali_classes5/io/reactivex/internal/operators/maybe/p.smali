.class public final Lio/reactivex/internal/operators/maybe/p;
.super Lio/reactivex/q;
.source "MaybeFromCompletable.java"

# interfaces
.implements Lx2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;",
        "Lx2/e;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/p;->a:Lio/reactivex/g;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/p;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/maybe/p$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/p$a;-><init>(Lio/reactivex/t;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    return-void
.end method

.method public source()Lio/reactivex/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/p;->a:Lio/reactivex/g;

    return-object v0
.end method
