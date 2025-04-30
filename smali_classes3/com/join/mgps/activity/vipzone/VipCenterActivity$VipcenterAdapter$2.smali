.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;
.super Ljava/lang/Object;
.source "VipCenterActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/ScratchView$b;


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

.field final synthetic val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

.field final synthetic val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    iput-object p3, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScratchView;->setCanCratch(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/ScratchView;->setNumber(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    iget-object v2, v2, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->delaysetStrcth(Lcom/join/mgps/customview/ScratchView;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getLastPrize()Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;

    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->showMydialog(Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ScratchView;->k()V

    :cond_0
    return-void
.end method
