.class Lcom/xpleemoon/view/CarouselViewPager$a$a;
.super Ljava/lang/Object;
.source "CarouselViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xpleemoon/view/CarouselViewPager$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xpleemoon/view/CarouselViewPager$a;


# direct methods
.method constructor <init>(Lcom/xpleemoon/view/CarouselViewPager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xpleemoon/view/CarouselViewPager$a$a;->a:Lcom/xpleemoon/view/CarouselViewPager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a$a;->a:Lcom/xpleemoon/view/CarouselViewPager$a;

    iget-object v0, v0, Lcom/xpleemoon/view/CarouselViewPager$a;->a:Lcom/xpleemoon/view/CarouselViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
