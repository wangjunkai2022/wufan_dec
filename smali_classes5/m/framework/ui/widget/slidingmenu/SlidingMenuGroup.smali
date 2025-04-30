.class final Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
.super Ljava/lang/Object;
.source "SlidingMenuGroup.java"


# instance fields
.field id:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

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

    check-cast v2, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    if-nez v2, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    iget v3, v2, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->id:I

    if-ne v3, p1, :cond_1

    return-object v2
.end method

.method getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method getItem(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    return-object p1
.end method

.method setItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->id:I

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 2
    iget v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    iput v1, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->group:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
