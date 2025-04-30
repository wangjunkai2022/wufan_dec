.class public Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;
.super Lcom/xinzhu/overmind/client/hook/c;
.source "OsStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$f;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$d;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$c;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$i;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$k;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$g;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$j;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$e;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$h;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$b;,
        Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "OsStub"


# instance fields
.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/c;-><init>()V

    .line 2
    invoke-static {}, Lcom/xinzhu/haunted/libcore/io/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;->e:Ljava/lang/Object;

    return-void
.end method

.method static synthetic l([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;->m([Ljava/lang/Object;I)V

    return-void
.end method

.method private static m([Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "index"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    aget-object v0, p0, p1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2
    aget-object v0, p0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    aget-object v0, p0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getBaseVUid()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 3
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p1

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/libcore/io/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->g()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;->e:Ljava/lang/Object;

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

    .line 1
    invoke-static {p2}, Lcom/xinzhu/haunted/libcore/io/a;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$k;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$i;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$h;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 11
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$j;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a$j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    return-void
.end method
