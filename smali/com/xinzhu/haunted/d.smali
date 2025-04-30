.class public Lcom/xinzhu/haunted/d;
.super Ljava/lang/Object;
.source "HtClass.java"


# static fields
.field private static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ego"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

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
    invoke-static {p0}, Lcom/xinzhu/haunted/d;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "cl"
        }
    .end annotation

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

    .line 1
    invoke-static {p0, p1}, Lcom/xinzhu/haunted/d;->j(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ego",
            "methodName",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/xinzhu/haunted/d;->e(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "ego",
            "methodName",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .line 1
    array-length p2, p3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    array-length p2, p3

    new-array p2, p2, [Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 4
    aget-object v3, p3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 5
    aget-object v3, p3, v2

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-static {v3, p0}, Lcom/xinzhu/haunted/d;->j(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_2

    .line 7
    :cond_1
    aget-object v3, p3, v2

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 8
    aget-object v3, p3, v2

    check-cast v3, Ljava/lang/Class;

    aput-object v3, p2, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wicked."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    :try_start_0
    array-length p0, p3

    if-nez p0, :cond_4

    new-array p0, v1, [Ljava/lang/Class;

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_5
    return-object p0

    .line 15
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No such constructor param "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " under "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length p1, p0

    :goto_4
    if-ge v1, p1, :cond_6

    aget-object p2, p0, v1

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging, cons list "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-object v0
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ego",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    return-object p0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such field as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " under "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ego",
            "methodName",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/xinzhu/haunted/d;->h(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "ego",
            "methodName",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    array-length v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_1
    array-length v4, p3

    if-ge v3, v4, :cond_3

    .line 4
    aget-object v4, p3, v3

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5
    aget-object v4, p3, v3

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-static {v4, p0}, Lcom/xinzhu/haunted/d;->j(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_2

    .line 7
    :cond_1
    aget-object v4, p3, v3

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 8
    aget-object v4, p3, v3

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v0, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wicked."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    :try_start_0
    array-length p0, p3

    if-nez p0, :cond_4

    new-array p0, v2, [Ljava/lang/Class;

    .line 11
    invoke-virtual {p1, p2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_5
    return-object p0

    .line 15
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such method as "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " under "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_6

    aget-object v0, p0, p2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Debugging, Method list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 18
    :cond_6
    array-length p0, p3

    :goto_5
    if-ge v2, p0, :cond_7

    aget-object p1, p3, v2

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Debugging, arg list "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    return-object v1
.end method

.method static i(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/xinzhu/haunted/d;->j(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static j(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "cl"
        }
    .end annotation

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

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot load class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
