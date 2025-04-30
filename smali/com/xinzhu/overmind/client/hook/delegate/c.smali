.class public Lcom/xinzhu/overmind/client/hook/delegate/c;
.super Ljava/lang/Object;
.source "ContentProviderDelegate.java"


# static fields
.field public static final b:Ljava/lang/String; = "ContentProviderDelegate"

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/delegate/c;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/xinzhu/haunted/android/provider/a$c;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/provider/a$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/provider/a$c;->d()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    new-instance v0, Lcom/xinzhu/haunted/android/provider/a$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/provider/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/xinzhu/haunted/android/provider/a$a;->c(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/android/provider/a$c;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/provider/a$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/xinzhu/haunted/android/provider/a$c;->e(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/provider/a$e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/delegate/c;->a(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/haunted/android/provider/a$d;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/delegate/c;->a(Ljava/lang/Object;)V

    .line 5
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/xinzhu/haunted/android/provider/a$b;->a:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/xinzhu/haunted/android/provider/a$b;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/delegate/c;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static c(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origin",
            "auth"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "downloads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;

    invoke-direct {p1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;-><init>()V

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;

    invoke-direct {p1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;-><init>()V

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/c;->b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;

    invoke-direct {p1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;-><init>()V

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/b;->b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static d()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/c;->b()V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "GET_global"

    const-string v3, "render_shadows_in_compositor"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->V()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/xinzhu/haunted/android/app/g$d;

    invoke-direct {v2, v1}, Lcom/xinzhu/haunted/android/app/g$d;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/g$d;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    array-length v3, v1

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 9
    aget-object v1, v1, v3

    .line 10
    sget-object v4, Lcom/xinzhu/overmind/client/hook/delegate/c;->c:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11
    sget-object v4, Lcom/xinzhu/overmind/client/hook/delegate/c;->c:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/g$d;->d()Landroid/os/IInterface;

    move-result-object v4

    .line 13
    invoke-static {v4, v1}, Lcom/xinzhu/overmind/client/hook/delegate/c;->c(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    .line 14
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/app/g$d;->f(Landroid/os/IInterface;)Z

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v3

    .line 15
    invoke-virtual {v2, v4}, Lcom/xinzhu/haunted/android/app/g$d;->e([Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "auth"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/xinzhu/haunted/android/content/f;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/content/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/content/f;->b()Landroid/os/IInterface;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/android/app/l$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/app/l$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/l$a;->b()Landroid/os/IInterface;

    move-result-object v0

    .line 4
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/Proxy;

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/client/hook/delegate/c;->c(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lcom/xinzhu/haunted/android/content/f;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/content/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/content/f;->c(Landroid/os/IInterface;)Z

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Lcom/xinzhu/haunted/android/app/l$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/app/l$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/l$a;->c(Landroid/os/IInterface;)Z

    :goto_1
    return-void
.end method
