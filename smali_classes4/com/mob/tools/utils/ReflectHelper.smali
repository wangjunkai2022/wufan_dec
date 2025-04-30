.class public Lcom/mob/tools/utils/ReflectHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/ReflectHelper$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/ReflectHelper;->a:Ljava/util/HashSet;

    const-string v1, "0094hfdf[j5dfeleddfdkff"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->a:Ljava/util/HashSet;

    const-string v1, "007=hfdfJj]dfeldeec"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->a:Ljava/util/HashSet;

    const-string v1, "008UhfdfDjMdfeldkdeec"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->a:Ljava/util/HashSet;

    const-string v1, "java.net"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->a:Ljava/util/HashSet;

    const-string v1, "009Lhfdf9j<dfeldcHd4deed"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "006h)ecdcfcedLi"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "0058fhedecdf5d"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v2, "long"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "003!dedkDd"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v2, "short"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "byte"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "0048dg]cIdfdh"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "boolean"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Object;

    const-string v2, "Object"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    const-string v2, "String"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Thread;

    const-string v2, "Thread"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "008$gedcdkdkdffced=i"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "0069ehdifg%dil"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/System;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "006hNecdcfced.i"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Float;

    const-string v2, "Float"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Long;

    const-string v2, "Long"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "Integer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "005^ehFcJecdh=d"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Byte;

    const-string v2, "Byte"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-string v1, "009\'gg]cQdfdhdfdg.di;dh"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "Boolean"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/ReflectHelper;->c:Ljava/util/HashMap;

    .line 30
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

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

    .line 31
    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->c:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/mob/tools/utils/ReflectHelper$1;

    invoke-direct {v0}, Lcom/mob/tools/utils/ReflectHelper$1;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/ReflectHelper;->d:Ljava/util/LinkedHashMap;

    .line 33
    new-instance v0, Lcom/mob/tools/utils/ReflectHelper$2;

    invoke-direct {v0}, Lcom/mob/tools/utils/ReflectHelper$2;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/ReflectHelper;->e:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/mob/tools/utils/ReflectHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 2
    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catchall_0
    :try_start_2
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 5
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 134
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 136
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 137
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    .line 142
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x1

    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 146
    :cond_4
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_5
    :goto_2
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    const-class v0, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 79
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-string v2, "009;ff?idDgi<idc<ecMh"

    .line 81
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    array-length v2, p3

    if-ne v2, v3, :cond_1

    new-array v2, v3, [Ljava/lang/Class;

    aput-object v0, v2, v4

    .line 82
    const-class v3, [Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 83
    aget-object v3, p3, v5

    if-ne v3, v0, :cond_5

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v0, v3, v4

    .line 84
    aput-object v3, p3, v5

    goto :goto_1

    :cond_1
    const-string v0, "011+ffRidUfiJijWdedg0i?eg]h"

    .line 85
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    array-length v0, p3

    if-ne v0, v5, :cond_2

    new-array v2, v5, [Ljava/lang/Class;

    .line 86
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v4

    goto :goto_1

    :cond_2
    const-string v0, "006TdedkIj]ecdjKi"

    .line 87
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    array-length v0, p3

    if-ne v0, v3, :cond_3

    new-array v2, v3, [Ljava/lang/Class;

    .line 88
    const-class v0, Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 89
    const-class v0, [Ljava/lang/Object;

    aput-object v0, v2, v5

    goto :goto_1

    :cond_3
    const-string v0, "0138fgCidDejdgdg9iCfgfgdefcedMi"

    .line 90
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    array-length v0, p3

    if-ne v0, v5, :cond_4

    new-array v2, v5, [Ljava/lang/Class;

    .line 91
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v4

    goto :goto_1

    .line 92
    :cond_4
    invoke-static {p3}, Lcom/mob/tools/utils/ReflectHelper;->a([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 93
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    array-length v3, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_7

    aget-object v7, v2, v6

    if-nez v7, :cond_6

    const-string v7, ""

    goto :goto_3

    .line 95
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 96
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v3, Lcom/mob/tools/utils/ReflectHelper;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    if-eqz v3, :cond_b

    .line 98
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez p1, :cond_8

    move v4, v7

    goto :goto_4

    :cond_8
    if-nez v7, :cond_9

    const/4 v4, 0x1

    :cond_9
    :goto_4
    if-eqz v4, :cond_b

    .line 99
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mob/tools/utils/ReflectHelper;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_a

    .line 102
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    .line 103
    :cond_a
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 104
    throw p0

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 105
    :try_start_1
    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 106
    sget-object v4, Lcom/mob/tools/utils/ReflectHelper;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v7, :cond_c

    .line 109
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    .line 110
    :cond_c
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    .line 111
    :catchall_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 112
    throw p0

    .line 113
    :cond_d
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p3

    :goto_8
    goto :goto_7
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, v0, [Ljava/lang/Object;

    :cond_0
    if-nez p4, :cond_1

    new-array p4, v0, [Ljava/lang/Class;

    :cond_1
    if-nez p1, :cond_2

    .line 60
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_3

    .line 66
    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 67
    :cond_3
    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 68
    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 69
    :try_start_1
    invoke-virtual {v0, p2, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 70
    sget-object v5, Lcom/mob/tools/utils/ReflectHelper;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 72
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_5

    .line 73
    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 74
    :cond_5
    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    .line 75
    :catchall_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 76
    throw p0

    .line 77
    :cond_6
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "className: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_2
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p3

    :goto_4
    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    .line 119
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "["

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 22
    invoke-static {p1}, Lcom/mob/tools/utils/ReflectHelper;->a([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/mob/tools/utils/ReflectHelper;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    array-length v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v9, v0, v8

    .line 30
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 31
    invoke-static {v10, v3}, Lcom/mob/tools/utils/ReflectHelper;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 32
    sget-object p0, Lcom/mob/tools/utils/ReflectHelper;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 34
    invoke-virtual {v9, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 35
    :cond_2
    array-length v11, v10

    if-lez v11, :cond_3

    array-length v11, v10

    sub-int/2addr v11, v4

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_3

    array-length v11, v3

    array-length v12, v10

    sub-int/2addr v12, v4

    if-lt v11, v12, :cond_3

    .line 36
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 38
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 39
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 40
    array-length v6, v1

    sub-int/2addr v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    .line 41
    invoke-static {v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->b([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 42
    array-length p0, p1

    add-int/2addr p0, v4

    new-array p0, p0, [Ljava/lang/Object;

    .line 43
    array-length v1, p1

    invoke-static {p1, v7, p0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    array-length v1, p1

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p0, v1

    .line 45
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 46
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 48
    :cond_5
    array-length v8, v1

    sub-int/2addr v8, v4

    :goto_2
    array-length v9, v3

    if-ge v8, v9, :cond_7

    .line 49
    aget-object v9, v3, v8

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_9

    .line 50
    array-length p0, v3

    array-length v3, v1

    sub-int/2addr p0, v3

    add-int/2addr p0, v4

    .line 51
    invoke-static {v6, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, p0, :cond_8

    .line 52
    array-length v6, v1

    sub-int/2addr v6, v4

    add-int/2addr v6, v5

    aget-object v6, p1, v6

    invoke-static {v3, v5, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 53
    :cond_8
    array-length p0, p1

    add-int/2addr p0, v4

    new-array p0, p0, [Ljava/lang/Object;

    .line 54
    array-length v1, p1

    invoke-static {p1, v7, p0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length v1, p1

    aput-object v3, p0, v1

    .line 56
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 57
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_a
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName: <init>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 149
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 150
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 151
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    .line 156
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v2, :cond_3

    .line 157
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x1

    .line 158
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    invoke-virtual {v2, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 160
    :cond_4
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_5
    :goto_2
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x0

    .line 129
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)Z
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

    .line 12
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

.method private static a([Ljava/lang/Class;[Ljava/lang/Class;)Z
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

    .line 13
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 14
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 15
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-static {v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_1
    return v2
.end method

.method private static a([Ljava/lang/Object;)[Ljava/lang/Class;
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

    .line 6
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 8
    aget-object v2, p0, v1

    .line 9
    instance-of v2, v2, Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 10
    const-class v2, Landroid/content/BroadcastReceiver;

    aput-object v2, v0, v1

    goto :goto_2

    .line 11
    :cond_0
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    instance-of v0, p0, Ljava/util/List;

    const-string v1, "]"

    const-string v2, "["

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v4, :cond_2

    .line 34
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "006%ed*i6dkff-dc"

    .line 35
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v4, :cond_2

    .line 40
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    :goto_0
    const-string v3, "["

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    array-length v3, p1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 9
    new-array v3, v2, [I

    :goto_1
    if-ge v0, v2, :cond_1

    .line 10
    :try_start_0
    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    nop

    goto :goto_2

    :cond_1
    move-object v4, v3

    :cond_2
    :goto_2
    if-eqz v4, :cond_b

    const-string p1, "B"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    const-string p1, "S"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_3

    :cond_4
    const-string p1, "I"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_3

    :cond_5
    const-string p1, "J"

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_3

    :cond_6
    const-string p1, "F"

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_3

    :cond_7
    const-string p1, "D"

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_3

    :cond_8
    const-string p1, "Z"

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 24
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_3

    :cond_9
    const-string p1, "C"

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 26
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_3

    .line 27
    :cond_a
    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_b

    .line 28
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :cond_b
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName: <init>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    const-class v0, Ljava/lang/Float;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Short;

    const-class v4, Ljava/lang/Byte;

    instance-of v5, p0, Ljava/util/List;

    const-string v6, "]"

    const-string v7, "["

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v8, :cond_1e

    .line 46
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 48
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    const/4 v5, -0x1

    :goto_1
    if-eq v5, v8, :cond_1e

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 51
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "B"

    .line 54
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-ne v7, v4, :cond_1e

    .line 55
    invoke-static {p0, v5, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_2
    const-string v8, "S"

    .line 56
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    if-ne v7, v3, :cond_3

    move-object v9, p2

    goto :goto_3

    :cond_3
    if-ne v7, v4, :cond_4

    .line 57
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    :cond_4
    :goto_3
    if-eqz v9, :cond_1e

    .line 58
    invoke-static {p0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_5
    const-string v8, "I"

    .line 59
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ne v7, v2, :cond_6

    move-object v9, p2

    goto :goto_4

    :cond_6
    if-ne v7, v3, :cond_7

    .line 60
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4

    :cond_7
    if-ne v7, v4, :cond_8

    .line 61
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_8
    :goto_4
    if-eqz v9, :cond_1e

    .line 62
    invoke-static {p0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_9
    const-string v8, "J"

    .line 63
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    if-ne v7, v1, :cond_a

    move-object v9, p2

    goto :goto_5

    :cond_a
    if-ne v7, v2, :cond_b

    .line 64
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_5

    :cond_b
    if-ne v7, v3, :cond_c

    .line 65
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_5

    :cond_c
    if-ne v7, v4, :cond_d

    .line 66
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_d
    :goto_5
    if-eqz v9, :cond_1e

    .line 67
    invoke-static {p0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_e
    const-string v8, "F"

    .line 68
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    if-ne v7, v0, :cond_f

    move-object v9, p2

    goto :goto_6

    :cond_f
    if-ne v7, v1, :cond_10

    .line 69
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_6

    :cond_10
    if-ne v7, v2, :cond_11

    .line 70
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_6

    :cond_11
    if-ne v7, v3, :cond_12

    .line 71
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_6

    :cond_12
    if-ne v7, v4, :cond_13

    .line 72
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    :cond_13
    :goto_6
    if-eqz v9, :cond_1e

    .line 73
    invoke-static {p0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_14
    const-string v8, "D"

    .line 74
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 75
    const-class v6, Ljava/lang/Double;

    if-ne v7, v6, :cond_15

    move-object v9, p2

    goto :goto_7

    :cond_15
    if-ne v7, v0, :cond_16

    .line 76
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_7

    :cond_16
    if-ne v7, v1, :cond_17

    .line 77
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_7

    :cond_17
    if-ne v7, v2, :cond_18

    .line 78
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_7

    :cond_18
    if-ne v7, v3, :cond_19

    .line 79
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_7

    :cond_19
    if-ne v7, v4, :cond_1a

    .line 80
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_1a
    :goto_7
    if-eqz v9, :cond_1e

    .line 81
    invoke-static {p0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_1b
    const-string v0, "Z"

    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 83
    const-class v0, Ljava/lang/Boolean;

    if-ne v7, v0, :cond_1e

    .line 84
    invoke-static {p0, v5, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_1c
    const-string v0, "C"

    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 86
    const-class v0, Ljava/lang/Character;

    if-ne v7, v0, :cond_1e

    .line 87
    invoke-static {p0, v5, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 88
    :cond_1d
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 89
    invoke-static {p0, v5, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 90
    :cond_1e
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method private static b([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 5
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
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 3
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 5
    array-length p1, p0

    sub-int/2addr p1, v2

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static varargs createProxy(Ljava/util/HashMap;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/ReflectHelper$a<",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/utils/ReflectHelper$3;

    invoke-direct {v3, v1}, Lcom/mob/tools/utils/ReflectHelper$3;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0, p1}, Lcom/mob/tools/utils/ReflectHelper;->createProxy(Ljava/util/Map;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createProxy(Ljava/util/Map;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/utils/ReflectHelper$a<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 6
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/mob/tools/utils/ReflectHelper$4;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/ReflectHelper$4;-><init>(Ljava/util/Map;)V

    .line 8
    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 2
    instance-of v1, v0, Ljava/lang/NoSuchFieldException;

    if-eqz v1, :cond_0

    .line 3
    throw v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mob/tools/utils/ReflectHelper;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 2
    instance-of v1, v0, Ljava/lang/NoSuchFieldException;

    if-eqz v1, :cond_0

    .line 3
    throw v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static importClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized importClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/mob/tools/utils/ReflectHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, ".*"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/mob/tools/utils/ReflectHelper;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p0, "*"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-nez p0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 7
    :cond_1
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/mob/tools/utils/ReflectHelper;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, p0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p2

    .line 4
    instance-of v0, p2, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_0

    .line 5
    throw p2

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, p0, p1, p2, p3}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    throw p0
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p2

    .line 4
    instance-of v0, p2, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_0

    .line 5
    throw p2

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0, p1, p2, p3}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    throw p0
.end method

.method public static varargs newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 2
    instance-of v0, p1, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_0

    .line 3
    throw p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName: <init>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    instance-of v1, v0, Ljava/lang/NoSuchFieldException;

    if-eqz v1, :cond_0

    .line 3
    throw v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    instance-of v1, v0, Ljava/lang/NoSuchFieldException;

    if-eqz v1, :cond_0

    .line 3
    throw v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fieldName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
