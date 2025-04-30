.class public abstract Lm/framework/ui/widget/slidingmenu/MenuAdapter;
.super Ljava/lang/Object;
.source "MenuAdapter.java"


# instance fields
.field private menus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    return-void
.end method

.method private findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    if-nez v2, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    iget v3, v2, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    if-ne v3, p1, :cond_1

    return-object v2
.end method


# virtual methods
.method getGroup(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    return-object p1
.end method

.method getGroupCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public abstract getGroupView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected getItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    invoke-virtual {p1, p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->getItem(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public abstract getItemView(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getMenuItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getMenuTitle()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitle(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    iget-object p1, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->text:Ljava/lang/String;

    return-object p1
.end method

.method public notifyDataSetChanged(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 0

    return-void
.end method

.method public onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuSwitch(Z)V
    .locals 0

    return-void
.end method

.method public setGroup(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    invoke-direct {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;-><init>()V

    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    .line 4
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iput-object p2, v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->text:Ljava/lang/String;

    return-void
.end method

.method setGroup(Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget v0, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 9
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public setItem(ILm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1, p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->setItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V

    return-void
.end method
