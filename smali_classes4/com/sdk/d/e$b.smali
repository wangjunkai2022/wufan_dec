.class public Lcom/sdk/d/e$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public synthetic constructor <init>(Lcom/sdk/d/c;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sdk/d/e$a;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, v0, Lcom/sdk/d/e$a;->a:Lcom/sdk/d/e;

    iget-object v0, v0, Lcom/sdk/d/e$a;->b:[Ljava/lang/Object;

    check-cast p1, Lcom/sdk/a/e;

    .line 1
    iget-object v4, p1, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    sget-object v5, Lcom/sdk/a/e$a;->e:Lcom/sdk/a/e$a;

    if-eq v4, v5, :cond_a

    if-eqz v0, :cond_a

    array-length v4, v0

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_8

    const/4 v4, 0x3

    if-eq v1, v3, :cond_6

    if-eq v1, v4, :cond_4

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    goto/16 :goto_0

    :cond_2
    array-length v1, v0

    if-eq v1, v3, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/sdk/a/e$a;->f:Lcom/sdk/a/e$a;

    iput-object v1, p1, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    iget-object v1, p1, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    aget-object v0, v0, v2

    check-cast v0, Lcom/sdk/a/i;

    iget-object p1, p1, Lcom/sdk/a/e;->y:Lcom/sdk/a/h;

    .line 2
    iget-object p1, p1, Lcom/sdk/a/h;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v0, p1}, Lcom/sdk/e/b;->a(Lcom/sdk/a/i;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    array-length v1, v0

    if-eq v1, v4, :cond_5

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/sdk/a/e$a;->d:Lcom/sdk/a/e$a;

    iput-object v1, p1, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    iget-object p1, p1, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lcom/sdk/g/a;

    .line 4
    iget-object p1, p1, Lcom/sdk/g/a;->b:Lcom/sdk/g/b;

    const v2, 0x49bb2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v3, p1, Lcom/sdk/g/b;->g:Lcom/sdk/e/a;

    if-eqz v3, :cond_a

    invoke-interface {v3, v1, v2, v0}, Lcom/sdk/e/a;->a(IILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sdk/g/b;->g:Lcom/sdk/e/a;

    goto :goto_0

    .line 6
    :cond_6
    array-length v1, v0

    if-eq v1, v4, :cond_7

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/sdk/a/e$a;->c:Lcom/sdk/a/e$a;

    iput-object v1, p1, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    iget-object v4, p1, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-boolean v9, p1, Lcom/sdk/a/e;->r:Z

    invoke-virtual/range {v4 .. v9}, Lcom/sdk/e/b;->a(JJZ)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/sdk/a/e$a;->b:Lcom/sdk/a/e$a;

    iput-object v0, p1, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    iget-object p1, p1, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    invoke-virtual {p1}, Lcom/sdk/e/b;->b()V

    goto :goto_0

    .line 7
    :cond_9
    iget-object p1, v0, Lcom/sdk/d/e$a;->a:Lcom/sdk/d/e;

    iget-object v0, v0, Lcom/sdk/d/e$a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/sdk/d/e;->c(Lcom/sdk/d/e;Ljava/lang/Object;)V

    :cond_a
    :goto_0
    return-void
.end method
