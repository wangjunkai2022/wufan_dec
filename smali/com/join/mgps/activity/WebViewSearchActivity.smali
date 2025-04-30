.class public Lcom/join/mgps/activity/WebViewSearchActivity;
.super Lcom/BaseFragmentActivity;
.source "WebViewSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/WebViewSearchActivity$f;,
        Lcom/join/mgps/activity/WebViewSearchActivity$g;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0079
.end annotation


# instance fields
.field A:Z

.field B:Landroid/widget/ImageView;

.field C:Lcom/join/mgps/customview/ScrollTextViewLayout;

.field D:Landroid/widget/TextView;

.field E:Landroid/widget/LinearLayout;

.field F:Landroid/widget/TextView;

.field G:Landroid/widget/ImageView;

.field H:Landroid/widget/ImageView;

.field I:Landroid/view/animation/Animation;

.field private J:I

.field private K:I

.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field d:Lcom/flipboard/bottomsheet/BottomSheetLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field i:Lcom/join/mgps/customview/LJWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field o:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field t:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field u:Lcom/join/mgps/dto/DownloadCfg;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

.field z:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->a:Ljava/lang/String;

    const-string v0, "downloadc94873e7a457ef607a0cb27c7036b0e2"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->b:Ljava/lang/String;

    const-string v0, "downloadc94873e7a457ef607a0cb27c7036b0e3"

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->w:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->A:Z

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->J:I

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->K:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n0:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o0:Ljava/util/Map;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/WebViewSearchActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->v:Z

    return p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/WebViewSearchActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->v:Z

    return p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/WebViewSearchActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->w:Z

    return p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/WebViewSearchActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->w:Z

    return p1
.end method

.method private T0()V
    .locals 2

    const v0, 0x7f09015e

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f0903c0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f090dc7

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->F:Landroid/widget/TextView;

    const v0, 0x7f090dc8

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ScrollTextViewLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->C:Lcom/join/mgps/customview/ScrollTextViewLayout;

    const v0, 0x7f090646

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f0903c1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->G:Landroid/widget/ImageView;

    const v0, 0x7f0906a2

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->H:Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->E:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/WebViewSearchActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/WebViewSearchActivity$d;-><init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->getdownloadTask()V

    return-void
.end method

