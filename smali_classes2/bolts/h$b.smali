.class Lbolts/h$b;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h;->t(Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/i;

.field final synthetic b:Lbolts/g;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lbolts/c;

.field final synthetic e:Lbolts/h;


# direct methods
.method constructor <init>(Lbolts/h;Lbolts/i;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$b;->e:Lbolts/h;

    iput-object p2, p0, Lbolts/h$b;->a:Lbolts/i;

    iput-object p3, p0, Lbolts/h$b;->b:Lbolts/g;

    iput-object p4, p0, Lbolts/h$b;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lbolts/h$b;->d:Lbolts/c;

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
    invoke-virtual {p0, p1}, Lbolts/h$b;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/h$b;->a:Lbolts/i;

    iget-object v1, p0, Lbolts/h$b;->b:Lbolts/g;

    iget-object v2, p0, Lbolts/h$b;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lbolts/h$b;->d:Lbolts/c;

    invoke-static {v0, v1, p1, v2, v3}, Lbolts/h;->b(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V

    const/4 p1, 0x0

    return-object p1
.end method
