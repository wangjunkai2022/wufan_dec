.class public final Lio/reactivex/internal/operators/observable/b0;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lw2/a;


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lw2/g;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/b0;->b:Lw2/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/b0;->c:Lw2/a;

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/observers/g;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/b0;->b:Lw2/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/b0;->c:Lw2/a;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/observers/g;-><init>(Lio/reactivex/g0;Lw2/g;Lw2/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
