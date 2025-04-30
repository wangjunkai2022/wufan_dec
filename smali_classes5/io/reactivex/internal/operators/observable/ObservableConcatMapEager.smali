.class public final Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableConcatMapEager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lw2/o;Lio/reactivex/internal/util/ErrorMode;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;->b:Lw2/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;->d:I

    .line 5
    iput p5, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;->e:I

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;->b:Lw2/o;

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;->d:I

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;->e:I

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;->c:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;-><init>(Lio/reactivex/g0;Lw2/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-interface {v0, v7}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
