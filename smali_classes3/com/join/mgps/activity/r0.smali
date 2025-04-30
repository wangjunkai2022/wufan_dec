.class public Lcom/join/mgps/activity/r0;
.super Landroidx/fragment/app/Fragment;
.source "MGDetailSimpleInfoFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0135
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/ObservableWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Lcom/join/mgps/dto/DetailResultBean;

.field g:F

.field h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    const-class v0, Lcom/join/mgps/activity/r0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/r0;->a:Ljava/lang/String;

    return-void
.end method

.method private M(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 3
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/activity/r0;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/r0;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/r0;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c3c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/r0;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/join/mgps/Util/h2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/r0;->d:Landroid/content/Context;

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/join/mgps/activity/r0;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simpleInfoData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DetailResultBean;

    iput-object v0, p0, Lcom/join/mgps/activity/r0;->f:Lcom/join/mgps/dto/DetailResultBean;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/r0;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/r0;->M(Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/r0;->c:Lcom/join/mgps/customview/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/r0;->c:Lcom/join/mgps/customview/ObservableWebView;

    iget-object v2, p0, Lcom/join/mgps/activity/r0;->f:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getDescribe()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html;charset=UTF-8"

    invoke-virtual {v0, v2, v3, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/r0;->c:Lcom/join/mgps/customview/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/r0;->c:Lcom/join/mgps/customview/ObservableWebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/r0;->c:Lcom/join/mgps/customview/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
