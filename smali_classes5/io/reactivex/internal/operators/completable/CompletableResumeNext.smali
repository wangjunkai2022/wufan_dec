.class public final Lio/reactivex/internal/operators/completable/CompletableResumeNext;
.super Lio/reactivex/a;
.source "CompletableResumeNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNextObserver;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lw2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext;->b:Lw2/o;

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNextObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext;->b:Lw2/o;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNextObserver;-><init>(Lio/reactivex/d;Lw2/o;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext;->a:Lio/reactivex/g;

    invoke-interface {p1, v0}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    return-void
.end method
