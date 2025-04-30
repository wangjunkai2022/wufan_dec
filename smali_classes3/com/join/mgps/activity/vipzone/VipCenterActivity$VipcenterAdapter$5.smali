.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;
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

.field final synthetic val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$400(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    move-result-object p1

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-virtual {p1, v1}, Lcom/join/android/app/common/utils/j;->k(Landroid/app/Activity;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    new-instance v2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;-><init>(Landroid/content/Context;II)V

    invoke-static {v1, v2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$402(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$400(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$400(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {p1, v1, v2, v0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->show(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/Luckbean;I)V

    return-void
.end method
