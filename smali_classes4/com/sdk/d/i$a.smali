.class public Lcom/sdk/d/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/sdk/d/i;


# direct methods
.method public constructor <init>(Lcom/sdk/d/i;)V
    .locals 1

    iput-object p1, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sdk/d/i;->a()V

    :try_start_0
    iget-object v0, p1, Lcom/sdk/d/i;->c:Lcom/sdk/d/a;

    iget-object v0, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v0, p0, Lcom/sdk/d/i$a;->a:Lcom/sdk/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sdk/d/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/i$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Lcom/sdk/d/i;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sdk/d/i;->b()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/sdk/d/i$a;->a:Lcom/sdk/d/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    invoke-virtual {v0}, Lcom/sdk/d/i;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/i$a;->a:Lcom/sdk/d/a;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sdk/d/i$a;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sdk/d/i$a;->b:Lcom/sdk/d/a;

    .line 1
    :goto_0
    iget-object v2, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    iget-object v0, v0, Lcom/sdk/d/i;->c:Lcom/sdk/d/a;

    iget-object v2, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sdk/d/a;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 2
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/sdk/d/i$a;->a:Lcom/sdk/d/a;

    if-nez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/sdk/d/a;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/sdk/d/i$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    invoke-virtual {v0}, Lcom/sdk/d/i;->b()V

    return-object v1

    :cond_4
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    invoke-virtual {v1}, Lcom/sdk/d/i;->b()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public remove()V
    .locals 4

    iget-object v0, p0, Lcom/sdk/d/i$a;->b:Lcom/sdk/d/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    invoke-virtual {v0}, Lcom/sdk/d/i;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/i$a;->b:Lcom/sdk/d/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sdk/d/i$a;->b:Lcom/sdk/d/a;

    iget-object v1, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    iget-object v1, v1, Lcom/sdk/d/i;->c:Lcom/sdk/d/a;

    :cond_0
    iget-object v2, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    invoke-virtual {v0, v1, v2}, Lcom/sdk/d/i;->a(Lcom/sdk/d/a;Lcom/sdk/d/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    invoke-virtual {v0}, Lcom/sdk/d/i;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sdk/d/i$a;->d:Lcom/sdk/d/i;

    invoke-virtual {v1}, Lcom/sdk/d/i;->b()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method
