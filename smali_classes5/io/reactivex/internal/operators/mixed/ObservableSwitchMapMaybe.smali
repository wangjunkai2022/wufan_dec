.class public final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;
.super Lio/reactivex/z;
.source "ObservableSwitchMapMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
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
            "Lio/reactivex/w<",
            "+TR;>;>;"
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
            "Lio/reactivex/w<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;->a:Lio/reactivex/z;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;->b:Lw2/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;->c:Z

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;->a:Lio/reactivex/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;->b:Lw2/o;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/mixed/a;->b(Ljava/lang/Object;Lw2/o;Lio/reactivex/g0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;->a:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;->b:Lw2/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;-><init>(Lio/reactivex/g0;Lw2/o;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->a(Lio/reactivex/g0;)V

    :cond_0
    return-void
.end method
