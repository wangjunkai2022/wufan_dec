.class Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;
.super Ljava/lang/Object;
.source "UsercenterFragmentNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

.field final synthetic val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iput-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;->val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    iput-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;->val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;->val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;->val$layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;->val$item:Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/JumpInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JumpInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method
