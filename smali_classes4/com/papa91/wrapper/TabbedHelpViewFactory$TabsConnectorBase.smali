.class Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;
.super Landroid/widget/TabHost;
.source "TabbedHelpViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/wrapper/TabbedHelpViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabsConnectorBase"
.end annotation


# instance fields
.field private final wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[[Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;->wv:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 4
    new-instance v0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$1;

    invoke-direct {v0, p0}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$1;-><init>(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)V

    .line 5
    new-instance v2, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$2;

    invoke-direct {v2, p0}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$2;-><init>(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)V

    .line 6
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    new-instance v5, Landroid/widget/TabWidget;

    invoke-direct {v5, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    const v6, 0x1020013

    .line 9
    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setId(I)V

    .line 10
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x1020011

    .line 12
    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 13
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->addView(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    .line 17
    array-length p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p2, v2

    .line 18
    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    aget-object v3, v3, v4

    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;->wv:Landroid/webkit/WebView;

    return-object p0
.end method
