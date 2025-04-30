.class final Lio/reactivex/internal/operators/observable/ObservableReplay$d;
.super Lio/reactivex/observables/a;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observables/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/observables/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/observables/a;Lio/reactivex/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/a<",
            "TT;>;",
            "Lio/reactivex/z<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/observables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$d;->a:Lio/reactivex/observables/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$d;->b:Lio/reactivex/z;

    return-void
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$d;->b:Lio/reactivex/z;

    invoke-virtual {v0, p1}, Lio/reactivex/z;->a(Lio/reactivex/g0;)V

    return-void
.end method

.method public j8(Lw2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$d;->a:Lio/reactivex/observables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/observables/a;->j8(Lw2/g;)V

    return-void
.end method
