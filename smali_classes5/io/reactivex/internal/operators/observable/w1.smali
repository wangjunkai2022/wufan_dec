.class public final Lio/reactivex/internal/operators/observable/w1;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/w1$a;,
        Lio/reactivex/internal/operators/observable/w1$b;,
        Lio/reactivex/internal/operators/observable/w1$d;,
        Lio/reactivex/internal/operators/observable/w1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/z<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TB;+",
            "Lio/reactivex/e0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;Lw2/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/e0<",
            "TB;>;",
            "Lw2/o<",
            "-TB;+",
            "Lio/reactivex/e0<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/w1;->b:Lio/reactivex/e0;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/w1;->c:Lw2/o;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/w1;->d:I

    return-void
.end method


# virtual methods
.method public F5(Lio/reactivex/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/w1$c;

    new-instance v2, Lio/reactivex/observers/l;

    invoke-direct {v2, p1}, Lio/reactivex/observers/l;-><init>(Lio/reactivex/g0;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w1;->b:Lio/reactivex/e0;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/w1;->c:Lw2/o;

    iget v4, p0, Lio/reactivex/internal/operators/observable/w1;->d:I

    invoke-direct {v1, v2, p1, v3, v4}, Lio/reactivex/internal/operators/observable/w1$c;-><init>(Lio/reactivex/g0;Lio/reactivex/e0;Lw2/o;I)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method
