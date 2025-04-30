.class public final Lio/reactivex/internal/operators/completable/u;
.super Lio/reactivex/a;
.source "CompletableOnErrorComplete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/u$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lw2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lw2/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Lw2/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/u;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/u;->b:Lw2/r;

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/u;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/u$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/u$a;-><init>(Lio/reactivex/internal/operators/completable/u;Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    return-void
.end method
