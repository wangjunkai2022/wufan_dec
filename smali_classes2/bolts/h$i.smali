.class Lbolts/h$i;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h;->G()Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "TTResult;",
        "Lbolts/h<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/h;


# direct methods
.method constructor <init>(Lbolts/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$i;->a:Lbolts/h;

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
    invoke-virtual {p0, p1}, Lbolts/h$i;->b(Lbolts/h;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "TTResult;>;)",
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
    invoke-virtual {p1}, Lbolts/h;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lbolts/h;->e()Lbolts/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lbolts/h;->A()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lbolts/h;->y(Ljava/lang/Exception;)Lbolts/h;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method
