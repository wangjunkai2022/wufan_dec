.class public Lcom/join/mgps/customview/ClouldItemView2;
.super Landroid/widget/LinearLayout;
.source "ClouldItemView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field A:Z

.field B:Z

.field a:Lcom/join/mgps/customview/CloudDownButn;

.field b:Landroid/widget/LinearLayout;

.field c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/ImageView;

.field l:Landroid/content/Context;

.field m:Landroid/view/View;

.field n:Landroid/widget/TextView;

.field o:Lcom/facebook/imagepipeline/core/g;

.field p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field q:Landroid/widget/LinearLayout;

.field r:Landroid/widget/LinearLayout;

.field private s:Lq/rorbin/badgeview/a;

.field t:Lcom/join/mgps/dto/CloudListDataBean;

.field u:Ljava/lang/String;

.field v:I

.field w:Z

.field x:Lcom/join/mgps/listener/c;

.field y:[Ljava/lang/String;

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:Z

    const-string v1, "ftsc3"

    const-string v2, "lkrexe2"

    const-string v3, "lkrexe3"

    .line 3
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:[Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView2;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:Z

    const-string v0, "ftsc3"

    const-string v1, "lkrexe2"

    const-string v2, "lkrexe3"

    .line 10
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:[Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 13
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView2;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:Z

    const-string p3, "ftsc3"

    const-string v0, "lkrexe2"

    const-string v1, "lkrexe3"

    .line 17
    filled-new-array {p3, v0, v1}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:[Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 20
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView2;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ClouldItemView2;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ClouldItemView2;->getVipUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "VBA"

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v0, "kdygmyhbs3"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "kdyg"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "GBA"

    if-eqz v0, :cond_2

    return-object v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v0, v5

    .line 5
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move-object v5, v0

    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x64

    if-gt v3, v6, :cond_7

    .line 6
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-eqz v5, :cond_5

    .line 9
    invoke-virtual {v7, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move-object v5, v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gt v4, v6, :cond_a

    .line 10
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "vba."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 12
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {v7, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move-object v0, v7

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    .line 14
    invoke-virtual {v5, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-object v2

    :cond_b
    return-object v1

    :cond_c
    if-nez v5, :cond_d

    return-object v1

    :cond_d
    return-object v2
.end method

.method private e(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00e6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->o:Lcom/facebook/imagepipeline/core/g;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f09039f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/CloudDownButn;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f090813

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f090e77

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f09113e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->d:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f090e30

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->e:Landroid/widget/TextView;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f09013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f090119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f090839

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/ImageView;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f090610

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f0911a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->i:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f0911a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->j:Landroid/widget/TextView;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f0910fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->h:Landroid/widget/TextView;

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f090975

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->q:Landroid/widget/LinearLayout;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/view/View;

    const v0, 0x7f090933

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->r:Landroid/widget/LinearLayout;

    return-void
.end method

.method private getVipUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Lcom/join/mgps/listener/c;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/join/mgps/listener/c;->q()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "?"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&gameId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?gameId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->s:Lq/rorbin/badgeview/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0548

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const v2, 0x7f0910eb

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 5
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060371

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0710d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0713a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    neg-float v4, v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 7
    new-instance v2, Lcom/join/mgps/customview/ClouldItemView2$d;

    invoke-direct {v2, p0, v1}, Lcom/join/mgps/customview/ClouldItemView2$d;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013a

    if-eq p1, v0, :cond_15

    const v0, 0x7f09039f

    if-eq p1, v0, :cond_2

    const v0, 0x7f090e30

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {p1, v0}, Lcom/join/mgps/listener/c;->y(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->shareArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:Z

    if-nez p1, :cond_17

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result p1

    const-string v0, "GBA"

    const-string v1, "VBA"

    const-string v2, "33"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "\u5f53\u524d\u7cfb\u7edf\u7248\u672c\u65e0\u6cd5\u8fd0\u884c\u8be5\u5b58\u6863"

    const-string v7, "vba"

    if-eqz p1, :cond_d

    const-string v8, "fileMd5"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 7
    :pswitch_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v8, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 8
    iget-object v8, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_4
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    if-eqz p1, :cond_5

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_5
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    if-nez p1, :cond_6

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_6
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:I

    if-eq p1, v4, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->downloadCloudArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->makeStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:I

    if-eq p1, v4, :cond_9

    if-ne p1, v3, :cond_b

    .line 23
    :cond_9
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    if-nez v0, :cond_a

    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u672c\u5730\u4e3av1\u6838\u5fc3\u4e0d\u80fd\u4e0b\u8f7dv2\u6838\u5fc3\u5b58\u6863"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 25
    :cond_a
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    if-nez v0, :cond_b

    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u672c\u5730\u6709\u53cc\u6838\u5fc3PGM\u6e38\u620f\u4e0d\u80fd\u4e0b\u8f7d\u5b58\u6863"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    if-ne p1, v5, :cond_c

    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/listener/c;->s(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    goto/16 :goto_4

    .line 28
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {p1, v0, v5}, Lcom/join/mgps/listener/c;->s(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    goto/16 :goto_4

    .line 29
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.wufun.cloud.showDownDialog"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 32
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.wufun.cloud.showUploadDialog"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 35
    :cond_d
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    move-result p1

    if-ne p1, v5, :cond_e

    invoke-direct {p0}, Lcom/join/mgps/customview/ClouldItemView2;->b()Z

    move-result p1

    if-nez p1, :cond_e

    .line 36
    new-instance p1, Lcom/join/mgps/dialog/y;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    const v1, 0x7f12014a

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/dialog/y;-><init>(Landroid/content/Context;I)V

    const-string v0, "\u83b7\u53d6\u987b\u77e5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/y;

    move-result-object p1

    const-string v0, "\u672c\u5b58\u6863\u662f\u609f\u996d\u5e73\u53f0VIP\u4f1a\u5458\u6240\u4eab\u5185\u5bb9\uff0c\u8bf7\u5f00\u901aVIP\u4f1a\u5458\u540e\u4f7f\u7528"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/y;

    move-result-object p1

    const-string v0, "\u5f00\u901aVIP\u4f1a\u5458"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/y;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/customview/ClouldItemView2$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ClouldItemView2$h;-><init>(Lcom/join/mgps/customview/ClouldItemView2;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->a(Lcom/join/mgps/dialog/y$e;)Lcom/join/mgps/dialog/y;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->VipArchive_popup_emulator:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void

    .line 39
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v5, p0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 41
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/join/mgps/customview/ClouldItemView2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_10
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 47
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 48
    :cond_11
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    if-nez v0, :cond_12

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 49
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:I

    if-eq p1, v4, :cond_14

    if-ne p1, v3, :cond_13

    goto :goto_2

    .line 52
    :cond_13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->startMeArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 53
    :cond_14
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->startStoreArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {p1, v0}, Lcom/join/mgps/listener/c;->p(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_4

    .line 55
    :cond_15
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:Z

    if-nez p1, :cond_16

    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {p1, v0}, Lcom/join/mgps/listener/c;->m(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 57
    :cond_16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->backupLocalArchive:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setCloudItemListener(Lcom/join/mgps/listener/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Lcom/join/mgps/listener/c;

    return-void
.end method

.method public setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 1
    iput-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->u:Ljava/lang/String;

    .line 2
    iput v3, v0, Lcom/join/mgps/customview/ClouldItemView2;->v:I

    .line 3
    iput-boolean v5, v0, Lcom/join/mgps/customview/ClouldItemView2;->w:Z

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v6

    invoke-virtual {v6, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    iput-object v6, v0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iput-object v2, v0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 8
    iget-object v7, v0, Lcom/join/mgps/customview/ClouldItemView2;->o:Lcom/facebook/imagepipeline/core/g;

    invoke-virtual {v7, v6}, Lcom/facebook/imagepipeline/core/g;->h(Landroid/net/Uri;)V

    .line 9
    iget-object v7, v0, Lcom/join/mgps/customview/ClouldItemView2;->o:Lcom/facebook/imagepipeline/core/g;

    invoke-virtual {v7, v6}, Lcom/facebook/imagepipeline/core/g;->f(Landroid/net/Uri;)V

    .line 10
    iget-object v7, v0, Lcom/join/mgps/customview/ClouldItemView2;->o:Lcom/facebook/imagepipeline/core/g;

    invoke-virtual {v7, v6}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    .line 11
    iget-object v7, v0, Lcom/join/mgps/customview/ClouldItemView2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v7, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v6, v0, Lcom/join/mgps/customview/ClouldItemView2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :goto_0
    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v3, v6, :cond_1

    .line 13
    iget-object v9, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v9, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eq v3, v9, :cond_3

    if-ne v3, v10, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->d:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->e:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 17
    :cond_3
    :goto_2
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->e:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->d:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getNickname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getTag()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eqz v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 21
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/ImageView;

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 24
    :cond_4
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/ImageView;

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    :goto_3
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->i:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getDownNum()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->j:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v11

    const-string v12, "33"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v11

    .line 31
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/join/mgps/customview/ClouldItemView2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, " \u4e0d\u517c\u5bb9"

    const-string v14, "vba"

    if-eqz v12, :cond_6

    const-string v15, "VBA"

    .line 32
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 33
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->j:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    const-string v15, "GBA"

    .line 34
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 35
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->j:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 36
    :cond_6
    iget-boolean v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    if-eqz v12, :cond_7

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 37
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->j:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 38
    :cond_7
    iget-boolean v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    if-nez v12, :cond_8

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 39
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->j:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_8
    :goto_4
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->h:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v11, 0x1

    if-ne v3, v9, :cond_a

    if-eq v4, v10, :cond_9

    .line 41
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 42
    :cond_9
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    :goto_5
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->h:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_a
    if-ne v3, v10, :cond_d

    .line 44
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->h:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getIsComment()I

    move-result v12

    if-nez v12, :cond_c

    .line 46
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->s:Lq/rorbin/badgeview/a;

    if-eqz v12, :cond_b

    invoke-interface {v12, v8}, Lq/rorbin/badgeview/a;->hide(Z)V

    .line 47
    :cond_b
    new-instance v12, Lq/rorbin/badgeview/QBadgeView;

    iget-object v13, v0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    invoke-direct {v12, v13}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    iget-object v13, v0, Lcom/join/mgps/customview/ClouldItemView2;->h:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v12, v13}, Lq/rorbin/badgeview/QBadgeView;->c(Landroid/view/View;)Lq/rorbin/badgeview/a;

    move-result-object v12

    const/4 v13, -0x1

    .line 49
    invoke-interface {v12, v13}, Lq/rorbin/badgeview/a;->q(I)Lq/rorbin/badgeview/a;

    move-result-object v12

    const/high16 v14, 0x40400000    # 3.0f

    .line 50
    invoke-interface {v12, v14, v11}, Lq/rorbin/badgeview/a;->u(FZ)Lq/rorbin/badgeview/a;

    move-result-object v12

    const/high16 v14, -0x10000

    .line 51
    invoke-interface {v12, v14}, Lq/rorbin/badgeview/a;->g(I)Lq/rorbin/badgeview/a;

    move-result-object v12

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f07110e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    invoke-interface {v12, v14, v8}, Lq/rorbin/badgeview/a;->v(FZ)Lq/rorbin/badgeview/a;

    move-result-object v12

    const v14, 0x800055

    .line 53
    invoke-interface {v12, v14}, Lq/rorbin/badgeview/a;->o(I)Lq/rorbin/badgeview/a;

    move-result-object v12

    .line 54
    invoke-interface {v12, v13}, Lq/rorbin/badgeview/a;->l(I)Lq/rorbin/badgeview/a;

    move-result-object v12

    new-instance v13, Lcom/join/mgps/customview/ClouldItemView2$a;

    invoke-direct {v13, v0}, Lcom/join/mgps/customview/ClouldItemView2$a;-><init>(Lcom/join/mgps/customview/ClouldItemView2;)V

    .line 55
    invoke-interface {v12, v13}, Lq/rorbin/badgeview/a;->i(Lq/rorbin/badgeview/a$a;)Lq/rorbin/badgeview/a;

    move-result-object v12

    iput-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->s:Lq/rorbin/badgeview/a;

    goto :goto_6

    .line 56
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getIsComment()I

    move-result v12

    if-ne v12, v11, :cond_e

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/ClouldItemView2;->d()V

    goto :goto_6

    .line 58
    :cond_d
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    :cond_e
    :goto_6
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->h:Landroid/widget/TextView;

    new-instance v13, Lcom/join/mgps/customview/ClouldItemView2$b;

    move/from16 v14, p6

    invoke-direct {v13, v0, v2, v14}, Lcom/join/mgps/customview/ClouldItemView2$b;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Lcom/join/mgps/dto/CloudListDataBean;Z)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/join/mgps/customview/ClouldItemView2$c;

    invoke-direct {v13, v0, v5, v3, v4}, Lcom/join/mgps/customview/ClouldItemView2$c;-><init>(Lcom/join/mgps/customview/ClouldItemView2;ZII)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v5, :cond_f

    .line 61
    iget-object v4, v0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v4, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v4, v0, Lcom/join/mgps/customview/ClouldItemView2;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    if-ne v3, v11, :cond_10

    .line 64
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    goto/16 :goto_a

    :cond_10
    if-eq v3, v9, :cond_16

    if-ne v3, v10, :cond_11

    goto :goto_7

    :cond_11
    if-ne v3, v6, :cond_15

    .line 65
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    invoke-virtual {v1, v8}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 66
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x7

    if-eq v1, v2, :cond_13

    if-eq v1, v10, :cond_14

    const/4 v2, 0x5

    if-eq v1, v2, :cond_12

    goto/16 :goto_a

    .line 67
    :cond_12
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    const-string v2, "\u5df2\u5907\u4efd"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_a

    .line 69
    :cond_13
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    const-string v2, "\u5907\u4efd\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_a

    .line 71
    :cond_14
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    const-string v2, "\u5907\u4efd"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_a

    .line 73
    :cond_15
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    goto :goto_a

    .line 74
    :cond_16
    :goto_7
    invoke-static {}, Ln1/i;->o()Ln1/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Ln1/i;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    .line 76
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_18

    .line 77
    invoke-static {}, Ln1/i;->o()Ln1/i;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_8

    .line 78
    :cond_18
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 79
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_9

    :cond_19
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_1a

    .line 80
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    invoke-virtual {v1, v8}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 81
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1, v8}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    goto :goto_a

    .line 82
    :cond_1a
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    iget-object v2, v0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 83
    :goto_a
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    move-result v1

    if-ne v1, v11, :cond_1b

    const v1, 0x7f0801a1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 85
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    const-string v2, "#ADADF1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setTextColor(I)V

    .line 86
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    :cond_1b
    const-string v1, "#800A1521"

    .line 88
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 89
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->a:Lcom/join/mgps/customview/CloudDownButn;

    const-string v2, "#9FABB7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setTextColor(I)V

    .line 90
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_b
    return-void
.end method

.method public setGBAType(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:Z

    return-void
.end method

.method public setPGN(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    return-void
.end method

.method setPoPoWindow2(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0549

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const v2, 0x7f09060f

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f09077a

    .line 4
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090c18

    .line 5
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060371

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 8
    iget-object v6, p0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const v6, 0x7f071147

    const/4 v7, 0x0

    if-ne p1, v3, :cond_0

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    aget v8, v5, v7

    iget-object v9, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v8, v6

    aget v3, v5, v3

    invoke-virtual {v1, p1, v7, v8, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->b:Landroid/widget/LinearLayout;

    aget v8, v5, v7

    iget-object v9, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v8, v6

    aget v3, v5, v3

    invoke-virtual {v1, p1, v7, v8, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 11
    :goto_0
    new-instance p1, Lcom/join/mgps/customview/ClouldItemView2$e;

    invoke-direct {p1, p0, v1}, Lcom/join/mgps/customview/ClouldItemView2$e;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p1, Lcom/join/mgps/customview/ClouldItemView2$f;

    invoke-direct {p1, p0, v1}, Lcom/join/mgps/customview/ClouldItemView2$f;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance p1, Lcom/join/mgps/customview/ClouldItemView2$g;

    invoke-direct {p1, p0, v1}, Lcom/join/mgps/customview/ClouldItemView2$g;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
