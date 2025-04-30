.class Lcom/xinzhu/overmind/client/hook/proxies/os/b$a;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "DeviceIdentifiersPolicyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/os/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/hook/proxies/os/b;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/os/b;)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/os/b$a;->a:Lcom/xinzhu/overmind/client/hook/proxies/os/b;

    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "getSerialForPackage"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xinzhu/overmind/utils/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
