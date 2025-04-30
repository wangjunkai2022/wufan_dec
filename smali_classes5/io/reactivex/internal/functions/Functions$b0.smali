.class final Lio/reactivex/internal/functions/Functions$b0;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lw2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/a;"
    }
.end annotation


# instance fields
.field final a:Lw2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/g<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw2/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$b0;->a:Lw2/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$b0;->a:Lw2/g;

    invoke-static {}, Lio/reactivex/y;->a()Lio/reactivex/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lw2/g;->accept(Ljava/lang/Object;)V

    return-void
.end method
