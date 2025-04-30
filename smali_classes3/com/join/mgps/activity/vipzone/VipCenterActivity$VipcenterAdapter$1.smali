.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;
.super Ljava/lang/Object;
.source "VipCenterActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/ScratchView$c;


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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScratch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-boolean v1, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$100(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    :cond_0
    return-void
.end method
