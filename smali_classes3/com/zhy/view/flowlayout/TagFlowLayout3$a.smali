.class Lcom/zhy/view/flowlayout/TagFlowLayout3$a;
.super Landroid/widget/BaseAdapter;
.source "TagFlowLayout3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/view/flowlayout/TagFlowLayout3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zhy/view/flowlayout/TagFlowLayout3;


# direct methods
.method public constructor <init>(Lcom/zhy/view/flowlayout/TagFlowLayout3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->a:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/zhy/view/flowlayout/TagFlowLayout3$a;ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->b(ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->a:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    iput p1, p4, Lcom/zhy/view/flowlayout/TagFlowLayout3;->a:I

    .line 2
    iget-object p4, p4, Lcom/zhy/view/flowlayout/TagFlowLayout3;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3$b;

    if-eqz p4, :cond_0

    .line 3
    iget-object p2, p2, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    invoke-interface {p4, p2, p1, p3}, Lcom/zhy/view/flowlayout/TagFlowLayout3$b;->a(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->a:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    iget-object v0, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->a:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    iget-object v0, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3;->b:Ljava/util/List;

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

    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;

    invoke-direct {v0, p0}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;-><init>(Lcom/zhy/view/flowlayout/TagFlowLayout3$a;)V

    .line 3
    iget-object p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->a:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    invoke-virtual {p2}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0580

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f09118b

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v1, Lcom/zhy/view/flowlayout/c;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/zhy/view/flowlayout/c;-><init>(Lcom/zhy/view/flowlayout/TagFlowLayout3$a;ILcom/zhy/view/flowlayout/TagFlowLayout3$a$a;Landroid/view/ViewGroup;)V

    .line 9
    iget-object p3, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a;->a:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    iget v1, p3, Lcom/zhy/view/flowlayout/TagFlowLayout3;->a:I

    if-ne p1, v1, :cond_1

    .line 11
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0603a8

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    const p3, 0x7f080c58

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f06031d

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object p1, v0, Lcom/zhy/view/flowlayout/TagFlowLayout3$a$a;->a:Landroid/widget/TextView;

    const p3, 0x7f080c72

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
