.class public Lcom/join/mgps/customview/h0;
.super Landroid/widget/PopupWindow;
.source "PopSelectPostingGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/h0$c;,
        Lcom/join/mgps/customview/h0$b;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ListView;

.field b:Lcom/join/mgps/activity/posting/PostingActivity$m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/h0;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0543

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0909dc

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/customview/h0;->a:Landroid/widget/ListView;

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/16 p2, 0x10

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 14
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f12019d

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/GroupInfoBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GroupInfoBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GroupInfoBean;",
            ">;",
            "Lcom/join/mgps/dto/GroupInfoBean;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz p3, :cond_1

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GroupInfoBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    move-result v5

    invoke-virtual {p3}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GroupInfoBean;

    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/GroupInfoBean;->setSelected(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    new-instance v4, Lcom/join/mgps/customview/h0$b;

    invoke-direct {v4, p0}, Lcom/join/mgps/customview/h0$b;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 7
    iput v3, v4, Lcom/join/mgps/customview/h0$b;->a:I

    const-string v5, "\u63a8\u8350"

    .line 8
    iput-object v5, v4, Lcom/join/mgps/customview/h0$b;->c:Ljava/lang/String;

    .line 9
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GroupInfoBean;

    .line 11
    new-instance v5, Lcom/join/mgps/customview/h0$b;

    invoke-direct {v5, p0}, Lcom/join/mgps/customview/h0$b;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 12
    iput v1, v5, Lcom/join/mgps/customview/h0$b;->a:I

    .line 13
    iput-object v4, v5, Lcom/join/mgps/customview/h0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    .line 14
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_5

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    if-eqz p3, :cond_4

    .line 16
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 17
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GroupInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    move-result p1

    invoke-virtual {p3}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 18
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GroupInfoBean;

    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/GroupInfoBean;->setSelected(Z)V

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 19
    :cond_4
    :goto_4
    new-instance p1, Lcom/join/mgps/customview/h0$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/h0$b;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 20
    iput v3, p1, Lcom/join/mgps/customview/h0$b;->a:I

    const-string p3, "\u6211\u7684"

    .line 21
    iput-object p3, p1, Lcom/join/mgps/customview/h0$b;->c:Ljava/lang/String;

    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GroupInfoBean;

    .line 24
    new-instance p3, Lcom/join/mgps/customview/h0$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/customview/h0$b;-><init>(Lcom/join/mgps/customview/h0;)V

    .line 25
    iput v1, p3, Lcom/join/mgps/customview/h0$b;->a:I

    .line 26
    iput-object p2, p3, Lcom/join/mgps/customview/h0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    .line 27
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/h0;->a:Landroid/widget/ListView;

    new-instance p2, Lcom/join/mgps/customview/h0$c;

    invoke-direct {p2, p0, v0}, Lcom/join/mgps/customview/h0$c;-><init>(Lcom/join/mgps/customview/h0;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/customview/h0;->a:Landroid/widget/ListView;

    new-instance p2, Lcom/join/mgps/customview/h0$a;

    invoke-direct {p2, p0, v0}, Lcom/join/mgps/customview/h0$a;-><init>(Lcom/join/mgps/customview/h0;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
