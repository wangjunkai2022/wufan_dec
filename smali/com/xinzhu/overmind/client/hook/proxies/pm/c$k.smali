.class Lcom/xinzhu/overmind/client/hook/proxies/pm/c$k;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "PackageManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/pm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "getPackageInfo"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
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
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/Object;)I

    move-result v2

    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    const v3, -0x400001

    and-int/2addr v2, v3

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v1

    :cond_0
    const/high16 v1, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->l(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/xinzhu/overmind/server/pm/i;->d(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/env/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
