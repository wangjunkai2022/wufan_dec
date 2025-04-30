.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1$1;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
