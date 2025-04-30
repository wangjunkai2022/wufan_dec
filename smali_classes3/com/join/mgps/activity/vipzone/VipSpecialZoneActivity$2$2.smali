.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$2;
.super Ljava/lang/Object;
.source "VipSpecialZoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;

.field final synthetic val$intentDateBean:Lcom/join/mgps/Util/IntentDateBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$2;->val$intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2$2;->val$intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
