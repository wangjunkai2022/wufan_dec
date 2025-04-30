.class Lcom/join/mgps/customview/n0$a;
.super Ljava/lang/Object;
.source "SpecialFilterBottomPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/n0;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/n0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object v0, p1, Lcom/join/mgps/customview/n0;->k:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    iput-object v0, p1, Lcom/join/mgps/customview/n0;->h:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object v0, p1, Lcom/join/mgps/customview/n0;->k:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    iput-object v0, p1, Lcom/join/mgps/customview/n0;->i:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object v0, p1, Lcom/join/mgps/customview/n0;->k:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    iput-object v0, p1, Lcom/join/mgps/customview/n0;->j:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object v0, p1, Lcom/join/mgps/customview/n0;->k:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/n0;->a(Lcom/join/mgps/customview/n0;Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object v0, p1, Lcom/join/mgps/customview/n0;->k:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/n0;->a(Lcom/join/mgps/customview/n0;Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object v0, p1, Lcom/join/mgps/customview/n0;->k:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/n0;->a(Lcom/join/mgps/customview/n0;Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object p1, p1, Lcom/join/mgps/customview/n0;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object p1, p1, Lcom/join/mgps/customview/n0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/n0$a;->a:Lcom/join/mgps/customview/n0;

    iget-object p1, p1, Lcom/join/mgps/customview/n0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b()V

    return-void
.end method
