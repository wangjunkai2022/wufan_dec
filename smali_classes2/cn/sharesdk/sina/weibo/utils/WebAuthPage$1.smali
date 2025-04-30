.class Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;
.super Landroid/webkit/WebViewClient;
.source "WebAuthPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->access$000(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->access$100(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->access$200(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;)Landroid/webkit/WebView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-static {p1, p2}, Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->access$002(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;I)I

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->access$002(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->access$300(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->access$400(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebAuthPage$1;->a:Lcn/sharesdk/sina/weibo/utils/WebAuthPage;

    invoke-static {p1, p2}, Lcn/sharesdk/sina/weibo/utils/WebAuthPage;->access$500(Lcn/sharesdk/sina/weibo/utils/WebAuthPage;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
