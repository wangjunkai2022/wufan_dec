.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VipCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VipHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/VipCenterActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
