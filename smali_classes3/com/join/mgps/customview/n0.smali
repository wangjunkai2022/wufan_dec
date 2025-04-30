.class public Lcom/join/mgps/customview/n0;
.super Lcom/join/mgps/customview/u;
.source "SpecialFilterBottomPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/n0$f;
    }
.end annotation


# instance fields
.field a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

.field b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

.field c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field g:Lcom/join/mgps/customview/n0$f;

.field h:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field i:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field j:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field k:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/u;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/n0;->init()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/n0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/n0;->c(Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialTag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    if-nez v1, :cond_0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Lcom/join/mgps/customview/n0$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/n0;->g:Lcom/join/mgps/customview/n0$f;

    return-object v0
.end method

.method public d(Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/n0;->c(Ljava/util/List;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/n0;->c(Ljava/util/List;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/n0;->c(Ljava/util/List;)V

    return-void
.end method

.method public e(Lcom/join/mgps/customview/n0$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/n0;->g:Lcom/join/mgps/customview/n0$f;

    return-void
.end method

.method public f(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/join/mgps/customview/n0;->k:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/u;->showAtLocation(Landroid/view/View;III)V

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    iput-object p1, p0, Lcom/join/mgps/customview/n0;->h:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    iput-object p1, p0, Lcom/join/mgps/customview/n0;->i:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    iput-object p1, p0, Lcom/join/mgps/customview/n0;->j:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/n0;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setData(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/n0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setData(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/n0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setData(Ljava/util/List;)V

    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0544

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f0904b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/n0;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f0904b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/n0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f0904b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/n0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090d22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/n0;->d:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090e25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/n0;->e:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/n0;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/customview/n0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/n0$a;-><init>(Lcom/join/mgps/customview/n0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/n0;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/customview/n0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/n0$b;-><init>(Lcom/join/mgps/customview/n0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/n0;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    new-instance v1, Lcom/join/mgps/customview/n0$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/n0$c;-><init>(Lcom/join/mgps/customview/n0;)V

    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setListener(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/n0;->b:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    new-instance v1, Lcom/join/mgps/customview/n0$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/n0$d;-><init>(Lcom/join/mgps/customview/n0;)V

    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setListener(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/n0;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    new-instance v1, Lcom/join/mgps/customview/n0$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/n0$e;-><init>(Lcom/join/mgps/customview/n0;)V

    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->setListener(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method
