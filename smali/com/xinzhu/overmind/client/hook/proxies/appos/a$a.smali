.class Lcom/xinzhu/overmind/client/hook/proxies/appos/a$a;
.super Lcom/xinzhu/overmind/client/hook/common/c;
.source "AppOpsManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/appos/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/xinzhu/overmind/client/hook/proxies/appos/a;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/appos/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "result"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/appos/a$a;->c:Lcom/xinzhu/overmind/client/hook/proxies/appos/a;

    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Landroid/content/AttributionSource;

    invoke-static {p3, v0}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/AttributionSource;

    .line 4
    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fixAttributionSource(Ljava/lang/Object;)V

    .line 5
    aput-object v1, p3, v0

    .line 6
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/common/c;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
