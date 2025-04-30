.class public final Lio/reactivex/internal/operators/single/SingleToObservable;
.super Lio/reactivex/z;
.source "SingleToObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleToObservable$SingleToObservableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleToObservable;->a:Lio/reactivex/o0;

    return-void
.end method

.method public static f8(Lio/reactivex/g0;)Lio/reactivex/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/g0<",
            "-TT;>;)",
            "Lio/reactivex/l0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/SingleToObservable$SingleToObservableObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/SingleToObservable$SingleToObservableObserver;-><init>(Lio/reactivex/g0;)V

    return-object v0
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleToObservable;->a:Lio/reactivex/o0;

    invoke-static {p1}, Lio/reactivex/internal/operators/single/SingleToObservable;->f8(Lio/reactivex/g0;)Lio/reactivex/l0;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method
