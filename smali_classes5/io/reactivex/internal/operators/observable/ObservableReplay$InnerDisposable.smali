.class final Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25dd165f0e0e7417L


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;Lio/reactivex/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<",
            "TT;>;",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->a:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->b:Lio/reactivex/g0;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->a:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->b(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->d:Z

    return v0
.end method
