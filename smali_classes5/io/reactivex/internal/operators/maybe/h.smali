.class public final Lio/reactivex/internal/operators/maybe/h;
.super Lio/reactivex/q;
.source "MaybeEmpty.java"

# interfaces
.implements Lx2/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/q<",
        "Ljava/lang/Object;",
        ">;",
        "Lx2/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/internal/operators/maybe/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/h;

    invoke-direct {v0}, Lio/reactivex/internal/operators/maybe/h;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/maybe/h;->a:Lio/reactivex/internal/operators/maybe/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected o1(Lio/reactivex/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/t;)V

    return-void
.end method
