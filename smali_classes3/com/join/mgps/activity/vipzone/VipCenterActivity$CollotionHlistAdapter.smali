.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;
.super Landroid/widget/BaseAdapter;
.source "VipCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollotionHlistAdapter"
.end annotation


# instance fields
.field recomDatabeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->recomDatabeans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->recomDatabeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c05ee

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p3, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    const v0, 0x7f090221

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 6
    iget-object v1, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07117e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0710e2    # 1.7953344E38f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->recomDatabeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    .line 13
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 14
    iget-object p3, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;Lcom/join/mgps/dto/RecomDatabean;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
