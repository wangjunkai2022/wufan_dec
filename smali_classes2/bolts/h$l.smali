.class final Lbolts/h$l;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h;->Y(Ljava/util/Collection;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lbolts/i;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lbolts/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lbolts/h$l;->b:Lbolts/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbolts/h;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lbolts/h$l;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/h$l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbolts/h$l;->b:Lbolts/i;

    invoke-virtual {v0, p1}, Lbolts/i;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->A()Ljava/lang/Exception;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
