.class public Lcom/join/mgps/activity/SearchHintActivity;
.super Lcom/BaseAppCompatActivity;
.source "SearchHintActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchHintActivity$l;,
        Lcom/join/mgps/activity/SearchHintActivity$p;,
        Lcom/join/mgps/activity/SearchHintActivity$o;,
        Lcom/join/mgps/activity/SearchHintActivity$m;,
        Lcom/join/mgps/activity/SearchHintActivity$n;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c056f
.end annotation


# static fields
.field public static I0:Z = false

.field public static final J0:Ljava/lang/String; = "key"


# instance fields
.field A:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field A0:Lcom/join/mgps/activity/search/SearchIndexData;

.field B:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field B0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field C0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private D0:Z

.field private E:Lcom/join/mgps/activity/SearchHintActivity$o;

.field private E0:I

.field private F:Lcom/join/mgps/dto/ResponseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/search/SearchAutoData;",
            ">;"
        }
    .end annotation
.end field

.field private F0:I

.field private G:I

.field G0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private H:I

.field private H0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field J:Lcom/join/mgps/rpc/d;

.field K:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field a:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field d:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ViewFlipper;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field i:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field o:Lcom/join/mgps/customview/WrapContentGridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o0:I

.field p:Lcom/join/mgps/customview/WrapContentGridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:Ljava/lang/String;

.field q:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:I

.field r:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Z

.field s:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private s0:Lcom/join/mgps/activity/SearchHintActivity$n;

.field t:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private t0:Lcom/join/mgps/activity/SearchHintActivity$m;

.field u:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private u0:Lcom/join/mgps/dto/ResponseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/search/SearchIndexData;",
            ">;"
        }
    .end annotation
.end field

.field v:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private v0:Ljava/lang/String;

.field w:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w0:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field x:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x0:Lcom/join/mgps/adapter/x;

