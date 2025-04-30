.class public Lcom/xinzhu/overmind/utils/helpers/e;
.super Ljava/lang/Object;
.source "InterfaceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
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
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method
