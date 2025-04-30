.class public final Lio/reactivex/internal/operators/maybe/e0;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/e0$a;
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
.field final b:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lw2/a;

.field final f:Lw2/a;

.field final g:Lw2/a;


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lw2/g;Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "Lw2/a;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/e0;->b:Lw2/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/e0;->c:Lw2/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/e0;->d:Lw2/g;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/maybe/e0;->e:Lw2/a;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/maybe/e0;->f:Lw2/a;

    .line 7
    iput-object p7, p0, Lio/reactivex/internal/operators/maybe/e0;->g:Lw2/a;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/e0$a;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/maybe/e0$a;-><init>(Lio/reactivex/t;Lio/reactivex/internal/operators/maybe/e0;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void
.end method
