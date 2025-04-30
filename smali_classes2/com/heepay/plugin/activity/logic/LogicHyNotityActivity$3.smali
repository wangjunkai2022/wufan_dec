.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$3;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$3;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->e:Lcom/heepay/plugin/b/a;

    invoke-virtual {v0}, Lcom/heepay/plugin/b/a;->d()Lcom/heepay/plugin/domain/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/f;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$3;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->v:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    if-eqz v1, :cond_0

    const/16 v2, 0x1002

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heepay/plugin/c/e;->a(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$3;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->v:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    if-eqz v1, :cond_2

    const/16 v2, 0x1001

    invoke-static {v2, v0}, Lcom/heepay/plugin/c/e;->b(ILcom/heepay/plugin/domain/f;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$3;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->v:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    if-eqz v1, :cond_2

    const/16 v2, 0x1003

    const-string/jumbo v3, "\u7248\u672c\u4fe1\u606f\u83b7\u53d6\u9519\u8bef!"

    invoke-static {v2, v0, v3}, Lcom/heepay/plugin/c/e;->a(ILjava/lang/Exception;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
