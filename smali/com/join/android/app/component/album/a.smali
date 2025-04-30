.class public Lcom/join/android/app/component/album/a;
.super Landroid/widget/PopupWindow;
.source "AlbumPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/album/a$e;
    }
.end annotation


# static fields
.field public static f:Lcom/join/android/app/component/album/a$e;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/join/android/app/component/album/lib/b;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IILcom/join/android/app/component/album/lib/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/album/a;->b:Landroid/view/View;

    .line 4
    iput-object p5, p0, Lcom/join/android/app/component/album/a;->d:Lcom/join/android/app/component/album/lib/b;

    .line 5
    invoke-direct {p0}, Lcom/join/android/app/component/album/a;->e()V

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/component/album/a;->g()V

    .line 7
    invoke-direct {p0}, Lcom/join/android/app/component/album/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/album/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/component/album/a;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->b:Landroid/view/View;

    const v1, 0x7f0908de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->b:Landroid/view/View;

    const v1, 0x7f0909eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/android/app/component/album/a$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/a$a;-><init>(Lcom/join/android/app/component/album/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    iget v1, p0, Lcom/join/android/app/component/album/a;->e:I

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->d:Lcom/join/android/app/component/album/lib/b;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/join/android/app/component/album/lib/b;

    iget-object v1, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/android/app/component/album/lib/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/a;->d:Lcom/join/android/app/component/album/lib/b;

    .line 8
    new-instance v1, Lcom/join/android/app/component/album/a$b;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/a$b;-><init>(Lcom/join/android/app/component/album/a;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/b;->l(Lcom/join/android/app/component/album/lib/b$g;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->f()Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/join/android/app/component/album/adapter/a;

    iget-object v2, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/component/album/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 11
    iget-object v2, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    iget-object v1, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/join/android/app/component/album/a$c;

    invoke-direct {v2, p0, v0}, Lcom/join/android/app/component/album/a$c;-><init>(Lcom/join/android/app/component/album/a;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/join/android/app/component/album/a;->c()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/join/android/app/component/album/a;->e:I

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4
    new-instance v0, Lcom/join/android/app/component/album/a$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/a$d;-><init>(Lcom/join/android/app/component/album/a;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public f(Lcom/join/android/app/component/album/a$e;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/join/android/app/component/album/a;->f:Lcom/join/android/app/component/album/a$e;

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->d:Lcom/join/android/app/component/album/lib/b;

    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/album/adapter/a;

    .line 3
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/album/adapter/a;->c(Ljava/util/List;)V

    .line 4
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
