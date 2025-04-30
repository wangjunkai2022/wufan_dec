.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;
.super Ljava/lang/Object;
.source "VipSpecialZoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

.field final synthetic val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
