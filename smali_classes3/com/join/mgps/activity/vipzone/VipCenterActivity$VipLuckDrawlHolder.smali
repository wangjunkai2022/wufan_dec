.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;
.super Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;
.source "VipCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VipLuckDrawlHolder"
.end annotation


# instance fields
.field prizeDataImg:Lcom/facebook/drawee/view/SimpleDraweeView;

.field prizeDataLayout:Landroid/widget/LinearLayout;

.field prizeDataName:Landroid/widget/TextView;

.field prizeListImg:Lcom/facebook/drawee/view/SimpleDraweeView;

.field prizeListLayout:Landroid/widget/LinearLayout;

.field prizeListName:Landroid/widget/TextView;

.field prizeRuleImg:Lcom/facebook/drawee/view/SimpleDraweeView;

.field prizeRuleLayout:Landroid/widget/LinearLayout;

.field prizeRuleName:Landroid/widget/TextView;

.field scratch:Lcom/join/mgps/customview/ScratchView;

.field scratchBack:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

.field todayScratchNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/VipCenterActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V

    const p1, 0x7f090c4e

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeListImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090c50

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeListName:Landroid/widget/TextView;

    const p1, 0x7f090c4d

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeDataName:Landroid/widget/TextView;

    const p1, 0x7f090c53

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeRuleName:Landroid/widget/TextView;

    const p1, 0x7f090dbe

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/ScratchView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    const p1, 0x7f091040

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->todayScratchNumber:Landroid/widget/TextView;

    const p1, 0x7f090c4f

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeListLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090c4c

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeDataLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090c52

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeRuleLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090dbf

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratchBack:Landroid/widget/TextView;

    return-void
.end method
