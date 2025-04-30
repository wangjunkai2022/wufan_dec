.class public abstract Lio/reactivex/observers/a;
.super Ljava/lang/Object;
.source "DefaultObserver.java"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/g0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/observers/a;->a:Lio/reactivex/disposables/b;

    .line 2
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/observers/a;->a:Lio/reactivex/disposables/b;

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2
    .param p1    # Lio/reactivex/disposables/b;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/reactivex/observers/a;->a:Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/f;->e(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/observers/a;->a:Lio/reactivex/disposables/b;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/observers/a;->b()V

    :cond_0
    return-void
.end method
