.class public Lcom/mob/commons/cc/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/s$a;,
        Lcom/mob/commons/cc/s$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/mob/commons/cc/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/commons/cc/s$a<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final b:Lcom/mob/commons/cc/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/commons/cc/s$a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/mob/commons/cc/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/commons/cc/s$a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/mob/commons/cc/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/mob/commons/cc/y$a;

    const/4 v1, 0x0

    new-array v1, v1, [B

    sput-object v1, Lcom/mob/commons/cc/s;->f:[B

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/commons/cc/s;->d:Ljava/util/HashMap;

    .line 3
    new-instance v1, Lcom/mob/commons/cc/s$a;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/mob/commons/cc/s$a;-><init>(I)V

    sput-object v1, Lcom/mob/commons/cc/s;->a:Lcom/mob/commons/cc/s$a;

    .line 4
    new-instance v2, Lcom/mob/commons/cc/s$a;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Lcom/mob/commons/cc/s$a;-><init>(I)V

    sput-object v2, Lcom/mob/commons/cc/s;->b:Lcom/mob/commons/cc/s$a;

    .line 5
    new-instance v2, Lcom/mob/commons/cc/s$a;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Lcom/mob/commons/cc/s$a;-><init>(I)V

    sput-object v2, Lcom/mob/commons/cc/s;->c:Lcom/mob/commons/cc/s$a;

    .line 6
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "int"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "double"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "long"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "float"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "boolean"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v3, "short"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v3, "byte"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "char"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v3, "void"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/commons/cc/s;->e:Ljava/util/HashMap;

    .line 16
    invoke-static {v0, v0}, Lcom/mob/commons/cc/s;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 43
    array-length p0, p2

    if-lez p0, :cond_2

    const-string p0, "#"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_2

    aget-object v1, p2, p1

    if-eqz v1, :cond_1

    .line 46
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 47
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;[Ljava/lang/Object;[[Z)Ljava/lang/reflect/Constructor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "[[Z)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/mob/commons/cc/s;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    const-string v1, "<init>"

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 33
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 34
    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    array-length v7, p1

    if-ne v5, v7, :cond_2

    .line 35
    array-length v5, p1

    new-array v7, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    add-int/lit8 v9, v8, 0x1

    .line 36
    aget-object v10, v4, v9

    invoke-static {v10}, Lcom/mob/commons/cc/s;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v8

    .line 37
    aget-object v8, v7, v8

    if-nez v8, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    move v8, v9

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_2

    new-array v4, v6, [Z

    .line 38
    invoke-static {v7, p1, v4}, Lcom/mob/commons/cc/s;->a([Ljava/lang/Class;[Ljava/lang/Object;[Z)[Z

    move-result-object v5

    if-eqz v5, :cond_2

    .line 39
    aput-object v5, p2, v2

    .line 40
    aput-object v4, p2, v6

    .line 41
    invoke-virtual {p0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Object;[[Z)Ljava/lang/reflect/Method;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Object;",
            "[[Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/mob/commons/cc/s;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_6

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 52
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 53
    aget-object v5, v4, v2

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ne p2, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    .line 54
    array-length v5, v4

    sub-int/2addr v5, v6

    array-length v7, p3

    if-ne v5, v7, :cond_5

    .line 55
    array-length v5, p3

    new-array v7, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_3

    add-int/lit8 v9, v8, 0x1

    .line 56
    aget-object v10, v4, v9

    invoke-static {v10}, Lcom/mob/commons/cc/s;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v8

    .line 57
    aget-object v8, v7, v8

    if-nez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    move v8, v9

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_5

    new-array v4, v6, [Z

    .line 58
    invoke-static {v7, p3, v4}, Lcom/mob/commons/cc/s;->a([Ljava/lang/Class;[Ljava/lang/Object;[Z)[Z

    move-result-object v5

    if-eqz v5, :cond_5

    .line 59
    aput-object v5, p4, v2

    .line 60
    aput-object v4, p4, v6

    .line 61
    invoke-static {p0, p1, v7}, Lcom/mob/commons/cc/s;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 62
    invoke-virtual {p0, p1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p2, :cond_4

    .line 63
    sget-object p1, Lcom/mob/commons/cc/s;->c:Lcom/mob/commons/cc/s$a;

    invoke-virtual {p1, p3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 64
    :cond_4
    sget-object p1, Lcom/mob/commons/cc/s;->b:Lcom/mob/commons/cc/s$a;

    invoke-virtual {p1, p3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-object p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mob/commons/cc/t<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 87
    :try_start_0
    sget-object v0, Lcom/mob/commons/cc/s;->f:[B

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/commons/cc/t;

    .line 89
    sget-object v1, Lcom/mob/commons/cc/s;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mob/commons/cc/s;->f:[B

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz p0, :cond_7

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 5
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v8, ":P"

    .line 7
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v5, "#"

    .line 8
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_0
    const-string v8, ":C"

    .line 9
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 11
    sget-object v4, Lcom/mob/commons/cc/s;->d:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 12
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v4, v5

    goto/16 :goto_5

    :cond_2
    const-string v7, "#"

    .line 14
    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 15
    aget-object v7, p0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x1

    .line 16
    aget-object v9, p0, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    new-array v9, v9, [[Ljava/lang/String;

    .line 17
    :goto_1
    array-length v10, p0

    if-ge v5, v10, :cond_6

    .line 18
    aget-object v10, p0, v5

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "+"

    goto :goto_2

    :cond_3
    move-object v10, v3

    .line 19
    :goto_2
    aget-object v11, p0, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v8, :cond_5

    .line 20
    aget-object v11, p0, v5

    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 21
    array-length v12, v11

    add-int/2addr v12, v8

    new-array v12, v12, [Ljava/lang/String;

    .line 22
    aput-object v10, v12, v6

    const/4 v10, 0x0

    .line 23
    :goto_3
    array-length v13, v11

    if-ge v10, v13, :cond_4

    add-int/lit8 v13, v10, 0x1

    .line 24
    aget-object v10, v11, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v12, v13

    move v10, v13

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v5, -0x2

    .line 25
    aput-object v12, v9, v10

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v5, -0x2

    new-array v12, v8, [Ljava/lang/String;

    aput-object v10, v12, v6

    .line 26
    aput-object v12, v9, v11

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 27
    :cond_6
    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 29
    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static a()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    .line 83
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catchall_0
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/commons/cc/r;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/mob/commons/cc/r;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, p1

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 92
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 93
    sget-object v1, Lcom/mob/commons/cc/s;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/commons/cc/t;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    new-array v9, v2, [Z

    new-array v10, v2, [Ljava/lang/Object;

    new-array v11, v2, [Ljava/lang/Throwable;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    .line 95
    invoke-interface/range {v1 .. v8}, Lcom/mob/commons/cc/t;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    aget-object v2, v11, v0

    if-nez v2, :cond_1

    .line 97
    aget-boolean v2, v9, v0

    if-nez v2, :cond_2

    .line 98
    aget-object v0, v10, v0

    move-object/from16 v2, p4

    invoke-virtual {v2, v0}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_1
    aget-object v0, v11, v0

    throw v0

    :cond_2
    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method public static a(Lcom/mob/commons/cc/r;[Ljava/lang/Class;[Ljava/lang/Object;[Z)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/r;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "[Z)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_2

    .line 79
    aget-object v3, p2, v2

    if-eqz v3, :cond_1

    .line 80
    aget-boolean v3, p3, v2

    if-eqz v3, :cond_0

    .line 81
    aget-object v3, p2, v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aget-object v6, p1, v2

    aput-object v6, v5, v1

    invoke-virtual {p0, v3, v4, v5}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Object;Z[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 82
    :cond_0
    aget-object v3, p2, v2

    aput-object v3, v0, v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a([Ljava/lang/Class;[Ljava/lang/Object;[Z)[Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "[Z)[Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 65
    aput-boolean v1, p2, v0

    .line 66
    array-length v2, p0

    array-length v3, p1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    .line 67
    array-length v2, p0

    new-array v2, v2, [Z

    const/4 v3, 0x0

    .line 68
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 69
    aget-object v5, p1, v3

    if-eqz v5, :cond_2

    .line 70
    aget-object v6, p0, v3

    .line 71
    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, v5, Lcom/mob/commons/cc/y;

    if-eqz v7, :cond_0

    .line 72
    aput-boolean v1, v2, v3

    .line 73
    aput-boolean v0, p2, v0

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 75
    invoke-static {v6, v5}, Lcom/mob/commons/cc/s;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    :cond_1
    aput-boolean v0, v2, v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v2

    :cond_4
    return-object v4
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "javax.net.ssl.X509TrustManager"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/mob/commons/cc/s$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mob/commons/cc/s$b;-><init>(Ljava/lang/String;Lcom/mob/commons/cc/s$1;)V

    .line 4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Float;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Character;

    const-class v4, Ljava/lang/Short;

    const-class v5, Ljava/lang/Byte;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v6, :cond_0

    if-eq p1, v5, :cond_7

    :cond_0
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v6, :cond_1

    if-eq p1, v4, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_7

    :cond_1
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v6, :cond_2

    if-eq p1, v3, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v5, :cond_7

    :cond_2
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v6, :cond_3

    if-eq p1, v2, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_7

    :cond_3
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v6, :cond_4

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_7

    :cond_4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v6, :cond_5

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_7

    :cond_5
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v6, :cond_6

    const-class v6, Ljava/lang/Double;

    if-eq p1, v6, :cond_7

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_7

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Boolean;

    if-ne p1, p0, :cond_8

    :cond_7
    const/4 p0, 0x1

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mob/commons/cc/s;->a:Lcom/mob/commons/cc/s$a;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v1
.end method
