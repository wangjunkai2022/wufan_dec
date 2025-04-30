.class public Lcom/join/mgps/dialog/e;
.super Landroid/app/AlertDialog;
.source "AppDownFinishDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/e$c;,
        Lcom/join/mgps/dialog/e$d;,
        Lcom/join/mgps/dialog/e$b;
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/dialog/e$d;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Lme/relex/circleindicator/CircleIndicator;

.field d:Ljava/lang/String;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f120008

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/e;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const v0, 0x7f091280

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/dialog/e;->b:Landroidx/viewpager/widget/ViewPager;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/dialog/e;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/join/mgps/dialog/e$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/e$d;-><init>(Lcom/join/mgps/dialog/e;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/e;->a:Lcom/join/mgps/dialog/e$d;

    const v0, 0x7f09075b

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iput-object v0, p0, Lcom/join/mgps/dialog/e;->c:Lme/relex/circleindicator/CircleIndicator;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/join/mgps/dialog/e;->a:Lcom/join/mgps/dialog/e$d;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->c:Lme/relex/circleindicator/CircleIndicator;

    iget-object v1, p0, Lcom/join/mgps/dialog/e;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/join/mgps/dialog/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/e$c;-><init>(Lcom/join/mgps/dialog/e;Lcom/join/mgps/dialog/e$a;)V

    .line 5
    iput-object p1, v0, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->a:Lcom/join/mgps/dialog/e$d;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/e$d;->b(Lcom/join/mgps/dialog/e$c;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->a:Lcom/join/mgps/dialog/e$d;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/e;->c:Lme/relex/circleindicator/CircleIndicator;

    iget-object v0, p0, Lcom/join/mgps/dialog/e;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dialog/e;->a()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f120008

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method
