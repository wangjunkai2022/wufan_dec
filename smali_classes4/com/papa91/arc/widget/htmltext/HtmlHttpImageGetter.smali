.class public Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;
.super Ljava/lang/Object;
.source "HtmlHttpImageGetter.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;,
        Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$ImageGetterAsyncTask;
    }
.end annotation


# instance fields
.field private baseUri:Ljava/net/URI;

.field private compressImage:Z

.field private container:Landroid/widget/TextView;

.field private matchParentWidth:Z

.field private placeHolder:I

.field private qualityImage:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    const/16 v1, 0x32

    .line 3
    iput v1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    .line 4
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 5
    iput-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->matchParentWidth:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    const/16 v0, 0x32

    .line 8
    iput v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    .line 9
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 10
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;IZ)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    const/16 v0, 0x32

    .line 14
    iput v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    .line 15
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 16
    iput p3, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->placeHolder:I

    .line 17
    iput-boolean p4, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->matchParentWidth:Z

    if-eqz p2, :cond_0

    .line 18
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;-><init>(Landroid/widget/TextView;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;)Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    return-object p0
.end method


# virtual methods
.method public enableCompressImage(Z)V
    .locals 1

    const/16 v0, 0x32

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->enableCompressImage(ZI)V

    return-void
.end method

.method public enableCompressImage(ZI)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    .line 3
    iput p2, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    return-void
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1
    new-instance v7, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;

    invoke-direct {v7, p0}, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;)V

    .line 2
    iget v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->placeHolder:I

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->placeHolder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v7, v8, v8, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 6
    iput-object v0, v7, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    new-instance v9, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$ImageGetterAsyncTask;

    iget-object v3, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->matchParentWidth:Z

    iget-boolean v5, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    iget v6, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    move-object v0, v9

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$ImageGetterAsyncTask;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;Landroid/view/View;ZZI)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v8

    .line 8
    invoke-virtual {v9, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v7
.end method
