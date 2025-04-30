.class public Lcom/overmind/virtual/oem/utils/a;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/overmind/virtual/oem/utils/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/overmind/virtual/oem/utils/a;->b:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/overmind/virtual/oem/utils/a;->b:Z

    return-void
.end method

.method private static varargs A(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->c(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/overmind/virtual/oem/utils/a;->w(Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->w(Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lcom/overmind/virtual/oem/utils/ReflectException;

    invoke-direct {p1, p0}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static D(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private F(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3
    invoke-direct {p0, v5, p1, p2}, Lcom/overmind/virtual/oem/utils/a;->r(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 5
    invoke-direct {p0, v5, p1, p2}, Lcom/overmind/virtual/oem/utils/a;->r(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No similar method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with params "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could be found on type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private static varargs H([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Class;

    return-object p0

    .line 1
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Class;

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    .line 4
    const-class v2, Lcom/overmind/virtual/oem/utils/a$b;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/overmind/virtual/oem/utils/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/overmind/virtual/oem/utils/a;

    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->o()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static J(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    .line 3
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    .line 5
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 6
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    .line 7
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 8
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    .line 9
    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 10
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    .line 11
    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 12
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    .line 13
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 14
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    .line 15
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 16
    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_8

    .line 17
    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 18
    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_9

    .line 19
    const-class p0, Ljava/lang/Void;

    :cond_9
    return-object p0
.end method

.method static synthetic a(Lcom/overmind/virtual/oem/utils/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    .line 3
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    return-object p0
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->J(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    const-class v1, Ljava/lang/Boolean;

    if-ne v1, p0, :cond_1

    .line 4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :cond_1
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    const-class v1, Ljava/lang/Character;

    if-ne v1, p0, :cond_3

    .line 8
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    const-class p0, Ljava/lang/Void;

    :cond_4
    return-object v0
.end method

.method private k(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/overmind/virtual/oem/utils/a;->c(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    nop

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/overmind/virtual/oem/utils/ReflectException;

    invoke-direct {p1, v1}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Lcom/overmind/virtual/oem/utils/ReflectException;

    invoke-direct {v0, p0}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static n(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lcom/overmind/virtual/oem/utils/ReflectException;

    invoke-direct {p1, p0}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static q(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 10
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    array-length p0, p0

    if-lez p0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, ")"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private r(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/overmind/virtual/oem/utils/a;->s([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private s([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p2, v0

    const-class v3, Lcom/overmind/virtual/oem/utils/a$b;

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/overmind/virtual/oem/utils/a;->J(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/overmind/virtual/oem/utils/a;->J(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method private t([Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, [Ljava/lang/Object;

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private u(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/overmind/virtual/oem/utils/a;->t([Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static v(Ljava/lang/Class;)Lcom/overmind/virtual/oem/utils/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/overmind/virtual/oem/utils/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/overmind/virtual/oem/utils/a;

    invoke-direct {v0, p0}, Lcom/overmind/virtual/oem/utils/a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static w(Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/overmind/virtual/oem/utils/a;

    invoke-direct {v0, p0}, Lcom/overmind/virtual/oem/utils/a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static x(Ljava/lang/String;)Lcom/overmind/virtual/oem/utils/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->v(Ljava/lang/Class;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/overmind/virtual/oem/utils/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/overmind/virtual/oem/utils/a;->n(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->v(Ljava/lang/Class;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p0

    return-object p0
.end method

.method private static varargs z(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/overmind/virtual/oem/utils/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->c(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/overmind/virtual/oem/utils/a;->w(Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lcom/overmind/virtual/oem/utils/ReflectException;

    invoke-direct {p1, p0}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public B(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/overmind/virtual/oem/utils/a;->j(Ljava/lang/String;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/overmind/virtual/oem/utils/a;->o()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->l()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/overmind/virtual/oem/utils/a;

    .line 6
    iget-object v1, v1, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/overmind/virtual/oem/utils/a;->k(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-static {p2}, Lcom/overmind/virtual/oem/utils/a;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/overmind/virtual/oem/utils/ReflectException;

    invoke-direct {p2, p1}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public G()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/overmind/virtual/oem/utils/a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lcom/overmind/virtual/oem/utils/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/overmind/virtual/oem/utils/a;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1

    return-object p1
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/overmind/virtual/oem/utils/a;->H([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/overmind/virtual/oem/utils/a;->i(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-static {v1, v2, p2}, Lcom/overmind/virtual/oem/utils/a;->A(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :catch_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/overmind/virtual/oem/utils/a;->F(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcom/overmind/virtual/oem/utils/a;->A(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 7
    new-instance p2, Lcom/overmind/virtual/oem/utils/ReflectException;

    invoke-direct {p2, p1}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    .line 2
    new-instance v1, Lcom/overmind/virtual/oem/utils/a$a;

    invoke-direct {v1, p0, v0}, Lcom/overmind/virtual/oem/utils/a$a;-><init>(Lcom/overmind/virtual/oem/utils/a;Z)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/overmind/virtual/oem/utils/a;->H([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v2, :cond_3

    aget-object v8, v1, v5

    .line 4
    invoke-direct {p0, v8, p1, v0}, Lcom/overmind/virtual/oem/utils/a;->r(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x2

    move-object v4, v8

    goto :goto_2

    .line 5
    :cond_0
    invoke-direct {p0, v8, p1, v0}, Lcom/overmind/virtual/oem/utils/a;->u(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v4, v8

    const/4 v6, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    if-nez v6, :cond_2

    move-object v4, v8

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v4, :cond_6

    if-nez v6, :cond_4

    new-array p2, v3, [Ljava/lang/Object;

    :cond_4
    if-ne v6, v7, :cond_5

    new-array p1, v7, [Ljava/lang/Object;

    aput-object p2, p1, v3

    move-object p2, p1

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lcom/overmind/virtual/oem/utils/a;->A(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1

    return-object p1

    .line 8
    :cond_6
    new-instance p2, Lcom/overmind/virtual/oem/utils/ReflectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no method found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No best method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with params "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could be found on type "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v1, v2}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/overmind/virtual/oem/utils/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    check-cast p1, Lcom/overmind/virtual/oem/utils/a;

    invoke-virtual {p1}, Lcom/overmind/virtual/oem/utils/a;->o()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Lcom/overmind/virtual/oem/utils/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, v0}, Lcom/overmind/virtual/oem/utils/a;->g([Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object v0

    return-object v0
.end method

.method public varargs g([Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/overmind/virtual/oem/utils/a;->H([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lcom/overmind/virtual/oem/utils/a;->z(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/overmind/virtual/oem/utils/a;->s([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    invoke-static {v5, p1}, Lcom/overmind/virtual/oem/utils/a;->z(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/overmind/virtual/oem/utils/ReflectException;

    invoke-direct {p1, v1}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 4
    :catch_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public j(Ljava/lang/String;)Lcom/overmind/virtual/oem/utils/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/overmind/virtual/oem/utils/a;->k(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/overmind/virtual/oem/utils/a;->w(Ljava/lang/Object;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/overmind/virtual/oem/utils/ReflectException;

    iget-object v1, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/overmind/virtual/oem/utils/ReflectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public l()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/overmind/virtual/oem/utils/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/overmind/virtual/oem/utils/a;->G()Ljava/lang/Class;

    move-result-object v1

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 4
    iget-boolean v6, p0, Lcom/overmind/virtual/oem/utils/a;->b:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-virtual {p0, v5}, Lcom/overmind/virtual/oem/utils/a;->j(Ljava/lang/String;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/overmind/virtual/oem/utils/ReflectException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/overmind/virtual/oem/utils/a;->j(Ljava/lang/String;)Lcom/overmind/virtual/oem/utils/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/overmind/virtual/oem/utils/a;->o()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/overmind/virtual/oem/utils/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
