.class public Lcom/mob/commons/cc/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/y$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/mob/commons/cc/r;

.field private d:I

.field private e:I

.field private f:Lcom/mob/commons/cc/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/x;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/mob/commons/cc/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/commons/cc/y;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/mob/commons/cc/y;->b:I

    .line 4
    new-instance p1, Lcom/mob/commons/cc/v;

    invoke-direct {p1, p3, p4}, Lcom/mob/commons/cc/v;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/mob/commons/cc/y;->f:Lcom/mob/commons/cc/v;

    .line 5
    iput p5, p0, Lcom/mob/commons/cc/y;->d:I

    .line 6
    iput p6, p0, Lcom/mob/commons/cc/y;->e:I

    .line 7
    iput-object p7, p0, Lcom/mob/commons/cc/y;->c:Lcom/mob/commons/cc/r;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/r;)Lcom/mob/commons/cc/y;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/x;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/mob/commons/cc/r;",
            ")",
            "Lcom/mob/commons/cc/y;"
        }
    .end annotation

    .line 58
    new-instance v8, Lcom/mob/commons/cc/y$1;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mob/commons/cc/y$1;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/r;)V

    return-object v8
.end method

.method private a(Ljava/lang/String;ILjava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/x;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 5
    new-instance v1, Lcom/mob/commons/cc/x;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 6
    iput-object p1, v1, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 7
    iput p2, v1, Lcom/mob/commons/cc/x;->c:I

    .line 8
    iput v0, v1, Lcom/mob/commons/cc/x;->i:I

    .line 9
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    new-instance v1, Lcom/mob/commons/cc/x;

    invoke-direct {v1, v0}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 11
    iput-object p1, v1, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 12
    iput p2, v1, Lcom/mob/commons/cc/x;->c:I

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mob/commons/cc/x;->h:Ljava/lang/String;

    .line 14
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget v1, p0, Lcom/mob/commons/cc/y;->b:I

    add-int/lit8 v2, v1, -0x1

    const/16 v5, 0x1c

    if-ge p4, v2, :cond_1

    .line 16
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/mob/commons/cc/y;->a(Ljava/lang/String;ILjava/util/ArrayList;I)V

    .line 17
    new-instance v0, Lcom/mob/commons/cc/x;

    invoke-direct {v0, v5}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 18
    iput-object p1, v0, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 19
    iput p2, v0, Lcom/mob/commons/cc/x;->c:I

    .line 20
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 21
    new-instance v0, Lcom/mob/commons/cc/x;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 22
    iput-object p1, v0, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 23
    iput p2, v0, Lcom/mob/commons/cc/x;->c:I

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/cc/x;->h:Ljava/lang/String;

    .line 25
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/mob/commons/cc/y;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 27
    new-instance v0, Lcom/mob/commons/cc/x;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 28
    iput-object p1, v0, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 29
    iput p2, v0, Lcom/mob/commons/cc/x;->c:I

    .line 30
    iput-object p0, v0, Lcom/mob/commons/cc/x;->q:Ljava/lang/Object;

    .line 31
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/mob/commons/cc/x;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 33
    iput-object p1, v0, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 34
    iput p2, v0, Lcom/mob/commons/cc/x;->c:I

    .line 35
    iget v1, p0, Lcom/mob/commons/cc/y;->b:I

    iput v1, v0, Lcom/mob/commons/cc/x;->i:I

    .line 36
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_3
    new-instance v0, Lcom/mob/commons/cc/x;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 38
    iput-object p1, v0, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 39
    iput p2, v0, Lcom/mob/commons/cc/x;->c:I

    .line 40
    iget-object v1, p0, Lcom/mob/commons/cc/y;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/commons/cc/x;->h:Ljava/lang/String;

    .line 41
    iget v1, p0, Lcom/mob/commons/cc/y;->b:I

    iput v1, v0, Lcom/mob/commons/cc/x;->i:I

    .line 42
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/mob/commons/cc/y;->f:Lcom/mob/commons/cc/v;

    invoke-virtual {v0}, Lcom/mob/commons/cc/v;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/commons/cc/x;

    .line 44
    iget v1, v1, Lcom/mob/commons/cc/x;->a:I

    if-ne v1, v5, :cond_4

    .line 45
    new-instance v0, Lcom/mob/commons/cc/x;

    invoke-direct {v0, v5}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 46
    iput-object p1, v0, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 47
    iput p2, v0, Lcom/mob/commons/cc/x;->c:I

    .line 48
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 49
    new-instance p4, Lcom/mob/commons/cc/x;

    const/16 v0, 0x1e

    invoke-direct {p4, v0}, Lcom/mob/commons/cc/x;-><init>(I)V

    .line 50
    iput-object p1, p4, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 51
    iput p2, p4, Lcom/mob/commons/cc/x;->c:I

    .line 52
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcom/mob/commons/cc/y$a;
    .locals 2

    .line 53
    new-instance v0, Lcom/mob/commons/cc/y$a;

    invoke-direct {v0}, Lcom/mob/commons/cc/y$a;-><init>()V

    .line 54
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/y;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/cc/y$a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 57
    iput-object p1, v0, Lcom/mob/commons/cc/y$a;->a:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    return-object v0
.end method

.method public a(Lcom/mob/commons/cc/r;Ljava/lang/String;I)Lcom/mob/commons/cc/y;
    .locals 10

    .line 1
    iget v0, p0, Lcom/mob/commons/cc/y;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p2, p3, v5, v0}, Lcom/mob/commons/cc/y;->a(Ljava/lang/String;ILjava/util/ArrayList;I)V

    .line 4
    new-instance p2, Lcom/mob/commons/cc/y;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object v2, p2

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/mob/commons/cc/y;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/r;)V

    return-object p2
.end method

.method public varargs b([Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/commons/cc/y;->c:Lcom/mob/commons/cc/r;

    invoke-virtual {v0}, Lcom/mob/commons/cc/r;->b()Lcom/mob/commons/cc/r;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/mob/commons/cc/y;->b:I

    if-eqz v1, :cond_4

    .line 3
    array-length v2, p1

    if-ne v2, v1, :cond_0

    .line 4
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 5
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v2, p1

    if-ge v2, v1, :cond_2

    .line 7
    array-length v1, p1

    :goto_1
    iget v2, p0, Lcom/mob/commons/cc/y;->b:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 10
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 11
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget v2, p0, Lcom/mob/commons/cc/y;->b:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 13
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v0, v1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;)V

    .line 15
    iget v1, p0, Lcom/mob/commons/cc/y;->b:I

    add-int/lit8 v1, v1, -0x2

    :goto_4
    if-ltz v1, :cond_4

    .line 16
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 17
    :cond_4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/mob/commons/cc/y;->f:Lcom/mob/commons/cc/v;

    iget v2, p0, Lcom/mob/commons/cc/y;->d:I

    iget v3, p0, Lcom/mob/commons/cc/y;->e:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/mob/commons/cc/v;->a(IILcom/mob/commons/cc/r;Ljava/util/List;)V

    return-object p1
.end method
