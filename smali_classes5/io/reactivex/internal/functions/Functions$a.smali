.class final Lio/reactivex/internal/functions/Functions$a;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
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
        "Ljava/lang/Object;",
        "Lw2/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lw2/a;


# direct methods
.method constructor <init>(Lw2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$a;->a:Lw2/a;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/reactivex/internal/functions/Functions$a;->a:Lw2/a;

    invoke-interface {p1}, Lw2/a;->run()V

    return-void
.end method
