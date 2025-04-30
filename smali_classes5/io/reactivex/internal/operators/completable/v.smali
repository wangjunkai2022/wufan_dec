.class public final Lio/reactivex/internal/operators/completable/v;
.super Lio/reactivex/a;
.source "CompletablePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/v$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

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
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lw2/a;

.field final e:Lw2/a;

.field final f:Lw2/a;

.field final g:Lw2/a;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "Lw2/a;",
            "Lw2/a;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/v;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/v;->b:Lw2/g;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/v;->c:Lw2/g;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/v;->d:Lw2/a;

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/completable/v;->e:Lw2/a;

    .line 7
    iput-object p6, p0, Lio/reactivex/internal/operators/completable/v;->f:Lw2/a;

    .line 8
    iput-object p7, p0, Lio/reactivex/internal/operators/completable/v;->g:Lw2/a;

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/v;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/v$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/v$a;-><init>(Lio/reactivex/internal/operators/completable/v;Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    return-void
.end method
