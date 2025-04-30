.class public final Lio/reactivex/internal/operators/single/k;
.super Lio/reactivex/i0;
.source "SingleEquals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Lio/reactivex/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "+TT;>;",
            "Lio/reactivex/o0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/k;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/k;->b:Lio/reactivex/o0;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 11
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
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v7, v0

    const/4 v0, 0x1

    aput-object v1, v7, v0

    .line 2
    new-instance v8, Lio/reactivex/disposables/a;

    invoke-direct {v8}, Lio/reactivex/disposables/a;-><init>()V

    .line 3
    invoke-interface {p1, v8}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 4
    iget-object v9, p0, Lio/reactivex/internal/operators/single/k;->a:Lio/reactivex/o0;

    new-instance v10, Lio/reactivex/internal/operators/single/k$a;

    const/4 v1, 0x0

    move-object v0, v10

    move-object v2, v8

    move-object v3, v7

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/single/k$a;-><init>(ILio/reactivex/disposables/a;[Ljava/lang/Object;Lio/reactivex/l0;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v9, v10}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    .line 5
    iget-object v9, p0, Lio/reactivex/internal/operators/single/k;->b:Lio/reactivex/o0;

    new-instance v10, Lio/reactivex/internal/operators/single/k$a;

    const/4 v1, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/single/k$a;-><init>(ILio/reactivex/disposables/a;[Ljava/lang/Object;Lio/reactivex/l0;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v9, v10}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
