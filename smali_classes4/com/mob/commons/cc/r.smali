.class public Lcom/mob/commons/cc/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/commons/cc/y;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/mob/commons/cc/r;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/cc/r;->a:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mob/commons/cc/r;->b:Ljava/util/HashMap;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/cc/r;->c:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/cc/r;->d:Ljava/util/HashMap;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/commons/cc/r;->e:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    instance-of v1, p2, Ljava/lang/Double;

    if-nez v1, :cond_8

    :cond_1
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    instance-of v1, p2, Ljava/lang/Float;

    if-nez v1, :cond_8

    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_8

    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_8

    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    instance-of v1, p2, Ljava/lang/Short;

    if-nez v1, :cond_8

    :cond_5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    instance-of v1, p2, Ljava/lang/Byte;

    if-nez v1, :cond_8

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_8

    :cond_7
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_9

    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_9

    :cond_8
    return v0

    .line 16
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto/16 :goto_1

    .line 3
    :cond_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 5
    :cond_2
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_3

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_3

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 6
    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    goto/16 :goto_1

    .line 7
    :cond_4
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 8
    :cond_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    goto/16 :goto_1

    .line 9
    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 10
    :cond_7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    goto :goto_1

    .line 11
    :cond_8
    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 12
    :cond_9
    new-instance p1, Ljava/math/BigInteger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 13
    :cond_a
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_b

    instance-of v0, p2, Ljava/math/BigInteger;

    if-eqz v0, :cond_c

    .line 14
    :cond_b
    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_1
    return-object p2

    .line 16
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type not match! Require "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/String;)Lcom/mob/commons/cc/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mob/commons/cc/y;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mob/commons/cc/r;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/commons/cc/y;

    if-eqz p1, :cond_0

    return-object p1

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mob/commons/cc/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/Object;Z[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/cc/r$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mob/commons/cc/r$1;-><init>(Lcom/mob/commons/cc/r;Ljava/lang/Object;Z)V

    invoke-static {v0, p3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 27
    iget-object v1, v0, Lcom/mob/commons/cc/r;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iget-object v0, v0, Lcom/mob/commons/cc/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    iget-object v0, v0, Lcom/mob/commons/cc/r;->f:Lcom/mob/commons/cc/r;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;Lcom/mob/commons/cc/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/mob/commons/cc/y;",
            ")V"
        }
    .end annotation

    const-string v0, "new"

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/mob/commons/cc/r;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/mob/commons/cc/r;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can not override \"new\" method"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/cc/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/mob/commons/cc/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/mob/commons/cc/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/mob/commons/cc/r;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/cc/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 6
    iget-object p3, p0, Lcom/mob/commons/cc/r;->c:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has defined"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/mob/commons/cc/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/mob/commons/cc/r;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 19
    invoke-direct {p0, v0, p2}, Lcom/mob/commons/cc/r;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/cc/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mob/commons/cc/r;->f:Lcom/mob/commons/cc/r;

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/mob/commons/cc/r;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type not match! Require "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mob/commons/cc/r;->f:Lcom/mob/commons/cc/r;

    invoke-virtual {v0, p1, p2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 26
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has not defined"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/lang/reflect/Method;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/mob/commons/cc/r;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mob/commons/cc/r;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 47
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_5

    .line 48
    aget-object v0, p2, v1

    .line 49
    array-length v3, p2

    sub-int/2addr v3, v2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 50
    aget-object v7, p2, v6

    aput-object v7, v4, v5

    move v5, v6

    goto :goto_0

    :cond_1
    move-object p2, v4

    .line 51
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 52
    :goto_2
    array-length v4, p2

    if-ge v3, v4, :cond_3

    .line 53
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    aget-object v4, p2, v3

    instance-of v4, v4, Lcom/mob/commons/cc/y;

    if-eqz v4, :cond_2

    .line 54
    aget-object v4, p2, v3

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v3

    aput-object v6, v5, v1

    invoke-virtual {p0, v4, v2, v5}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;Z[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    .line 56
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 57
    :cond_4
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "receiver not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public b()Lcom/mob/commons/cc/r;
    .locals 2

    .line 21
    new-instance v0, Lcom/mob/commons/cc/r;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/r;-><init>(Ljava/util/HashMap;)V

    .line 22
    iget-object v1, p0, Lcom/mob/commons/cc/r;->d:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/mob/commons/cc/r;->d:Ljava/util/HashMap;

    .line 23
    iput-object p0, v0, Lcom/mob/commons/cc/r;->f:Lcom/mob/commons/cc/r;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 17
    iget-object v1, v0, Lcom/mob/commons/cc/r;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    iget-object v0, v0, Lcom/mob/commons/cc/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 19
    :cond_0
    iget-object v0, v0, Lcom/mob/commons/cc/r;->f:Lcom/mob/commons/cc/r;

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public c()Lcom/mob/commons/cc/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/cc/r;->f:Lcom/mob/commons/cc/r;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/cc/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mob/commons/cc/r;->g:Z

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/commons/cc/r;->g:Z

    return v0
.end method
