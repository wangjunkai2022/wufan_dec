.class public final Lio/reactivex/internal/operators/single/t;
.super Lio/reactivex/i0;
.source "SingleNever.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/i0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/i0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/t;

    invoke-direct {v0}, Lio/reactivex/internal/operators/single/t;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/single/t;->a:Lio/reactivex/i0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/b;)V

    return-void
.end method
