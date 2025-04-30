.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInitBody(Landroid/content/Context;)V
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
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    return-object p0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    new-instance v1, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;

    invoke-direct {v1, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
