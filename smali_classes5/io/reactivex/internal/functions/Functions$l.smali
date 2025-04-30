.class public Lio/reactivex/internal/functions/Functions$l;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/g<",
        "Ll3/d;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/internal/functions/Functions$l;->a:I

    return-void
.end method


# virtual methods
.method public a(Ll3/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/internal/functions/Functions$l;->a:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ll3/d;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$l;->a(Ll3/d;)V

    return-void
.end method
