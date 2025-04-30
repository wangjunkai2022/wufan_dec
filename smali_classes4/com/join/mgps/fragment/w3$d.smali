.class Lcom/join/mgps/fragment/w3$d;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "PaPaStandAloneOverSeaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/w3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/w3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/w3;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/w3$d;->a:Lcom/join/mgps/fragment/w3;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w3$d;->a:Lcom/join/mgps/fragment/w3;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/w3;->P(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
