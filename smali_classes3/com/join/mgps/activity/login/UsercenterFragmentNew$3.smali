.class Lcom/join/mgps/activity/login/UsercenterFragmentNew$3;
.super Ljava/lang/Object;
.source "UsercenterFragmentNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$3;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$3;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object p1, p1, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getJoin_member()Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$3;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    invoke-static {v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getJumpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
