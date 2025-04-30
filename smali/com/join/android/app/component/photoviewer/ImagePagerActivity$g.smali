.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;
.super Landroid/widget/PopupWindow;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field final synthetic c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;


# direct methods
.method public constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroid/content/Context;Landroid/view/View;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p3, p4, p5, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b()V

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b:Landroid/view/View;

    const v1, 0x7f090db3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b:Landroid/view/View;

    const v2, 0x7f090210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;

    invoke-direct {v2, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$b;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
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
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$c;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$c;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method
