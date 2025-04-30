.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;
.super Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;
.source "LuckDrawBasPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryHolder"
.end annotation


# instance fields
.field main:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Landroid/view/View;)V

    const p1, 0x7f090ff4

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;->time:Landroid/widget/TextView;

    const p1, 0x7f090acd

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;->name:Landroid/widget/TextView;

    const p1, 0x7f0909eb

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;->main:Landroid/view/View;

    return-void
.end method
