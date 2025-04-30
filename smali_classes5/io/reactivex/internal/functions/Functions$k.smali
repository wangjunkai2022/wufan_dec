.class final Lio/reactivex/internal/functions/Functions$k;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lw2/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw2/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lw2/e;


# direct methods
.method constructor <init>(Lw2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$k;->a:Lw2/e;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/reactivex/internal/functions/Functions$k;->a:Lw2/e;

    invoke-interface {p1}, Lw2/e;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
