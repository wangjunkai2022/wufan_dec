.class public Lcom/xinzhu/overmind/utils/helpers/f;
.super Ljava/lang/Object;
.source "ParceledListSliceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/xinzhu/haunted/android/content/pm/j;->c(Ljava/util/List;)Lcom/xinzhu/haunted/android/content/pm/j;

    move-result-object p0

    iget-object p0, p0, Lcom/xinzhu/haunted/android/content/pm/j;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/j;->c:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/reflect/Method;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lcom/xinzhu/haunted/android/content/pm/j;->c:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
