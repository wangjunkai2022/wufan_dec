.class public Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ScreenShortBigImagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarImagesBrowseAdapter"
.end annotation


# instance fields
.field heigjt:I

.field private mChildCount:I

.field private mContext:Landroid/content/Context;

.field private mViewCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

.field with:I


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/j;->k(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->heigjt:I

    .line 3
    iget-object v0, p1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/j;->B(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->with:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mContext:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mViewCache:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mViewCache:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mChildCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mChildCount:I

    const/4 p1, -0x2

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mViewCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    const v1, -0xebe7e2

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mViewCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5
    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 8
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    invoke-virtual {p2}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getPicPath()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->c:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v1, p2, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, v0, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->mChildCount:I

    .line 2
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
