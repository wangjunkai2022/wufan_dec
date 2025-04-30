.class Lcom/join/mgps/activity/ImagePagerActivity$b;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public j:[Ljava/lang/String;

.field final synthetic k:Lcom/join/mgps/activity/ImagePagerActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ImagePagerActivity$b;->k:Lcom/join/mgps/activity/ImagePagerActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    iput-object p3, p0, Lcom/join/mgps/activity/ImagePagerActivity$b;->j:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity$b;->j:[Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity$b;->j:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 2
    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->R(Ljava/lang/String;)Lcom/join/android/app/component/photoviewer/a;

    move-result-object p1

    return-object p1
.end method
