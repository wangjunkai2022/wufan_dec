.class public final Lio/reactivex/internal/operators/observable/e;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lw2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lw2/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lw2/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/e;->b:Lw2/r;

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/e$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/e;->b:Lw2/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/e$a;-><init>(Lio/reactivex/g0;Lw2/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
