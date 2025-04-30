.class Lcom/join/mgps/activity/vipzone/VipCenterActivity_$3;
.super Ljava/lang/Object;
.source "VipCenterActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity_;->delaysetStrcth(Lcom/join/mgps/customview/ScratchView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity_;

.field final synthetic val$scratch:Lcom/join/mgps/customview/ScratchView;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity_;Lcom/join/mgps/customview/ScratchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity_$3;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity_$3;->val$scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity_$3;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity_$3;->val$scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity_;->access$001(Lcom/join/mgps/activity/vipzone/VipCenterActivity_;Lcom/join/mgps/customview/ScratchView;)V

    return-void
.end method
