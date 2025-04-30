.class Lcom/join/mgps/activity/GameMainActivityv2$a;
.super Ljava/lang/Object;
.source "GameMainActivityv2.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivityv2;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivityv2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivityv2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const v0, 0x7f08069b

    const-string v1, "\u6e38\u620f\u4e3b\u9875"

    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    neg-int p2, p2

    add-int/lit8 p1, p1, -0x5

    if-lt p2, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->a:Landroid/widget/TextView;

    const p2, -0xbbbbbc

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p2, p1, Lcom/join/mgps/activity/GameMainActivityv2;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivityv2;->a(Lcom/join/mgps/activity/GameMainActivityv2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/ImageView;

    const p2, 0x7f0804b8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2$a;->a:Lcom/join/mgps/activity/GameMainActivityv2;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivityv2;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
