.class public Lcom/sdk/d/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/sdk/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/h<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdk/d/a;->a:Z

    invoke-virtual {p0, p1}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/sdk/d/b;
    .locals 1

    iget-object v0, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/h;

    iget-object v0, v0, Lcom/sdk/d/h;->a:Lcom/sdk/d/b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/h;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/sdk/d/h;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sdk/d/h;

    iput-object p1, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/h;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sdk/d/a;->a:Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sdk/d/h;

    sget-object v1, Lcom/sdk/d/b;->d:Lcom/sdk/d/b;

    invoke-direct {v0, v1, p1}, Lcom/sdk/d/h;-><init>(Lcom/sdk/d/b;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/h;

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/sdk/d/a;->a:Z

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/sdk/d/h;->b:Ljava/lang/Object;

    return-object v0
.end method
