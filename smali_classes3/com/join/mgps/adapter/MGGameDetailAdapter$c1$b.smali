.class Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;)Lcom/join/mgps/customview/CarouselViewPager2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr p1, v2

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Ljava/util/List;I)V

    return-void
.end method
