.class public final Lio/reactivex/internal/operators/observable/a0;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/a0$a;
    }
.end annotation

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
.field final b:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lw2/a;

.field final e:Lw2/a;


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lw2/g;Lw2/g;Lw2/a;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/a0;->b:Lw2/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/a0;->c:Lw2/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/a0;->d:Lw2/a;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/a0;->e:Lw2/a;

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v7, Lio/reactivex/internal/operators/observable/a0$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/a0;->b:Lw2/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/a0;->c:Lw2/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/a0;->d:Lw2/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/a0;->e:Lw2/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/a0$a;-><init>(Lio/reactivex/g0;Lw2/g;Lw2/g;Lw2/a;Lw2/a;)V

    invoke-interface {v0, v7}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
