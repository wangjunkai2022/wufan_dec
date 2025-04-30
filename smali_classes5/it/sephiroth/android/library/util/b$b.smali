.class public Lit/sephiroth/android/library/util/b$b;
.super Lit/sephiroth/android/library/util/b$a;
.source "ViewHelperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/util/b$a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/util/b$a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScrollX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/util/b$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
