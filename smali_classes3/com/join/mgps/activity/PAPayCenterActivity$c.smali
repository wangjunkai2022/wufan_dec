.class Lcom/join/mgps/activity/PAPayCenterActivity$c;
.super Ljava/lang/Object;
.source "PAPayCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PAPayCenterActivity;->L0(Lcom/join/mgps/dto/PapayResultData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PayAdinfo;

.field final synthetic b:Lcom/join/mgps/activity/PAPayCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PAPayCenterActivity;Lcom/join/mgps/dto/PayAdinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$c;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/PAPayCenterActivity$c;->a:Lcom/join/mgps/dto/PayAdinfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$c;->a:Lcom/join/mgps/dto/PayAdinfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayAdinfo;->getLink()Lcom/join/mgps/dto/AppBeanMain;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$c;->b:Lcom/join/mgps/activity/PAPayCenterActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/PAPayCenterActivity;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
