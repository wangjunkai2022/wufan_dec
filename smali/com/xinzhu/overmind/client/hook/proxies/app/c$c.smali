.class Lcom/xinzhu/overmind/client/hook/proxies/app/c$c;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "JobServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/app/c;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/hook/proxies/app/c;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/app/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/c$c;->a:Lcom/xinzhu/overmind/client/hook/proxies/app/c;

    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "cancel"

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
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindJobManager()Lcom/xinzhu/overmind/client/frameworks/d;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, p3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/xinzhu/overmind/client/frameworks/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v2

    .line 4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
