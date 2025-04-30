.class public final Lio/reactivex/internal/operators/completable/t;
.super Lio/reactivex/a;
.source "CompletableNever.java"


# static fields
.field public static final a:Lio/reactivex/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/t;

    invoke-direct {v0}, Lio/reactivex/internal/operators/completable/t;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/completable/t;->a:Lio/reactivex/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    return-void
.end method
