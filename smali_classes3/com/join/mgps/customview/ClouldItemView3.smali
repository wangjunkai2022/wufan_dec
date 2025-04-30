.class public Lcom/join/mgps/customview/ClouldItemView3;
.super Landroid/widget/LinearLayout;
.source "ClouldItemView3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/join/mgps/customview/CloudDownButn;

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/content/Context;

.field j:Landroid/view/View;

.field k:Lcom/facebook/imagepipeline/core/g;

.field l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field m:Landroid/widget/LinearLayout;

.field n:Landroid/widget/LinearLayout;

.field private o:Lq/rorbin/badgeview/a;

.field p:Lcom/join/mgps/dto/CloudListDataBean;

.field q:Ljava/lang/String;

.field r:I

.field s:Z

.field t:Lcom/join/mgps/listener/c;

.field u:[Ljava/lang/String;

.field v:Z

.field w:Z

.field x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:Z

    const-string v1, "ftsc3"

    const-string v2, "lkrexe2"

    const-string v3, "lkrexe3"

    .line 3
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:[Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView3;->e(Landroid/content/Context;)V

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
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:Z

    const-string v0, "ftsc3"

    const-string v1, "lkrexe2"

    const-string v2, "lkrexe3"

    .line 10
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:[Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    .line 13
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView3;->e(Landroid/content/Context;)V

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
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:Z

    const-string p3, "ftsc3"

    const-string v0, "lkrexe2"

    const-string v1, "lkrexe3"

    .line 17
    filled-new-array {p3, v0, v1}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:[Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    .line 20
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView3;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ClouldItemView3;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ClouldItemView3;->getVipUrl()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:[Ljava/lang/String;

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

    const v1, 0x7f0c00e7

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Lcom/facebook/imagepipeline/core/g;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f09039f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/CloudDownButn;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f090e77

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f09113e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->c:Landroid/widget/TextView;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f090e30

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->d:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f09013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f090119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f0911a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->g:Landroid/widget/TextView;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f090975

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Landroid/widget/LinearLayout;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f090933

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->n:Landroid/widget/LinearLayout;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/view/View;

    const v0, 0x7f0911a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->h:Landroid/widget/TextView;

    return-void
.end method

.method private getVipUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Lcom/join/mgps/listener/c;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/join/mgps/listener/c;->q()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

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

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->o:Lq/rorbin/badgeview/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/content/Context;

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
    new-instance v2, Lcom/join/mgps/customview/ClouldItemView3$a;

    invoke-direct {v2, p0, v1}, Lcom/join/mgps/customview/ClouldItemView3$a;-><init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

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

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:Z

    if-nez p1, :cond_17

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

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

    iget-object v8, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 8
    iget-object v8, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

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

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView3;->c(Ljava/lang/String;)Ljava/lang/String;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

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
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:I

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

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:I

    if-eq p1, v4, :cond_9

    if-ne p1, v3, :cond_b

    .line 23
    :cond_9
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/listener/c;->s(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    goto/16 :goto_4

    .line 28
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {p1, v0, v5}, Lcom/join/mgps/listener/c;->s(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    goto/16 :goto_4

    .line 29
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.wufun.cloud.game.main.showDownDialog"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    move-result p1

    if-ne p1, v5, :cond_e

    invoke-direct {p0}, Lcom/join/mgps/customview/ClouldItemView3;->b()Z

    move-result p1

    if-nez p1, :cond_e

    .line 36
    new-instance p1, Lcom/join/mgps/dialog/y;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/content/Context;

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

    new-instance v0, Lcom/join/mgps/customview/ClouldItemView3$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ClouldItemView3$e;-><init>(Lcom/join/mgps/customview/ClouldItemView3;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->a(Lcom/join/mgps/dialog/y$e;)Lcom/join/mgps/dialog/y;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->VipArchive_popup_page:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void

    .line 39
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v5, p0, Lcom/join/mgps/customview/ClouldItemView3;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 41
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/join/mgps/customview/ClouldItemView3;->c(Ljava/lang/String;)Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:I

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

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {p1, v0}, Lcom/join/mgps/listener/c;->p(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_4

    .line 55
    :cond_15
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:Z

    if-nez p1, :cond_16

    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Lcom/join/mgps/listener/c;

    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

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

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Lcom/join/mgps/listener/c;

    return-void
.end method

.method public setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

    .line 2
    iput p3, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:I

    .line 3
    iput-boolean p5, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:Z

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p4

    invoke-virtual {p4, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p4

    iput-object p4, p0, Lcom/join/mgps/customview/ClouldItemView3;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    .line 6
    iget-object p4, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getAvatar()Ljava/lang/String;

    move-result-object p6

    invoke-static {p4, p6}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    const/4 p4, 0x2

    const/16 p6, 0x8

    const/4 p7, 0x0

    if-ne p3, p4, :cond_0

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p3, v0, :cond_2

    if-ne p3, v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 11
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getDownNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    const-string v3, "33"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/join/mgps/customview/ClouldItemView3;->l:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/join/mgps/customview/ClouldItemView3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " \u4e0d\u517c\u5bb9"

    const-string v5, "vba"

    if-eqz v3, :cond_4

    const-string v6, "VBA"

    .line 19
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 20
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string v6, "GBA"

    .line 21
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 23
    :cond_4
    iget-boolean v3, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 24
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 25
    :cond_5
    iget-boolean v3, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

    if-nez v3, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    if-nez p5, :cond_7

    .line 27
    iget-object p5, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    invoke-virtual {p5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p5, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p5, p0, Lcom/join/mgps/customview/ClouldItemView3;->d:Landroid/widget/TextView;

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const/4 p5, 0x1

    if-ne p3, p5, :cond_8

    .line 30
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    goto/16 :goto_6

    :cond_8
    if-eq p3, v0, :cond_e

    if-ne p3, v1, :cond_9

    goto :goto_3

    :cond_9
    if-ne p3, p4, :cond_d

    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    invoke-virtual {p1, p7}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result p1

    if-eqz p1, :cond_c

    const/4 p2, 0x7

    if-eq p1, p2, :cond_b

    if-eq p1, v1, :cond_c

    const/4 p2, 0x5

    if-eq p1, p2, :cond_a

    goto/16 :goto_6

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    const-string p2, "\u5df2\u5907\u4efd"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_6

    .line 35
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    const-string p2, "\u5907\u4efd\u4e2d"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_6

    .line 37
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    const-string p2, "\u5907\u4efd"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_6

    .line 39
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    goto :goto_6

    .line 40
    :cond_e
    :goto_3
    invoke-static {}, Ln1/i;->o()Ln1/i;

    move-result-object p3

    invoke-virtual {p3, p1}, Ln1/i;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    .line 42
    new-instance p4, Ljava/io/File;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_10

    .line 43
    invoke-static {}, Ln1/i;->o()Ln1/i;

    move-result-object p4

    invoke-virtual {p4, p3}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_4

    .line 44
    :cond_10
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getMd5()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f

    .line 45
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_11
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_12

    .line 46
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    invoke-virtual {p1, p7}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 47
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1, p7}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    goto :goto_6

    .line 48
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    iget-object p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 49
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    move-result p1

    if-ne p1, p5, :cond_13

    const p1, 0x7f0801a2

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 51
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    const-string p2, "#FFD5BC"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setTextColor(I)V

    .line 52
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    const p2, 0x7f080b35

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 53
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    :cond_13
    const-string p1, "#8F0A1521"

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    const-string p2, "#FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setTextColor(I)V

    .line 57
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->a:Lcom/join/mgps/customview/CloudDownButn;

    const p2, 0x7f080b34

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 58
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public setGBAType(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:Z

    return-void
.end method

.method public setPGN(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

    return-void
.end method

.method setPoPoWindow2(Z)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0549

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const v1, 0x7f09060f

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f09077a

    .line 4
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090c18

    .line 5
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060371

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    new-instance v2, Lcom/join/mgps/customview/ClouldItemView3$b;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/customview/ClouldItemView3$b;-><init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v1, Lcom/join/mgps/customview/ClouldItemView3$c;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/customview/ClouldItemView3$c;-><init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance v1, Lcom/join/mgps/customview/ClouldItemView3$d;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/customview/ClouldItemView3$d;-><init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
