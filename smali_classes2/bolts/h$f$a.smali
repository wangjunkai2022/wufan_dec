.class Lbolts/h$f$a;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/h$f;


# direct methods
.method constructor <init>(Lbolts/h$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$f$a;->a:Lbolts/h$f;

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
    invoke-virtual {p0, p1}, Lbolts/h$f$a;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/h$f$a;->a:Lbolts/h$f;

    iget-object v0, v0, Lbolts/h$f;->a:Lbolts/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lbolts/h$f$a;->a:Lbolts/h$f;

    iget-object p1, p1, Lbolts/h$f;->b:Lbolts/i;

    invoke-virtual {p1}, Lbolts/i;->b()V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lbolts/h$f$a;->a:Lbolts/h$f;

    iget-object p1, p1, Lbolts/h$f;->b:Lbolts/i;

    invoke-virtual {p1}, Lbolts/i;->b()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lbolts/h;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lbolts/h$f$a;->a:Lbolts/h$f;

    iget-object v0, v0, Lbolts/h$f;->b:Lbolts/i;

    invoke-virtual {p1}, Lbolts/h;->A()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/i;->c(Ljava/lang/Exception;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lbolts/h$f$a;->a:Lbolts/h$f;

    iget-object v0, v0, Lbolts/h$f;->b:Lbolts/i;

    invoke-virtual {p1}, Lbolts/h;->B()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/i;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method
