.class public Lcom/mob/commons/cc/v;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/x;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/commons/cc/v;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/x;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/commons/cc/v;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/mob/commons/cc/v;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/mob/commons/cc/r;)V
    .locals 5

    .line 26
    const-class v0, Lcom/mob/commons/cc/w;

    const-class v1, Lcom/mob/commons/cc/y;

    const-class v2, Ljava/lang/Object;

    const-string v3, "Object"

    invoke-virtual {p1, v3, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    const-class v2, Ljava/lang/Class;

    const-string v3, "Class"

    invoke-virtual {p1, v3, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    const-class v2, Ljava/lang/reflect/Method;

    const-string v3, "Method"

    invoke-virtual {p1, v3, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    const-class v2, Ljava/lang/String;

    const-string v4, "String"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 30
    const-class v2, Ljava/lang/Thread;

    const-string v4, "Thread"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 31
    const-class v2, Ljava/lang/Runnable;

    const-string v4, "Runnable"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    const-class v2, Ljava/lang/System;

    const-string v4, "System"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 33
    const-class v2, Ljava/io/File;

    const-string v4, "File"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    const-class v2, Ljava/net/URL;

    const-string v4, "URL"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    const-class v2, Ljava/lang/Double;

    const-string v4, "Double"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    const-class v2, Ljava/lang/Float;

    const-string v4, "Float"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    const-class v2, Ljava/lang/Long;

    const-string v4, "Long"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    const-class v2, Ljava/lang/Integer;

    const-string v4, "Integer"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    const-class v2, Ljava/lang/Short;

    const-string v4, "Short"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    const-class v2, Ljava/lang/Byte;

    const-string v4, "Byte"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-class v2, Ljava/lang/Number;

    const-string v4, "Number"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    const-class v2, Ljava/lang/Character;

    const-string v4, "Character"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    const-class v2, Ljava/lang/Boolean;

    const-string v4, "Boolean"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v4, "double"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v4, "float"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v4, "long"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "int"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v4, "short"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "byte"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 50
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v4, "char"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "boolean"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    const-class v2, Ljava/math/BigInteger;

    const-string v4, "bigInt"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-class v2, Ljava/math/BigInteger;

    const-string v4, "BigInteger"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-class v2, Ljava/math/BigDecimal;

    const-string v4, "bigDec"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-class v2, Ljava/math/BigDecimal;

    const-string v4, "BigDecimal"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    const-class v2, Ljava/util/List;

    const-string v4, "List"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-class v2, Ljava/util/Map;

    const-string v4, "Map"

    invoke-virtual {p1, v4, v2}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    invoke-virtual {p1, v3, v1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "Function"

    .line 59
    invoke-virtual {p1, v2, v1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "fun"

    .line 60
    invoke-virtual {p1, v2, v1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    const-class v1, Lcom/mob/commons/cc/z;

    const-string v2, "Range"

    invoke-virtual {p1, v2, v1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    const-class v1, Ljava/lang/reflect/Array;

    const-string v2, "Array"

    invoke-virtual {p1, v2, v1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Suba"

    .line 63
    invoke-virtual {p1, v1, v0}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "VM"

    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    sget-object v0, Lcom/mob/commons/cc/v;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p1, v2, v1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/x;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/mob/commons/cc/v;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(IILcom/mob/commons/cc/r;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/mob/commons/cc/r;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/mob/commons/cc/x$a;

    invoke-direct {v0}, Lcom/mob/commons/cc/x$a;-><init>()V

    .line 5
    iput p1, v0, Lcom/mob/commons/cc/x$a;->a:I

    .line 6
    iput-object p3, v0, Lcom/mob/commons/cc/x$a;->b:Lcom/mob/commons/cc/r;

    .line 7
    iput-object p4, v0, Lcom/mob/commons/cc/x$a;->c:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/mob/commons/cc/v;->b:Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/mob/commons/cc/x$a;->f:Ljava/util/ArrayList;

    .line 9
    iget-object p1, p0, Lcom/mob/commons/cc/v;->c:Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/mob/commons/cc/x$a;->g:Ljava/util/ArrayList;

    .line 10
    :goto_0
    :try_start_0
    iget p1, v0, Lcom/mob/commons/cc/x$a;->a:I

    if-ge p1, p2, :cond_2

    .line 11
    invoke-virtual {p3}, Lcom/mob/commons/cc/r;->f()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 12
    iput-boolean v1, v0, Lcom/mob/commons/cc/x$a;->d:Z

    goto :goto_1

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/cc/v;->b:Ljava/util/ArrayList;

    iget v2, v0, Lcom/mob/commons/cc/x$a;->a:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/commons/cc/x;

    .line 14
    invoke-virtual {p1, v0}, Lcom/mob/commons/cc/x;->a(Lcom/mob/commons/cc/x$a;)V

    .line 15
    iget-boolean p1, v0, Lcom/mob/commons/cc/x$a;->e:Z

    if-eqz p1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    iget p1, v0, Lcom/mob/commons/cc/x$a;->a:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/mob/commons/cc/x$a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 17
    :cond_2
    :goto_1
    iget-boolean p1, v0, Lcom/mob/commons/cc/x$a;->d:Z

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/mob/commons/cc/r;->d()I

    move-result p1

    if-lez p1, :cond_3

    if-eqz p4, :cond_3

    .line 18
    :try_start_1
    invoke-virtual {p3}, Lcom/mob/commons/cc/r;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 19
    instance-of p2, p1, Lcom/mob/commons/cc/u;

    if-eqz p2, :cond_5

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 21
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_4

    .line 22
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Suba Runtime Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    :goto_4
    iget-object p3, p0, Lcom/mob/commons/cc/v;->b:Ljava/util/ArrayList;

    iget p4, v0, Lcom/mob/commons/cc/x$a;->a:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/commons/cc/x;

    iget-object p3, p3, Lcom/mob/commons/cc/x;->b:Ljava/lang/String;

    .line 24
    iget-object p4, p0, Lcom/mob/commons/cc/v;->b:Ljava/util/ArrayList;

    iget v0, v0, Lcom/mob/commons/cc/x$a;->a:I

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mob/commons/cc/x;

    iget p4, p4, Lcom/mob/commons/cc/x;->c:I

    .line 25
    new-instance v0, Lcom/mob/commons/cc/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n\tat "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/mob/commons/cc/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mob/commons/cc/r;

    invoke-direct {v0, p1}, Lcom/mob/commons/cc/r;-><init>(Ljava/util/HashMap;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/mob/commons/cc/v;->a(Lcom/mob/commons/cc/r;)V

    .line 3
    iget-object p1, p0, Lcom/mob/commons/cc/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/mob/commons/cc/v;->a(IILcom/mob/commons/cc/r;Ljava/util/List;)V

    return-void
.end method
