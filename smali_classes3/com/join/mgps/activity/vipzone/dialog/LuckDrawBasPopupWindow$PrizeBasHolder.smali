.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LuckDrawBasPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrizeBasHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
