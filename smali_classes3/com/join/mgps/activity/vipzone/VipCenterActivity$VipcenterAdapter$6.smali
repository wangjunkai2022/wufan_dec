.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$6;
.super Ljava/lang/Object;
.source "VipCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

.field final synthetic val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$6;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$6;->val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$6;->val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->getBoard_id()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$6;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
