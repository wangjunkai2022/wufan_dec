.class Lcom/xinzhu/overmind/client/hook/proxies/os/h$a;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "SystemUpdateManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/os/h;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "status"


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/hook/proxies/os/h;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/os/h;)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/os/h$a;->a:Lcom/xinzhu/overmind/client/hook/proxies/os/h;

    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "retrieveSystemUpdateInfo"

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
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "status"

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
