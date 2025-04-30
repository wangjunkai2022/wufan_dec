.class public Lcom/xinzhu/overmind/client/hook/d;
.super Ljava/lang/Object;
.source "HookManager.java"


# static fields
.field public static final b:Ljava/lang/String; = "HookManager"

.field private static c:Lcom/xinzhu/overmind/client/hook/d;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/xinzhu/overmind/client/hook/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/d;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/d;->c:Lcom/xinzhu/overmind/client/hook/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/d;->a:Ljava/util/Map;

    return-void
.end method

.method public static c()Lcom/xinzhu/overmind/client/hook/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/d;->c:Lcom/xinzhu/overmind/client/hook/d;

    return-object v0
.end method


# virtual methods
.method a(Lcom/xinzhu/overmind/client/hook/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "injectHook"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/d;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/client/hook/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/hook/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEnv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is bad env"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/hook/e;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/display/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/display/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/appos/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/appos/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 11
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 12
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/appwidget/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/appwidget/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 13
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 14
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/vm/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/vm/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 15
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/j;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 16
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/session/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/session/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/location/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/location/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 19
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 20
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 21
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 22
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accessibility/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accessibility/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 23
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/audio/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/audio/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 24
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/backup/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/backup/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 26
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/sms/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/sms/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 27
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/subscription/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/subscription/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 28
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 29
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 30
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telecom/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telecom/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 31
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 32
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 33
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/input/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/input/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 34
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 35
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/media/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/media/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 36
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/k;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 37
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/wifi/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/wifi/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 38
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 39
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 40
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/textservice/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/textservice/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 41
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 42
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/location/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/location/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 43
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/b;->e()Lcom/xinzhu/overmind/client/hook/delegate/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 44
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 46
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 48
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/g;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 49
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 50
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 52
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/e;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 53
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/role/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/role/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 54
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 56
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/h;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 57
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/view/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/view/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 59
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 60
    :cond_4
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->e()Z

    .line 61
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 63
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 64
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/d;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 65
    :cond_5
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 66
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 67
    :cond_6
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 68
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/view/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/view/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 69
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/i;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 70
    :cond_7
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/c;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 72
    :cond_8
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 73
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 74
    :cond_9
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 76
    :cond_a
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->n()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 77
    :cond_b
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->a(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 78
    :cond_c
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/d;->e()V

    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/client/hook/e;

    .line 2
    invoke-interface {v1}, Lcom/xinzhu/overmind/client/hook/e;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method
