.class public Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;
.super Lcom/xinzhu/overmind/client/hook/c;
.source "DownloadProviderStub.java"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/proxies/context/providers/d;


# static fields
.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String; = "android:query-arg-sql-selection"

.field public static final h:Ljava/lang/String; = "android:query-arg-sql-selection-args"

.field public static final i:Ljava/lang/String; = "android:query-arg-sql-sort-order"

.field private static final j:Ljava/lang/String; = "notificationpackage"

.field private static final k:Ljava/lang/String; = "notificationclass"

.field public static final l:Ljava/lang/String; = "is_visible_in_downloads_ui"

.field public static final m:Ljava/lang/String; = "visibility"

.field public static final n:Ljava/lang/String; = "description"

.field public static final o:Ljava/lang/String; = "hint"


# instance fields
.field private e:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentProviderProxy",
            "appPkg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->e:Landroid/os/IInterface;

    .line 2
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->e:Landroid/os/IInterface;

    return-object v0
.end method

.method protected i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseInvocation",
            "proxyInvocation"
        }
    .end annotation

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxy",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asBinder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_2

    .line 3
    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 4
    aget-object v0, p3, p1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p1

    .line 7
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    const-class p1, Landroid/content/AttributionSource;

    invoke-static {p3, p1}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 9
    aget-object p1, p3, p1

    check-cast p1, Landroid/content/AttributionSource;

    .line 10
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fixAttributionSource(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "insert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    array-length p1, p3

    add-int/lit8 p1, p1, -0x4

    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    add-int/lit8 p1, p1, 0x2

    .line 17
    aget-object p1, p3, p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const-string v0, "android:query-arg-sql-selection"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "android:query-arg-sql-selection-args"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "android:query-arg-sql-sort-order"

    .line 20
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v1

    move-object v0, p1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, p1, 0x2

    .line 21
    aget-object v0, p3, v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v0, p1, 0x3

    .line 22
    aget-object v0, p3, v0

    check-cast v0, [Ljava/lang/String;

    add-int/lit8 p1, p1, 0x4

    .line 23
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 24
    :goto_1
    sget-object v2, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content provider <query>, selection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " selectionArgs "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sortOrder "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :cond_6
    const-class p1, Landroid/net/Uri;

    invoke-static {p3, p1}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 27
    aget-object v1, p3, p1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "notificationpackage"

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    sget-object v4, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content provider <insert>, notificationPkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_7

    .line 30
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v4, "hint"

    .line 31
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 32
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "visibility"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    aput-object v1, p3, p1

    .line 37
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->e:Landroid/os/IInterface;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected k()V
    .locals 0

    return-void
.end method
