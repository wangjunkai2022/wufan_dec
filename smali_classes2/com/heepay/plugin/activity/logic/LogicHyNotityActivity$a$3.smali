.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    iput-object p2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iput-object p3, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string/jumbo v0, "\u5f02\u5e38\u8c03\u7528"

    const/16 v1, 0x1019

    :try_start_0
    const-string v2, "com.alipay.sdk.app.PayTask"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v7, "pay"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    const/16 v4, 0x1020

    invoke-static {v4, v2}, Lcom/heepay/plugin/c/e;->a(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    invoke-static {v1, v0}, Lcom/heepay/plugin/c/e;->a(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$3;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    const-string/jumbo v2, "\u8bf7\u68c0\u67e5\u5546\u6237\u7aef\u63d2\u4ef6\u662f\u5426\u5b8c\u6574"

    invoke-static {v1, v2}, Lcom/heepay/plugin/c/e;->a(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
