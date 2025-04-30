.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iput-object p2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x1011

    :try_start_0
    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->e:Lcom/heepay/plugin/b/a;

    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/heepay/plugin/b/a;->a(Ljava/lang/String;I)Lcom/heepay/plugin/domain/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heepay/plugin/domain/f;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v2, v2, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->v:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/heepay/plugin/c/e;->a(ILcom/heepay/plugin/domain/f;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v2, v2, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->v:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    if-eqz v2, :cond_2

    const/16 v3, 0x1012

    invoke-static {v3, v1}, Lcom/heepay/plugin/c/e;->b(ILcom/heepay/plugin/domain/f;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v2, v2, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->v:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    if-eqz v2, :cond_2

    const-string/jumbo v3, "\u63d0\u4ea4\u65e5\u5fd7\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1, v3}, Lcom/heepay/plugin/c/e;->a(ILjava/lang/Exception;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
