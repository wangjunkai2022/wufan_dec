.class public final Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;
.super Lio/reactivex/z;
.source "ObservableSequenceEqual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$a;,
        Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;Lw2/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "+TT;>;",
            "Lio/reactivex/e0<",
            "+TT;>;",
            "Lw2/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;->a:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;->b:Lio/reactivex/e0;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;->c:Lw2/d;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;->d:I

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;->a:Lio/reactivex/e0;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;->b:Lio/reactivex/e0;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;->c:Lw2/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;-><init>(Lio/reactivex/g0;ILio/reactivex/e0;Lio/reactivex/e0;Lw2/d;)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->d()V

    return-void
.end method
