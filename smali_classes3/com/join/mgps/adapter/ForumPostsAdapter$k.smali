.class Lcom/join/mgps/adapter/ForumPostsAdapter$k;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->a:Lcom/join/mgps/dto/ForumBean$GameInfo;

    iput-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->a:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->a:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_down_url_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->b(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->b(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/p;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->e:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$k;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$i0;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
