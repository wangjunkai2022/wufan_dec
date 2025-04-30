.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    new-instance v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2$1;

    invoke-direct {v1, p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2$1;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
