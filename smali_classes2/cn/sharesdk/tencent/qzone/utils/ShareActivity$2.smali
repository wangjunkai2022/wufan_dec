.class Lcn/sharesdk/tencent/qzone/utils/ShareActivity$2;
.super Lcn/sharesdk/framework/g;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->getBodyView()Lcn/sharesdk/framework/authorize/RegisterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$2;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    invoke-direct {p0}, Lcn/sharesdk/framework/g;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$2;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->access$100(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$2;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    invoke-static {v0, p2}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->access$200(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "mqzone://"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/ShareActivity$2;->a:Lcn/sharesdk/tencent/qzone/utils/ShareActivity;

    invoke-static {v0, p2}, Lcn/sharesdk/tencent/qzone/utils/ShareActivity;->access$300(Lcn/sharesdk/tencent/qzone/utils/ShareActivity;Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/g;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
