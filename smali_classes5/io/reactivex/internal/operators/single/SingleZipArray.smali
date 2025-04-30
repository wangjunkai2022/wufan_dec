.class public final Lio/reactivex/internal/operators/single/SingleZipArray;
.super Lio/reactivex/i0;
.source "SingleZipArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleZipArray$a;,
        Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;,
        Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/o0;Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/o0<",
            "+TT;>;",
            "Lw2/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->a:[Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->b:Lw2/o;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->a:[Lio/reactivex/o0;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    aget-object v0, v0, v2

    new-instance v1, Lio/reactivex/internal/operators/single/s$a;

    new-instance v2, Lio/reactivex/internal/operators/single/SingleZipArray$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/single/SingleZipArray$a;-><init>(Lio/reactivex/internal/operators/single/SingleZipArray;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/s$a;-><init>(Lio/reactivex/l0;Lw2/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void

    .line 4
    :cond_0
    new-instance v3, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->b:Lw2/o;

    invoke-direct {v3, p1, v1, v4}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;-><init>(Lio/reactivex/l0;ILw2/o;)V

    .line 5
    invoke-interface {p1, v3}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/b;)V

    :goto_0
    if-ge v2, v1, :cond_3

    .line 6
    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    aget-object p1, v0, v2

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->b(Ljava/lang/Throwable;I)V

    return-void

    .line 9
    :cond_2
    iget-object v4, v3, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->c:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
