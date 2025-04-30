.class public final Lio/reactivex/internal/operators/maybe/b0;
.super Lio/reactivex/q;
.source "MaybeNever.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/internal/operators/maybe/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/b0;

    invoke-direct {v0}, Lio/reactivex/internal/operators/maybe/b0;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/maybe/b0;->a:Lio/reactivex/internal/operators/maybe/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected o1(Lio/reactivex/t;)V
    .locals 1
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
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/b;)V

    return-void
.end method
