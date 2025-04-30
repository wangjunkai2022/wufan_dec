.class public Lcom/join/mgps/activity/AccountCenterDetialNewActivity;
.super Lcom/BaseAppCompatActivity;
.source "AccountCenterDetialNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;,
        Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;,
        Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;,
        Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0020
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/b;

.field h:Landroid/content/Context;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method D0(Lcom/join/mgps/dto/FavoritesCenterData;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getPortrait()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getPortrait()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getNick_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getTag_info()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 8
    iget-object v4, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->h:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0274

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v5, 0x7f091005

    .line 10
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 11
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;)V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->i:Ljava/util/List;

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getCreate_group_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->i:Ljava/util/List;

    new-instance v3, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    const-string v4, "\u521b\u5efa\u7684\u6e38\u620f\u5355"

    invoke-direct {v3, p0, v2, v4}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->i:Ljava/util/List;

    new-instance v3, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getCreate_group_list()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getBook_group_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->i:Ljava/util/List;

    new-instance v3, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    const-string v4, "\u8ba2\u9605\u7684\u6e38\u620f\u5355"

    invoke-direct {v3, p0, v2, v4}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->i:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getBook_group_list()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p0, v1, p1}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->g:Lcom/join/mgps/rpc/b;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->h:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->getData()V

    return-void
.end method

.method getData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "uid"

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_id"

    .line 4
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version "

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->g:Lcom/join/mgps/rpc/b;

    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/b;->X(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FavoritesCenterData;

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->D0(Lcom/join/mgps/dto/FavoritesCenterData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
