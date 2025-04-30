.class public final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;
.super Lio/reactivex/a;
.source "ObservableSwitchMapCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lw2/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->a:Lio/reactivex/z;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->b:Lw2/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->c:Z

    return-void
.end method


# virtual methods
.method protected F0(Lio/reactivex/d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->a:Lio/reactivex/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->b:Lw2/o;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/mixed/a;->a(Ljava/lang/Object;Lw2/o;Lio/reactivex/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->a:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->b:Lw2/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$SwitchMapCompletableObserver;-><init>(Lio/reactivex/d;Lw2/o;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->a(Lio/reactivex/g0;)V

    :cond_0
    return-void
.end method
