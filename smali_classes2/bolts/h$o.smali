.class Lbolts/h$o;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h;->l(Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "Ljava/lang/Void;",
        "Lbolts/h<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/c;

.field final synthetic b:Ljava/util/concurrent/Callable;

.field final synthetic c:Lbolts/g;

.field final synthetic d:Ljava/util/concurrent/Executor;

.field final synthetic e:Lbolts/f;

.field final synthetic f:Lbolts/h;


# direct methods
.method constructor <init>(Lbolts/h;Lbolts/c;Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$o;->f:Lbolts/h;

    iput-object p2, p0, Lbolts/h$o;->a:Lbolts/c;

    iput-object p3, p0, Lbolts/h$o;->b:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lbolts/h$o;->c:Lbolts/g;

    iput-object p5, p0, Lbolts/h$o;->d:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lbolts/h$o;->e:Lbolts/f;

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
    invoke-virtual {p0, p1}, Lbolts/h$o;->b(Lbolts/h;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lbolts/h$o;->a:Lbolts/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbolts/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lbolts/h;->e()Lbolts/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lbolts/h$o;->b:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-static {v0}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    move-result-object p1

    iget-object v0, p0, Lbolts/h$o;->c:Lbolts/g;

    iget-object v1, p0, Lbolts/h$o;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lbolts/h;->N(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1

    iget-object v0, p0, Lbolts/h$o;->e:Lbolts/f;

    invoke-virtual {v0}, Lbolts/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/g;

    iget-object v1, p0, Lbolts/h$o;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lbolts/h;->N(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {v0}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method
