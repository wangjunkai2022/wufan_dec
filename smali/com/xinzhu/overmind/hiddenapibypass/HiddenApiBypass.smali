.class public final Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;
.super Ljava/lang/Object;
.source "HiddenApiBypass.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "HiddenApiBypass"

.field private static final b:Lsun/misc/Unsafe;

.field private static final c:J

.field private static final d:J

.field private static final e:J

.field private static final f:J

.field private static final g:J

.field private static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$Executable;

    const-class v1, Lcom/xinzhu/overmind/hiddenapibypass/Helper$Class;

    const-class v2, Lcom/xinzhu/overmind/hiddenapibypass/Helper$NeverCall;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->o:Ljava/util/Set;

    .line 2
    :try_start_0
    const-class v3, Lsun/misc/Unsafe;

    const-string v4, "getUnsafe"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/misc/Unsafe;

    sput-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    const-string v4, "artMethod"

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->c:J

    const-string v4, "declaringClass"

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->d:J

    .line 5
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandle;

    const-string v4, "artFieldOrMethod"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->e:J

    .line 6
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$MethodHandleImpl;

    const-string v4, "info"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    const-string v0, "methods"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->g:J

    const-string v0, "iFields"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    sput-wide v10, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->h:J

    const-string v0, "sFields"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->i:J

    .line 10
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$HandleInfo;

    const-string v1, "member"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->j:J

    const-string v0, "a"

    new-array v1, v5, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "b"

    new-array v4, v5, [Ljava/lang/Class;

    .line 12
    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 15
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 16
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 17
    invoke-virtual {v3, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 18
    invoke-virtual {v3, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 19
    invoke-virtual {v3, v2, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    sub-long/2addr v0, v12

    .line 20
    sput-wide v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->k:J

    sub-long/2addr v12, v8

    sub-long/2addr v12, v0

    .line 21
    sput-wide v12, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->l:J

    const-string v0, "i"

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "j"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 27
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 28
    invoke-virtual {v3, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 29
    invoke-virtual {v3, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 30
    invoke-virtual {v3, v2, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    sub-long/2addr v0, v4

    .line 31
    sput-wide v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->m:J

    sub-long/2addr v4, v2

    .line 32
    sput-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->n:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_a

    .line 3
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return v2

    .line 5
    :cond_1
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_3

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Character;

    if-nez v1, :cond_3

    return v2

    .line 7
    :cond_3
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_4

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    return v2

    .line 8
    :cond_4
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_5

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Double;

    if-nez v1, :cond_5

    return v2

    .line 9
    :cond_5
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Float;

    if-nez v1, :cond_6

    return v2

    .line 10
    :cond_6
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_7

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_7

    return v2

    .line 11
    :cond_7
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_9

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-nez v1, :cond_9

    return v2

    .line 12
    :cond_8
    aget-object v1, p1, v0

    if-eqz v1, :cond_9

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs addHiddenApiExemptions([Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signaturePrefixes"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->o:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static clearHiddenApiExemptions()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Executable;

    .line 3
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 5
    array-length v2, v1

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 7
    aget-object v3, p1, v2

    aget-object v4, v1, v2

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_3
    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "Cannot find matching constructor"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
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
    invoke-static {p0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Executable;

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 6
    array-length v2, v1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_4

    .line 8
    aget-object v3, p2, v2

    aget-object v4, v1, v2

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_4
    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0

    .line 10
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "Cannot find matching method"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Executable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    const-class v1, Lcom/xinzhu/overmind/hiddenapibypass/Helper$NeverCall;

    const-string v2, "a"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->g:J

    invoke-virtual {v2, p0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long p0, v10, v4

    if-nez p0, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {v2, v10, v11}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    :goto_0
    if-ge v3, p0, :cond_2

    int-to-long v4, v3

    .line 8
    sget-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->k:J

    mul-long v4, v4, v6

    add-long/2addr v4, v10

    sget-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->l:J

    add-long v8, v4, v6

    .line 9
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->e:J

    move-object v4, v2

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 10
    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    :try_start_1
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :catchall_0
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/invoke/MethodHandleInfo;

    .line 13
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->j:J

    invoke-virtual {v2, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Executable;

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getInstanceFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    const-class v1, Lcom/xinzhu/overmind/hiddenapibypass/Helper$NeverCall;

    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->h:J

    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    const-wide/16 v3, 0x0

    cmp-long p0, v9, v3

    if-nez p0, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    int-to-long v3, v2

    .line 8
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->m:J

    mul-long v3, v3, v5

    add-long/2addr v3, v9

    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->n:J

    add-long v7, v3, v5

    .line 9
    sget-object v11, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->e:J

    move-object v3, v11

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 10
    sget-wide v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    const/4 v5, 0x0

    invoke-virtual {v11, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    :try_start_1
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :catchall_0
    sget-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    invoke-virtual {v3, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/invoke/MethodHandleInfo;

    .line 13
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->j:J

    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getStaticFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    const-class v1, Lcom/xinzhu/overmind/hiddenapibypass/Helper$NeverCall;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->i:J

    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    const-wide/16 v3, 0x0

    cmp-long p0, v9, v3

    if-nez p0, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    int-to-long v3, v2

    .line 8
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->m:J

    mul-long v3, v3, v5

    add-long/2addr v3, v9

    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->n:J

    add-long v7, v3, v5

    .line 9
    sget-object v11, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->e:J

    move-object v3, v11

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 10
    sget-wide v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    const/4 v5, 0x0

    invoke-virtual {v11, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    :try_start_1
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :catchall_0
    sget-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->f:J

    invoke-virtual {v3, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/invoke/MethodHandleInfo;

    .line 13
    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->j:J

    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static varargs invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "thiz",
            "methodName",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this object is not an instance of the given class"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    const-class v0, Lcom/xinzhu/overmind/hiddenapibypass/Helper$InvokeStub;

    const-string v1, "invoke"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    sget-object v1, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->g:J

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    const-string p0, "Cannot find matching method"

    cmp-long v4, v2, v6

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v1

    :goto_1
    if-ge v5, v1, :cond_3

    int-to-long v6, v5

    .line 7
    sget-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->k:J

    mul-long v6, v6, v8

    add-long/2addr v6, v2

    sget-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->l:J

    add-long v10, v6, v8

    .line 8
    sget-object v6, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->c:J

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 11
    invoke-static {v4, p3}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "initargs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-class v2, [Ljava/lang/Object;

    const-class v3, Lcom/xinzhu/overmind/hiddenapibypass/Helper$InvokeStub;

    const-string v4, "invoke"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v2, v6, v7

    .line 2
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4
    sget-object v3, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->g:J

    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    const-string v14, "Cannot find matching constructor"

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-eqz v10, :cond_2

    .line 5
    invoke-virtual {v3, v5, v6}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v3

    :goto_0
    if-ge v7, v3, :cond_1

    int-to-long v8, v7

    .line 6
    sget-wide v10, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->k:J

    mul-long v8, v8, v10

    add-long/2addr v8, v5

    sget-wide v10, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->l:J

    add-long v15, v8, v10

    .line 7
    sget-object v12, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->b:Lsun/misc/Unsafe;

    sget-wide v17, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->c:J

    move-object v8, v12

    move-object v9, v4

    move-wide/from16 v10, v17

    move-object/from16 v19, v12

    move-wide v12, v15

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 8
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "<init>"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v8, v19

    move-object v9, v2

    move-wide/from16 v10, v17

    move-wide v12, v15

    .line 9
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 10
    sget-wide v8, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->d:J

    move-object/from16 v10, v19

    invoke-virtual {v10, v2, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 12
    invoke-static {v8, v1}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, v14}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, v14}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static varargs setHiddenApiExemptions([Ljava/lang/String;)Z
    .locals 6
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signaturePrefixes"
        }
    .end annotation

    .line 1
    const-class v0, Ldalvik/system/VMRuntime;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getRuntime"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "setHiddenApiExemptions"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v1

    .line 2
    invoke-static {v0, v2, v3, v5}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    return v1
.end method
