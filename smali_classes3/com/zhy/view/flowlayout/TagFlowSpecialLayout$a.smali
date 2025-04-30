.class Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;
.super Landroid/widget/BaseAdapter;
.source "TagFlowSpecialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;


# direct methods
.method public constructor <init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->b(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p4, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    iget-object p4, p4, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    .line 3
    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 4
    iget-object p4, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    iput-object p1, p4, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->a:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 5
    iget-object p4, p4, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->d:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;

    if-eqz p4, :cond_1

    .line 6
    iget-object p2, p2, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    invoke-interface {p4, p2, p1, p3}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$b;->a(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Landroid/view/ViewGroup;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    iget-object v0, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    iget-object v0, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;

    invoke-direct {v0, p0}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;)V

    .line 3
    iget-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p2}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0599

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->isIsselected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    iput-object p1, v1, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;->a:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v1, Lcom/zhy/view/flowlayout/d;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/zhy/view/flowlayout/d;-><init>(Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;Landroid/view/ViewGroup;)V

    .line 11
    iget-object p3, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->isIsselected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p3}, Landroid/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f06002a

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    const p3, 0x7f080bcb

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a;->a:Lcom/zhy/view/flowlayout/TagFlowSpecialLayout;

    invoke-virtual {p3}, Landroid/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f06031d

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowSpecialLayout$a$a;->a:Landroid/widget/TextView;

    const p3, 0x7f080079

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method
