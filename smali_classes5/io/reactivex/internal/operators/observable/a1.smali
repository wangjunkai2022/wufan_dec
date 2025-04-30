.class public final Lio/reactivex/internal/operators/observable/a1;
.super Lio/reactivex/z;
.source "ObservableNever.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/z<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/a1;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/a1;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/a1;->a:Lio/reactivex/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    return-void
.end method