.method private Y0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->a:Ljava/lang/String;

    const-string v1, "lodeWebView() called."

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071486

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setBarHeight(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setUseWideViewPort(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setSupportZoom(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setBuiltInZoomControls(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setJavaScriptEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setCacheMode(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    new-instance v1, Lcom/join/mgps/activity/WebViewSearchActivity$g;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/WebViewSearchActivity$g;-><init>(Lcom/join/mgps/activity/WebViewSearchActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    new-instance v1, Lcom/join/mgps/activity/WebViewSearchActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/WebViewSearchActivity$f;-><init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->s(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->e1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method I0(Ljava/lang/String;)V
    .locals 10

    const-string v0, "abs:href"

    const-string v1, "gid"

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->P0(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    const/4 v3, 0x0

    .line 2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->A:Z

    if-eqz v4, :cond_0

    const-string v3, "a#downloadc94873e7a457ef607a0cb27c7036b0e3"

    .line 3
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->size()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_1
    const-string v3, "a#downloadc94873e7a457ef607a0cb27c7036b0e2"

    .line 5
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    .line 6
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 8
    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "acquirePackage href="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " gid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    new-instance v4, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6765\u6e90\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4, v6}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->c(Ljava/lang/String;)V

    .line 16
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->getMixins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
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

.method J0(Ljava/lang/String;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->A:Z

    if-eqz v0, :cond_0

    const-string v0, "a#downloadc94873e7a457ef607a0cb27c7036b0e3"

    .line 3
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    const-string v0, "a#downloadc94873e7a457ef607a0cb27c7036b0e2"

    .line 5
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 6
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    const-string v2, "gid"

    .line 8
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "abs:href"

    .line 9
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquirePackage href="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " gid="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    new-instance v1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6765\u6e90\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v6, v2}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v5}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->c(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {v0, p1}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->setMixins(Ljava/util/List;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->f1()V

    return-void
.end method

.method K0(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->P0(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->S0(Lorg/jsoup/nodes/Document;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->I0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->f1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->S0(Lorg/jsoup/nodes/Document;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->I0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->f1()V

    return-void
.end method

.method M0(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->I0(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->f1()V

    return-void
.end method

.method N0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->O0(Z)V

    return-void
.end method

.method O0(Z)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/WebViewSearchActivity$c;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xc8

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/WebViewSearchActivity$c;-><init>(Lcom/join/mgps/activity/WebViewSearchActivity;JJZ)V

    iput-object v7, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->z:Landroid/os/CountDownTimer;

    .line 2
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method P0(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p1

    :try_start_0
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Linux; Android 8.1.0; XX; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/68.0.3440.91 Mobile Safari/537.36"

    .line 3
    invoke-interface {p1, v0, v1}, Lorg/jsoup/Connection;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5
    :try_start_1
    invoke-interface {p1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method Q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "content"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->P0(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    const-string v1, "noscript > META[content]"

    .line 3
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(?=http).*?(?=(\'|$))"

    const/4 v4, 0x2

    .line 6
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRedirectUrl1 text="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " url="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v2
.end method

.method R0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v1, 0x1388

    .line 3
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "Location"

    .line 4
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method S0(Lorg/jsoup/nodes/Document;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "div.result"

    .line 2
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    const-string v2, "a[href]"

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 4
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 5
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "abs:href"

    .line 6
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/WebViewSearchActivity;->Q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryLinksByDomain href="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \ntext="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \nredirect="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \nhost="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/WebViewSearchActivity;->V0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method U0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(www|m).baidu.com"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method V0(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->u:Lcom/join/mgps/dto/DownloadCfg;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(^|,)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->u:Lcom/join/mgps/dto/DownloadCfg;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method W0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method X0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method Z0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_1
    return-void
.end method

.method a1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_1
    return-void
.end method

.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "word"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->x:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->w()Lcom/join/mgps/dto/HomeViewSwich;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeViewSwich;->getSniffer_down_load_domain()Lcom/join/mgps/dto/DownloadCfg;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->u:Lcom/join/mgps/dto/DownloadCfg;

    .line 5
    new-instance v0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1102da

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/activity/WebViewSearchActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/WebViewSearchActivity$a;-><init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;)V

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->k:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/WebViewSearchActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/WebViewSearchActivity$b;-><init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->DATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->OBB:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->OBBDATA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    :cond_2
    iput-boolean v3, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->A:Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->T0()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method b1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    return-void
.end method

.method c1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f080157

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o:Landroid/widget/ImageView;

    const v1, 0x7f080159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o:Landroid/widget/ImageView;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method checkDownlodingNumber()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->O()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->J:I

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg1/f;->S(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->K:I

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->W()I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateLine(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->J:I

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateDownloadingPoint(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->K:I

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateNoOpenPoint()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateHidePoint()V

    :goto_0
    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method d1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method downloadLayout()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->C:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->p()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->H:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->h:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method e1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method f1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->getMixins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->N0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->O0(Z)V

    :goto_0
    return-void
.end method

.method g1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110206

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->O0(Z)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    const v2, 0x7f1102d9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->O0(Z)V

    return-void

    .line 11
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "word"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/WebViewSearchActivity;->U0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->getMixins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->K0(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->V0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->y:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->getMixins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->M0(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->O0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method getdownloadTask()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n0:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x7

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_3
    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x6

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->checkDownlodingNumber()V

    return-void
.end method

.method receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

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
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg1/f;->N(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->h:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->B:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->checkDownlodingNumber()V

    :cond_2
    return-void
.end method

.method receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n0:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o0:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    const-string p2, "size"

    .line 6
    filled-new-array {p1, p2, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->C:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setTextArray([Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->C:Lcom/join/mgps/customview/ScrollTextViewLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setIsStop(Z)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->C:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->n()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->checkDownlodingNumber()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->checkDownlodingNumber()V

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->checkDownlodingNumber()V

    :cond_5
    :goto_1
    return-void
.end method

.method receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o0:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->n0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->o0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->checkDownlodingNumber()V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->h:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->B:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    const/4 p1, -0x1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public showLoading()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->k:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->i:Lcom/join/mgps/customview/LJWebView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method startLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->G:Landroid/widget/ImageView;

    const v1, 0x7f080763

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f010030

    .line 2
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->I:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->H:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->H:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->I:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->I:Landroid/view/animation/Animation;

    new-instance v1, Lcom/join/mgps/activity/WebViewSearchActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/WebViewSearchActivity$e;-><init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method stopLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->H:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->G:Landroid/widget/ImageView;

    const v1, 0x7f080765

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f070ddc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x64

    if-ge p1, v4, :cond_0

    .line 2
    iget-object v4, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const v3, 0x7f080888

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070991

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v0, 0x40e00000    # 7.0f

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v5, 0x4

    .line 13
    invoke-virtual {v4, v1, v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const v3, 0x7f0807cd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateHidePoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->stopLineAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateLine(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->C:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0809af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->stopLineAnimation()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->G:Landroid/widget/ImageView;

    const v0, 0x7f080763

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->startLineAnimation()V

    :goto_0
    return-void
.end method

.method updateNoOpenPoint()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/WebViewSearchActivity;->stopLineAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity;->D:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080889

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/WebViewSearchActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_3
    :goto_0
    return-void
.end method
