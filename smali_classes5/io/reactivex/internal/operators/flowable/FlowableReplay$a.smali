.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$a;
.super Lio/reactivex/flowables/a;
.source "FlowableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lio/reactivex/flowables/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/flowables/a;Lio/reactivex/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/flowables/a<",
            "TT;>;",
            "Lio/reactivex/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/flowables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b:Lio/reactivex/flowables/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c:Lio/reactivex/j;

    return-void
.end method


# virtual methods
.method public N8(Lw2/g;)V
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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b:Lio/reactivex/flowables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/flowables/a;->N8(Lw2/g;)V

    return-void
.end method

.method protected h6(Ll3/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c:Lio/reactivex/j;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->c(Ll3/c;)V

    return-void
.end method
