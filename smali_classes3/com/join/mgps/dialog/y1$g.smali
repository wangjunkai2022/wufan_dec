.class Lcom/join/mgps/dialog/y1$g;
.super Landroid/webkit/WebViewClient;
.source "UserPermissDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/y1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dialog/y1;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y1$g;->a:Lcom/join/mgps/dialog/y1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$g;->a:Lcom/join/mgps/dialog/y1;

    iget-object p1, p1, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string p2, "\u609f\u996d\u6e38\u620f\u5385\u7528\u6237\u4f7f\u7528\u534f\u8bae"

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/dialog/y1$g;->a:Lcom/join/mgps/dialog/y1;

    iget-object v0, v0, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/y1$g;->a:Lcom/join/mgps/dialog/y1;

    iget-object p1, p1, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/dialog/y1$g;->a:Lcom/join/mgps/dialog/y1;

    iget-object p2, p2, Lcom/join/mgps/dialog/y1;->a:Landroid/app/Activity;

    const v0, 0x7f110206

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
