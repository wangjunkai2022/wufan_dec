.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-static {p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$1(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuConfig;

    move-result-object p2

    iget p2, p2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->itemDownRelease:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-static {p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$1(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuConfig;

    move-result-object p2

    iget p2, p2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->itemDownBack:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
