.class public Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;
.super Lcom/join/mgps/customview/WrapContentGridView;
.source "TagFlowSpecialLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;,
        Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialTag;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

.field d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/WrapContentGridView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    invoke-direct {v0, p0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;)V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    .line 4
    invoke-direct {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/WrapContentGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    .line 7
    new-instance p2, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    invoke-direct {p2, p0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;)V

    iput-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    .line 8
    invoke-direct {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/WrapContentGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    .line 11
    new-instance p2, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    invoke-direct {p2, p0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;)V

    iput-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    .line 12
    invoke-direct {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    return-object v0
.end method

.method public getListener()Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;

    return-object v0
.end method

.method public getSelectedItem()Lcom/join/mgps/activity/vipzone/bean/SpecialTag;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->a:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    return-object v0
.end method

.method public bridge synthetic getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->getSelectedItem()Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->c:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;

    return-void
.end method
