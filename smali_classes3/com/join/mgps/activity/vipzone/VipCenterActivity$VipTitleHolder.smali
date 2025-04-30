.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;
.super Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;
.source "VipCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VipTitleHolder"
.end annotation


# instance fields
.field more:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/VipCenterActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V

    const p1, 0x7f09100f

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f090a7b

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    return-void
.end method
