.class Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

.field final synthetic b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Lcom/join/mgps/adapter/MGGameDetailAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    iget-object v1, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    iget-object v1, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const v2, 0x7f080a0e

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-eq p1, v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;->b:Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;

    iget-object v1, v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f080a0c

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
