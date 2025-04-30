.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$2;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->h()V

    :cond_0
    return-void
.end method
