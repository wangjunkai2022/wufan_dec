.class public Lcom/join/mgps/activity/ArenaWebViewActivity;
.super Lcom/BaseActivity;
.source "ArenaWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ArenaWebViewActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0092
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/LJWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setUseWideViewPort(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setSupportZoom(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setBuiltInZoomControls(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setJavaScriptEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setCacheMode(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->a:Lcom/join/mgps/customview/LJWebView;

    new-instance v0, Lcom/join/mgps/activity/ArenaWebViewActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/ArenaWebViewActivity$b;-><init>(Lcom/join/mgps/activity/ArenaWebViewActivity;Lcom/join/mgps/activity/ArenaWebViewActivity$a;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ArenaWebViewActivity;->E0(Ljava/lang/String;)V

    return-void
.end method
