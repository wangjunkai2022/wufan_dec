.class public final Lio/reactivex/internal/operators/completable/z;
.super Lio/reactivex/i0;
.source "CompletableToSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/g;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/z;->a:Lio/reactivex/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/z;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/z;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/z;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/z$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/z$a;-><init>(Lio/reactivex/internal/operators/completable/z;Lio/reactivex/l0;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    return-void
.end method