.field y:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private y0:[Ljava/lang/String;

.field z:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->G:I

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->H:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->o0:I

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->q0:I

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->r0:Z

    const-string v1, "\u641c\u7d22\u6e38\u620f\u3001\u5382\u5546\u3001\u5e16\u5b50"

    .line 7
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->v0:Ljava/lang/String;

    const-string v1, "\u70ed\u641c\u699c"

    const-string v2, "\u7f51\u6e38\u699c"

    const-string v3, "\u6a21\u62df\u5668\u699c"

    const-string v4, "\u5355\u673a\u699c"

    .line 8
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y0:[Ljava/lang/String;

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->z0:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B0:Ljava/util/List;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->C0:Ljava/util/List;

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->D0:Z

    .line 13
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->E0:I

    .line 14
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->F0:I

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    return-void
.end method

.method public static synthetic D0(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/activity/search/SearchIndexData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->b1(Lcom/join/mgps/activity/search/SearchIndexData;Landroid/view/View;)V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/SearchHintActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C:Ljava/util/List;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/SearchHintActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->j1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/SearchHintActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/SearchHintActivity;Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->n1(Lcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method private V0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    const v3, 0x7f091088

    if-ge v1, v2, :cond_1

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c0579

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/activity/SearchHintActivity;->y0:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$g;->v(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0907c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0335

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    .line 7
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "#8A8A8A"

    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->d:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iput v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->d:I

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic b1(Lcom/join/mgps/activity/search/SearchIndexData;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAdInfoData;->getSub()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAdInfoData;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoData;->getSub()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendAdInfoBean;

    .line 4
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getJump_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 10
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    const/16 v2, 0x71

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getLink_type()I

    move-result v1

    const/16 v3, 0x15

    if-eq v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getLink_type()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v2

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendAdInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    .line 16
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, p1

    .line 17
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    const-string p2, "searchBanner"

    invoke-virtual {p1, p2, v0, v2}, Lcom/papa/sim/statistic/p;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private e1(Landroid/content/Context;Lcom/join/mgps/dto/GameInfoBean;)Landroid/view/View;
    .locals 8

    const v0, 0x7f0c01e9

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f090f20

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const v3, 0x7f080ac1

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v3, "#777777"

    .line 6
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInfoBean;->isThe_hot()Z

    move-result v3

    const v5, 0x7f0713a8

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0806aa

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v3, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInfoBean;->isThe_score()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0806c3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v3, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0710cc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0710e2    # 1.7953344E38f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 21
    invoke-virtual {v2, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 22
    new-instance p1, Lcom/join/mgps/activity/SearchHintActivity$j;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/SearchHintActivity$j;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/GameInfoBean;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 23
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method private f1(Landroid/content/Context;Lcom/join/mgps/dto/SearchAutoDataBean;)Landroid/view/View;
    .locals 5

    const v0, 0x7f0c01e9

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f090f20

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const v1, 0x7f080ac1

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v1, "#777777"

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0710cc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f07113b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 11
    invoke-virtual {v2, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12
    new-instance p1, Lcom/join/mgps/activity/SearchHintActivity$i;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/SearchHintActivity$i;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/SearchAutoDataBean;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private j1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object p2

    invoke-virtual {p2}, Lg1/b;->d()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p2, Lcom/join/mgps/db/tables/SearchRecordTable;

    invoke-direct {p2}, Lcom/join/mgps/db/tables/SearchRecordTable;-><init>()V

    .line 4
    invoke-virtual {p2, p1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setName(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setCreate_time(J)V

    .line 6
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 8
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object p1

    .line 9
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long v3, p2

    const-string v5, "create_time"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lg1/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Lg1/b;->delete(Ljava/util/Collection;)I

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/SearchRecordTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_0

    .line 14
    :cond_3
    new-instance p2, Lcom/join/mgps/db/tables/SearchRecordTable;

    invoke-direct {p2}, Lcom/join/mgps/db/tables/SearchRecordTable;-><init>()V

    .line 15
    invoke-virtual {p2, p1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setName(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setCreate_time(J)V

    .line 17
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private n1(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v3

    const v4, 0x7f091088

    const v5, 0x7f0907c1

    if-ne v1, v3, :cond_2

    .line 5
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071194

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "#535353"

    .line 12
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private o1(Lcom/join/mgps/activity/search/SearchIndexData;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->A0:Lcom/join/mgps/activity/search/SearchIndexData;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B0:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/x$a;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y0:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/join/mgps/activity/search/SearchRankingFragment;->getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B0:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/x$a;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y0:[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/join/mgps/activity/search/SearchRankingFragment;->getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B0:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/x$a;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y0:[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/join/mgps/activity/search/SearchRankingFragment;->getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B0:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/x$a;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y0:[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/join/mgps/activity/search/SearchRankingFragment;->getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->x0:Lcom/join/mgps/adapter/x;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->V0()V

    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->G0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v1, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v1, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->E:Lcom/join/mgps/activity/SearchHintActivity$o;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$o;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->E:Lcom/join/mgps/activity/SearchHintActivity$o;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$o;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->G0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->G0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->E:Lcom/join/mgps/activity/SearchHintActivity$o;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$o;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->G0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->E:Lcom/join/mgps/activity/SearchHintActivity$o;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$o;->notifyDataSetChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v7, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    :cond_3
    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 19
    :cond_8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->F0:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->E0:I

    if-gt v0, v1, :cond_7

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/dto/SearchAutoDataBean;

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    iget v5, p0, Lcom/join/mgps/activity/SearchHintActivity;->F0:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/join/mgps/activity/SearchHintActivity$p;

    if-eqz v5, :cond_6

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/SearchHintActivity$p;

    .line 9
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 11
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_4

    .line 12
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v8, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_5

    .line 15
    iget-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 16
    :cond_5
    iget-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 18
    iget-object v1, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private v1(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->G0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 7
    :goto_1
    iget-object v9, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 13
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_7
    if-nez v4, :cond_8

    .line 17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_8
    if-eqz v4, :cond_1

    .line 18
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 20
    :cond_9
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_a
    return-object p1
.end method


# virtual methods
.method I0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9\u54e6~"

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$a;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/SearchHintActivity$k;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/SearchHintActivity$k;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$b;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->z1()V

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->f:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->X0()V

    return-void
.end method

.method K0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->a()I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->z1()V

    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->K0()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->p1()V

    return-void
.end method

.method M0(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/SearchRecordTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg1/b;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method N0(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    :cond_0
    const-string v1, "112"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    return-object p1
.end method

.method O0(Ljava/lang/String;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 5
    new-instance v3, Lcom/join/mgps/dto/RequestKeywordArgs;

    iget v6, p0, Lcom/join/mgps/activity/SearchHintActivity;->G:I

    iget v7, p0, Lcom/join/mgps/activity/SearchHintActivity;->H:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/join/mgps/dto/RequestKeywordArgs;-><init>(Ljava/lang/String;IIII)V

    .line 6
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->M()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-interface {p1, v2}, Lq1/h;->z0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->F:Lcom/join/mgps/dto/ResponseModel;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/search/SearchAutoData;

    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchAutoData;->getSearch_list()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/SearchHintActivity;->y1(Ljava/util/List;I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->serverConnectionException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->y1(Ljava/util/List;I)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->y1(Ljava/util/List;I)V

    .line 13
    throw p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->g1()V

    :goto_1
    return-void
.end method

.method P0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 2
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    new-instance v2, Lcom/join/mgps/dto/RequestUidtagidTagdes;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestUidtagidTagdes;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setUid(I)V

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->M()Lcom/join/mgps/rpc/impl/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v2

    invoke-interface {v2, v1}, Lq1/h;->y0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ResponseModel;

    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->u0:Lcom/join/mgps/dto/ResponseModel;

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/search/SearchIndexData;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/activity/search/SearchIndexData;->getHot_search_ranking()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/join/mgps/activity/search/SearchIndexData;->getSearch_key()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->w1(Lcom/join/mgps/activity/search/SearchIndexData;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->z1()V

    const/4 v1, 0x2

    .line 14
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->I0(I)V

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->I0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->serverConnectionException()V

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->I0(I)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->g1()V

    const/16 v0, 0x9

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->I0(I)V

    :goto_1
    return-void
.end method

.method public Q0()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchPageRequestBean(ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    return-object v0
.end method

.method R0()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/16 v0, 0x14

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Ln1/h0;->n()Ln1/h0;

    move-result-object v2

    const-wide/16 v3, 0x0

    int-to-long v5, v0

    const-string v7, "create_time"

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lg1/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/SearchRecordTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->h1()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    .line 10
    new-instance v2, Lcom/join/mgps/dto/SearchAutoDataBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/SearchAutoDataBean;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/SearchAutoDataBean;->setGame_name(Ljava/lang/String;)V

    const-string v4, ""

    .line 13
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/SearchAutoDataBean;->setCrc_sign_id(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/SearchAutoDataBean;->setIsHistory(Z)V

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->q1()V

    .line 17
    invoke-virtual {p0, v1, v3}, Lcom/join/mgps/activity/SearchHintActivity;->y1(Ljava/util/List;I)V

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->p1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public S0(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->A0:Lcom/join/mgps/activity/search/SearchIndexData;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getHot_search_ranking()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getNet_search_ranking()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getSimulator_search_ranking()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getStandalone_search_ranking()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public T0(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v4, p0, Lcom/join/mgps/activity/SearchHintActivity;->G:I

    iget v5, p0, Lcom/join/mgps/activity/SearchHintActivity;->H:I

    const-string v2, "searchAuto"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchAutoRequestBean(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method U0(Ljava/lang/String;I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->R0()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->O0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public W0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/SearchHintActivity;->j1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchListActivity1_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object v0

    iget-boolean v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->r0:Z

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1_$o;->c(Z)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1_$o;->a(I)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/SearchListActivity1_$o;->b(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 4
    :cond_0
    iget p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->b:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/activity/SearchListActivity1_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p2

    iget-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->r0:Z

    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/SearchListActivity1_$o;->c(Z)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/SearchListActivity1_$o;->a(I)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/activity/SearchListActivity1_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p2

    iget-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->r0:Z

    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/SearchListActivity1_$o;->c(Z)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 7
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->clickSearchButton:Lcom/papa/sim/statistic/Event;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/papa/sim/statistic/p;->h1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method X0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    const-string v0, "input_method"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method Y0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    :try_start_0
    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method Z0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->J:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/join/mgps/activity/SearchHintActivity;->I0:Z

    .line 5
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->G0:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->G0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->H0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$c;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$d;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$e;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->s0:Lcom/join/mgps/activity/SearchHintActivity$n;

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity$n;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->s0:Lcom/join/mgps/activity/SearchHintActivity$n;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->o:Lcom/join/mgps/customview/WrapContentGridView;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->s0:Lcom/join/mgps/activity/SearchHintActivity$n;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->t0:Lcom/join/mgps/activity/SearchHintActivity$m;

    if-nez v0, :cond_3

    .line 16
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchHintActivity$m;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->t0:Lcom/join/mgps/activity/SearchHintActivity$m;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->p:Lcom/join/mgps/customview/WrapContentGridView;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->t0:Lcom/join/mgps/activity/SearchHintActivity$m;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$o;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->C:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/SearchHintActivity$o;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->E:Lcom/join/mgps/activity/SearchHintActivity$o;

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$f;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->D:Ljava/util/List;

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->v0:Ljava/lang/String;

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->v0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->k1()V

    .line 29
    new-instance v0, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->B0:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->x0:Lcom/join/mgps/adapter/x;

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->w:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->w:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->w:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$g;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 33
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->V0()V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$h;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->d(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->d1()V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->c1()V

    .line 37
    sget-boolean v0, Lcom/join/mgps/activity/SearchHintActivity;->I0:Z

    if-eqz v0, :cond_7

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->q1()V

    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->r1()V

    goto :goto_1

    .line 40
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->J0()V

    .line 41
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->a1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitTopSearchPage:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method c1()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->I0(I)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->P0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->z1()V

    return-void
.end method

.method d1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->w0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->searchHintCache()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/activity/search/SearchIndexData;

    invoke-virtual {v1, v0, v2}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/search/SearchIndexData;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getHot_search_ranking()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getSearch_key()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->w1(Lcom/join/mgps/activity/search/SearchIndexData;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->z1()V

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->I0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method g1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->K:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public getRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchRecommendBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method h1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->E:Lcom/join/mgps/activity/SearchHintActivity$o;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchHintActivity$o;->notifyDataSetChanged()V

    return-void
.end method

.method i1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->c(Landroid/view/View;)V

    return-void
.end method

.method k1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->z1()V

    return-void
.end method

.method l1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Lorg/androidannotations/annotations/EditorAction;
    .end annotation

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->O0(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->j1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method m1(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v4, 0x30

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->updateProgressPartly()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/SearchHintActivity;->E0:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->F0:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method p1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "showHint"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcom/join/mgps/activity/SearchHintActivity;->I0:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method q1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "showHistory"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->I:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method r1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x12cL
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->i1()V

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/join/mgps/activity/SearchHintActivity;->I0:Z

    return-void
.end method

.method s1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "showRecommend"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method serverConnectionException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->n0:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method t1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method u1(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->F:Lcom/join/mgps/dto/ResponseModel;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->F:Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/search/SearchAutoData;

    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoData;->getGame_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->F:Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/search/SearchAutoData;

    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoData;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    const/16 v1, 0x67

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    const/16 v1, 0x70

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    const-string v1, "0"

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v1, v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->C0:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/SearchHintActivity;->v1(Ljava/util/List;)Ljava/util/List;

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->C:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->C:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->r0:Z

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->E:Lcom/join/mgps/activity/SearchHintActivity$o;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$o;->notifyDataSetChanged()V

    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->E:Lcom/join/mgps/activity/SearchHintActivity$o;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$o;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method w1(Lcom/join/mgps/activity/search/SearchIndexData;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->w0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->searchHintCache()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getSearch_key()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getSearch_key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z0:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->z0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->p1()V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAdInfoMainBean;->getAd_switch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAdInfoMainBean;->getAd_switch()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecommendAdInfoData;->getMain()Lcom/join/mgps/dto/RecommendAdInfoMainBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecommendAdInfoMainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->p(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v3, Lcom/join/mgps/activity/p2;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/p2;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/activity/search/SearchIndexData;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGuess_you_like_info()Ljava/util/List;

    move-result-object v0

    const v3, 0x7f0710f8

    const v4, 0x7f07117e

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGuess_you_like_info()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGuess_you_like_info()Ljava/util/List;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->w0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->searchguesslikeData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 19
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameInfoBean;

    .line 21
    invoke-direct {p0, p0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->e1(Landroid/content/Context;Lcom/join/mgps/dto/GameInfoBean;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 22
    :cond_3
    iget-object v5, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    goto/16 :goto_5

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->w0:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->searchguesslikeData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 27
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v5

    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v6

    const-class v7, Ljava/util/List;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Lcom/join/mgps/dto/GameInfoBean;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/papa/sim/statistic/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->A:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameInfoBean;

    .line 32
    invoke-direct {p0, p0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->e1(Landroid/content/Context;Lcom/join/mgps/dto/GameInfoBean;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 33
    :cond_6
    iget-object v5, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    goto :goto_5

    .line 36
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :goto_5
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->o1(Lcom/join/mgps/activity/search/SearchIndexData;)V

    return-void
.end method

.method x1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->C0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07117e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y:Lcom/join/mgps/customview/FlowLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/FlowLayout;->setNumberRows(I)V

    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 10
    invoke-direct {p0, p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->f1(Landroid/content/Context;Lcom/join/mgps/dto/SearchAutoDataBean;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->y:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method y1(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->D0:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->x1(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->D0:Z

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->u1(Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method z1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->s1()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->O0(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->D0:Z

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->z0:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->p1()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->z0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->R0()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
