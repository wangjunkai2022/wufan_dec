.class Lcom/join/mgps/activity/login/UsercenterFragmentNew$4;
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$4;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$4;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object v0, v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$4;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    iget-object v1, v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getJumpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
