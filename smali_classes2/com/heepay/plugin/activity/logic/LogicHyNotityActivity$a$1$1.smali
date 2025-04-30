.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "----->\u8fdb\u5165\u4e2d\u4fe1\u8df3\u8f6c\u9875\u9762"

    const-string v1, "----2"

    invoke-static {v0, v1}, Lcom/heepay/plugin/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v1, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    const-string v1, "----3"

    invoke-static {v0, v1}, Lcom/heepay/plugin/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a$1;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->h()V

    :cond_0
    return-void
.end method
