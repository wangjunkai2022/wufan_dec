.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field public j:[Ljava/lang/String;

.field final synthetic k:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;


# direct methods
.method public constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;->k:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    iput-object p3, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;->j:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;->j:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;->j:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;->j:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 2
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->R(Ljava/lang/String;)Lcom/join/android/app/component/photoviewer/a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;->k:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    iget-object v0, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->e:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/photoviewer/a;->T(Landroid/view/View$OnLongClickListener;)V

    return-object p1
.end method
