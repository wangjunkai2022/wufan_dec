.class Lcom/xinzhu/overmind/client/hook/proxies/telephony/b$b;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "HwTelephonyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/telephony/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/hook/proxies/telephony/b;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/telephony/b;)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/b$b;->a:Lcom/xinzhu/overmind/client/hook/proxies/telephony/b;

    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "getDeviceIdWithFeature"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/b;->a()Lcom/xinzhu/overmind/client/frameworks/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/frameworks/b;->b()Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, v0, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->b:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
