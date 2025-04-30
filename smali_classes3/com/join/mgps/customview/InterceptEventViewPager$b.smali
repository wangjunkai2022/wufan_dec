.class Lcom/join/mgps/customview/InterceptEventViewPager$b;
.super Ljava/lang/Object;
.source "InterceptEventViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/InterceptEventViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/InterceptEventViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/InterceptEventViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/customview/InterceptEventViewPager$c;->onPageScrollStateChanged(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/InterceptEventViewPager;->j(Lcom/join/mgps/customview/InterceptEventViewPager;I)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->h(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->e(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->f(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->k(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->l(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->h(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/join/mgps/customview/InterceptEventViewPager$c;->onPageScrolled(IFI)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->a(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p2, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->e(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    goto :goto_1

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p2, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->f(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 6
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->g(Lcom/join/mgps/customview/InterceptEventViewPager;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_3

    if-nez p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1}, Lcom/join/mgps/customview/InterceptEventViewPager;->i(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->k(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    goto :goto_2

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->c(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    move-result p2

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_4

    if-nez p3, :cond_4

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1}, Lcom/join/mgps/customview/InterceptEventViewPager;->i(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->l(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/customview/InterceptEventViewPager$c;->onPageSelected(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/InterceptEventViewPager;->b(Lcom/join/mgps/customview/InterceptEventViewPager;I)I

    return-void
.end method
