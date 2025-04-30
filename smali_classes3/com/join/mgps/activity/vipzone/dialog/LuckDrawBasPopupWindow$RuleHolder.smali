.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;
.super Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;
.source "LuckDrawBasPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RuleHolder"
.end annotation


# instance fields
.field describe:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Landroid/view/View;)V

    const p1, 0x7f090343

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;->describe:Landroid/widget/TextView;

    return-void
.end method
