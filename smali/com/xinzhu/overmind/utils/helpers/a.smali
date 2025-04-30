.class public Lcom/xinzhu/overmind/utils/helpers/a;
.super Ljava/lang/Object;
.source "ArgReplaceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/xinzhu/overmind/utils/helpers/a;->b([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method public static b([Ljava/lang/Object;Ljava/lang/Class;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "args",
            "type",
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_3

    .line 2
    aget-object v0, p0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return p2

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static c([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 2
    aget-object v1, p0, v0

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->t(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 2
    aget-object v1, p0, v0

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->t(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method public static e([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    aget-object v1, p0, v0

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->t(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method public static f([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_0

    .line 3
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_0
    return-void
.end method
