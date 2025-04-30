.class public Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;
.super Landroid/app/Activity;
.source "AppDetailInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:J

.field private f:J

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->f:J

    return-wide v0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "app_info_id"

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "app_info_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->e:J

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a()Lcom/ss/android/downloadlib/addownload/compliance/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a(J)Lcom/ss/android/downloadlib/addownload/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7
    :cond_0
    iget-wide v1, v0, Lcom/ss/android/downloadlib/addownload/b/b;->b:J

    iput-wide v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->f:J

    .line 8
    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/b;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->g:Ljava/util/List;

    const/4 v0, 0x1

    return v0
.end method

.method private b()V
    .locals 3

    .line 1
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->iv_detail_back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->a:Landroid/widget/ImageView;

    .line 2
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tv_empty:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->b:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->permission_list:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->ll_download:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->c:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$a;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$2;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->f:J

    const-string v2, "lp_app_detail_click_close"

    invoke-static {v2, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;J)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/bytedance/sdk/openadsdk/R$layout;->ttdownloader_activity_app_detail_info:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->b()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
