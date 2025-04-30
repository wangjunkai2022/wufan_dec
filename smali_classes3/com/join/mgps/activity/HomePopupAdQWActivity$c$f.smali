.class Lcom/join/mgps/activity/HomePopupAdQWActivity$c$f;
.super Landroid/webkit/WebViewClient;
.source "HomePopupAdQWActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$f;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
