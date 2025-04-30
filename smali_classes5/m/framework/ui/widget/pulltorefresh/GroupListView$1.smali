.class Lm/framework/ui/widget/pulltorefresh/GroupListView$1;
.super Landroid/widget/BaseAdapter;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/GroupListView;->setAdapter(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/GroupListView;

.field private final synthetic val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/GroupListView;Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/GroupListView;

    iput-object p2, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private getItemIndex(I)[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v5, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v5, v3}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildrenCount(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    if-le v5, p1, :cond_1

    aput v3, v0, v2

    sub-int/2addr p1, v4

    sub-int/2addr p1, v6

    aput p1, v0, v6

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :array_0
    .array-data 4
        -0x1
        -0x2
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v3, v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->getItemIndex(I)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 3
    aget p1, p1, v1

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-le p1, v1, :cond_1

    .line 5
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v1, v0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->getItemIndex(I)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 3
    aget p1, p1, v1

    const/4 v2, -0x1

    if-nez p2, :cond_2

    .line 4
    new-instance p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;

    const/4 v3, 0x0

    invoke-direct {p2, v3}, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;-><init>(Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;)V

    .line 5
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v3, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    iget-object p3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    if-le v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    .line 8
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object p3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    iget-object v1, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, p3, v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 9
    iget-object p3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-le p1, v2, :cond_1

    .line 10
    iget-object p3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v1, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    iget-object v2, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0, p1, v1, v2}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 11
    iget-object p3, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p2, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;

    if-le v0, v2, :cond_4

    if-ne p1, v2, :cond_3

    .line 14
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    iget-object v2, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1, v2}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 15
    iget-object p1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 16
    iget-object p3, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    if-le p1, v2, :cond_4

    .line 17
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v2, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    iget-object v3, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1, v2, v3}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 18
    iget-object p1, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 19
    iget-object p3, p3, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-object p2
.end method
